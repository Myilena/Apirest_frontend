import passport from 'passport';
import { Strategy as GoogleStrategy } from 'passport-google-oauth20';
import dot from "../enviroments";

const email = ["yilenamosquera2@gmail.com"];
passport.use(
    "auth-google",
    new GoogleStrategy({
        clientID: process.env.GOOGLE_CLIENT_ID,
        clientSecret: process.env.GOOGLE_CLIENT_SECRET,
        callbackURL: "http://localhost:3000/auth/google"
    },
        function (accessToken, refreshToken, profile, cb) {
            const response = email.includes(profile.emails[0].value);
            if (response) {
                cb(null, profile);
            } else {
                //Save in data base//
                emails.push(profile.emails[0].value);
                cb(null, profile);
            }
        }
    ));