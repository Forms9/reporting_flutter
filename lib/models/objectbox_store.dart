// objectbox_store.dart
import 'package:objectbox/objectbox.dart';

import '../objectbox.g.dart';

late Store store;

void initializeObjectBox() {
  store = Store(
    getObjectBoxModel(),
    directory: getObjectBoxDirectory(),
  );
}

getObjectBoxDirectory() {}

void closeObjectBox() {
  store.close();
}
