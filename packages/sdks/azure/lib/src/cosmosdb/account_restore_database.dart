// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountRestoreDatabase {
  /// A list of the collection names for the restore request. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? collectionNames;
  /// The database name for the restore request. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [AccountRestoreDatabase].
  /// [collectionNames] A list of the collection names for the restore request. Changing this forces a new resource to be created.
  /// [name] The database name for the restore request. Changing this forces a new resource to be created.
  AccountRestoreDatabase({
    this.collectionNames,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionNames': ?collectionNames,
      'name': name,
    };
  }

  factory AccountRestoreDatabase.fromMap(Map<String, dynamic> map) {
    return AccountRestoreDatabase(
      collectionNames: map['collectionNames'] == null ? null : ((map['collectionNames'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

