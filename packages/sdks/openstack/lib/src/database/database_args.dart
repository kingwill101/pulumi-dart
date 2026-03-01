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
  DatabaseArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

