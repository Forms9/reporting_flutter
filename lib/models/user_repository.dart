// user_repository.dart
import 'package:objectbox/objectbox.dart';
import 'package:reporting_app/models/user_model.dart';
import '../objectbox.g.dart';
import 'objectbox_store.dart';

class UserRepository {
  final _userBox = Box<User>(store);

  Future<User?> getUserByUsername(String username) async {
    final query = _userBox.query(User_.username.equals(username)).build();
    return query.findFirst();
  }

  // You can add more methods like createUser, updateUser, deleteUser, etc.
}
