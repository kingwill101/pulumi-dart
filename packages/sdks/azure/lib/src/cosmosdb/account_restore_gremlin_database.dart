// ignore_for_file: unused_element, unnecessary_cast


class AccountRestoreGremlinDatabase {
  /// A list of the Graph names for the restore request. Changing this forces a new resource to be created.
  final List<String>? graphNames;
  /// The Gremlin Database name for the restore request. Changing this forces a new resource to be created.
  final String name;

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
      graphNames: map['graphNames'] == null ? null : (map['graphNames'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

