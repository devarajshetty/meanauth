import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';
import { ValidateService } from '../../services/validate.service';
import {FlashMessagesService} from 'angular2-flash-messages';

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
_id : String;

  constructor(private authService:AuthService,private flashMessage: FlashMessagesService, private validateService: ValidateService,private router:Router) { }

  onUpdateSubmit(){
  const updateuser ={
  name: this.name,
  email: this.email,
  username: this.username,
  _id: this._id,
   
  }

  
 this.authService.UpdateUser(updateuser).subscribe(data => {
      if(data.success){
        this.flashMessage.show('You are now Updated', {cssClass: 'alert-success', timeout: 3000});
       this.router.navigate(['/profile']);
      } else {
        this.flashMessage.show('Something went wrong', {cssClass: 'alert-danger', timeout: 3000});
       this.router.navigate(['/profile']);
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
