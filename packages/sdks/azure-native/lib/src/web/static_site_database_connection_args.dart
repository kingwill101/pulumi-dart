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
    this.connectionIdentity,
    this.connectionString,
    this.databaseConnectionName,
    this.kind,
    required this.name,
    required this.region,
    required this.resourceGroupName,
    required this.resourceId,
  });

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
      connectionIdentity: map['connectionIdentity'] == null ? null : (map['connectionIdentity']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      databaseConnectionName: map['databaseConnectionName'] == null ? null : (map['databaseConnectionName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      region: (map['region'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
    );
  }
}

