// user_model.dart
import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  @Id(assignable: true)
  late int id;

  late String username;
  late String password; // You should hash the password for security
  late int storeId;

  User();

  // other fields and methods can be added based on your requirements
}
