import 'package:forms9_pos_auth/main.dart';
import 'package:forms9_pos_auth/responsive/generate_bill/desktop_generate_bill.dart';
import 'package:intl/intl.dart';

import 'objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  int id;
  String username;
  String password;
  String type;
  String store;

  User({
    this.id = 0,
    required this.username,
    required this.password,
    required this.type,
    required this.store,
  });
}
