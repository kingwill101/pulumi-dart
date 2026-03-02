// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDefaultDatabaseModule {
  /// The configuration options for the module.
  final pulumi.Input<String> args;
  /// The name of the Managed Redis instance.
  final pulumi.Input<String> name;
  /// The version of the module.
  final pulumi.Input<String> version;

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
      args: (map['args'] as String).input(),
      name: (map['name'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

