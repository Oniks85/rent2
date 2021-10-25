import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RentcodeFirebaseUser {
  RentcodeFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

RentcodeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RentcodeFirebaseUser> rentcodeFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RentcodeFirebaseUser>(
            (user) => currentUser = RentcodeFirebaseUser(user));
