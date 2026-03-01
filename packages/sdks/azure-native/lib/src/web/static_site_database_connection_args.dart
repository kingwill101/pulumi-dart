// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_database_connection_args_doc}
/// The set of arguments for StaticSiteDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_database_connection_args_doc}
class StaticSiteDatabaseConnectionArgs {
  /// If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  final pulumi.Input<String>? connectionIdentity;
  /// The connection string to use to connect to the database.
  final pulumi.Input<String>? connectionString;
  /// Name of the database connection.
  final pulumi.Input<String>? databaseConnectionName;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The region of the database resource.
  final pulumi.Input<String> region;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The resource id of the database.
  final pulumi.Input<String> resourceId;

  /// Creates a new [StaticSiteDatabaseConnectionArgs].
  /// [connectionIdentity] If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  /// [connectionString] The connection string to use to connect to the database.
  /// [databaseConnectionName] Name of the database connection.
  /// [kind] Kind of resource.
  /// [name] Name of the static site
  /// [region] The region of the database resource.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [resourceId] The resource id of the database.
  StaticSiteDatabaseConnectionArgs({
    pulumi.Output<String>? connectionIdentity,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? databaseConnectionName,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> region,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceId,
  }) :
      connectionIdentity = pulumi.Input.asOptionalInput<String>(connectionIdentity),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      databaseConnectionName = pulumi.Input.asOptionalInput<String>(databaseConnectionName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asInput<String>(region),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionIdentity': ?connectionIdentity,
      'connectionString': ?connectionString,
      'databaseConnectionName': ?databaseConnectionName,
      'kind': ?kind,
      'name': name,
      'region': region,
      'resourceGroupName': resourceGroupName,
      'resourceId': resourceId,
    };
  }

  factory StaticSiteDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteDatabaseConnectionArgs(
      connectionIdentity: map['connectionIdentity'] == null ? null : pulumi.Output.create<String>(map['connectionIdentity'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      databaseConnectionName: map['databaseConnectionName'] == null ? null : pulumi.Output.create<String>(map['databaseConnectionName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

