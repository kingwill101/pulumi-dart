// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_database_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_database_database_database_args_doc}
class DatabaseArgs {
  /// The ID for the database instance.
  final pulumi.Input<String> instanceId;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// The region in which to create the database. Changing
  /// this creates a new database.
  final pulumi.Input<String>? region;

  /// Creates a new [DatabaseArgs].
  /// [instanceId] The ID for the database instance.
  /// [name] A unique name for the resource.
  /// [region] The region in which to create the database. Changing
  const DatabaseArgs({
    required this.instanceId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

