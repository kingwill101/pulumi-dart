// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountRestoreGremlinDatabase {
  /// A list of the Graph names for the restore request. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? graphNames;
  /// The Gremlin Database name for the restore request. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [AccountRestoreGremlinDatabase].
  /// [graphNames] A list of the Graph names for the restore request. Changing this forces a new resource to be created.
  /// [name] The Gremlin Database name for the restore request. Changing this forces a new resource to be created.
  AccountRestoreGremlinDatabase({
    this.graphNames,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphNames': ?graphNames,
      'name': name,
    };
  }

  factory AccountRestoreGremlinDatabase.fromMap(Map<String, dynamic> map) {
    return AccountRestoreGremlinDatabase(
      graphNames: map['graphNames'] == null ? null : ((map['graphNames']! as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

