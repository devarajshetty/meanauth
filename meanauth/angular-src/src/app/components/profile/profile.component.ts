import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  user:Object;
  name: String;
username: String;
email: String;
password: String;

  constructor(private authService:AuthService, private router:Router) { }

  onUpdateSubmit(){
  const updateuser ={
  name: this.name,
  email: this.email,
  username: this.username
  }

  if(!this.validateService.validateRegister(updateuser)){
  this.flashMessage.show('Please fill in all fields', {cssClass: 'alert-danger', timeout: 3000});
  return false;
  }
  if(!this.validateService.validateEmail(updateuser.email)){
  this.flashMessage.show('Please use a valid email', {cssClass: 'alert-danger', timeout: 3000});
  return false;
  }
 this.authService.UpdateUser(updateuser).subscribe(data => {
      if(data.success){
        this.flashMessage.show('You are now Updated', {cssClass: 'alert-success', timeout: 3000});
        this.router.navigate(['/login']);
      } else {
        this.flashMessage.show('Something went wrong', {cssClass: 'alert-danger', timeout: 3000});
        this.router.navigate(['/register']);
      }
    });
}

  ngOnInit() {
    this.authService.getProfile().subscribe(dev => {
      this.user = dev.user;
    },
     err => {
       console.log(err);
       return false;
     });
  }

}
