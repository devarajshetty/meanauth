import { Injectable } from '@angular/core';
import {Http, Headers} from '@angular/http';
import 'rxjs/Rx';
import 'rxjs/add/operator/map'
import { tokenNotExpired } from 'angular2-jwt';


@Injectable()
export class AuthService 
{
  authToken: any;
  user: any;
  readonly baseURL = 'http://localhost:3000/users/';
  constructor(private http:Http) { }

  registerUser(user){
    let headers = new Headers();
    headers.append('Content-Type','application/json');
    return this.http.post('http://localhost:3000/users/register', user,{headers: headers})
      .map(res => res.json());
  }
  UpdateUser(user){
    let headers = new Headers();
    headers.append('Content-Type','application/json');
    return this.http.put(this.baseURL + `5c56941747a41873120b1d6c`, user,{headers: headers})
      .map(res => res.json());
  }
  authenticateUser(user){
    let headers = new Headers();
    headers.append('Content-Type','application/json');
    return this.http.post('http://localhost:3000/users/authenticate', user,{headers: headers})
      .map(res => res.json());
  }

  storeUserData(token, user){
    localStorage.setItem('id_token', token);
    localStorage.setItem('user', JSON.stringify(user));
    this.authToken = token;
    this.user = user;
  }

  logout(){
    this.authToken = null;
    this.user = null;
    localStorage.clear();
  }

  loggedIn() {
    return tokenNotExpired('id_token');
  }

  getProfile() {
    let headers = new Headers();
    this.loadToken();
    headers.append('Authorization', this.authToken);
    headers.append('Content-Type', 'application/json');
    return this.http.get('http://localhost:3000/users/profile', {headers: headers})
      .map(res => res.json());
  }
  
  loadToken() {
    const token = localStorage.getItem('id_token');
    this.authToken = token;
  }
}
