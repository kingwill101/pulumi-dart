// ignore_for_file: unused_element, unnecessary_cast


class GetDefaultDatabaseModule {
  /// The configuration options for the module.
  final String args;
  /// The name of the Managed Redis instance.
  final String name;
  /// The version of the module.
  final String version;

  /// Creates a new [GetDefaultDatabaseModule].
  /// [args] The configuration options for the module.
  /// [name] The name of the Managed Redis instance.
  /// [version] The version of the module.
  GetDefaultDatabaseModule({
    required this.args,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'name': name,
      'version': version,
    };
  }

  factory GetDefaultDatabaseModule.fromMap(Map<String, dynamic> map) {
    return GetDefaultDatabaseModule(
      args: map['args'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

