// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHyperdriveConfigsResultIntegration {
  /// The database name to use when connecting. Defaults to `postgres` for PostgreSQL and `mysql` for MySQL.
  final pulumi.Input<String> customDatabaseName;
  /// The name of the PlanetScale database branch.
  final pulumi.Input<String> databaseBranchName;
  /// The name of the PlanetScale database.
  final pulumi.Input<String> databaseName;
  /// The database integration provider used by this operation.
  /// Available values: "planetscale".
  final pulumi.Input<String> hyperdriveConfigProvider;
  /// The name of the PlanetScale organization.
  final pulumi.Input<String> organizationName;
  /// Specifies the URL scheme used to connect to your origin database.
  /// Available values: "postgres", "postgresql", "mysql".
  final pulumi.Input<String> scheme;

  /// Creates a new [GetHyperdriveConfigsResultIntegration].
  /// [customDatabaseName] The database name to use when connecting. Defaults to `postgres` for PostgreSQL and `mysql` for MySQL.
  /// [databaseBranchName] The name of the PlanetScale database branch.
  /// [databaseName] The name of the PlanetScale database.
  /// [hyperdriveConfigProvider] The database integration provider used by this operation.
  /// [organizationName] The name of the PlanetScale organization.
  /// [scheme] Specifies the URL scheme used to connect to your origin database.
  const GetHyperdriveConfigsResultIntegration({
    required this.customDatabaseName,
    required this.databaseBranchName,
    required this.databaseName,
    required this.hyperdriveConfigProvider,
    required this.organizationName,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDatabaseName': customDatabaseName,
      'databaseBranchName': databaseBranchName,
      'databaseName': databaseName,
      'hyperdriveConfigProvider': hyperdriveConfigProvider,
      'organizationName': organizationName,
      'scheme': scheme,
    };
  }

  factory GetHyperdriveConfigsResultIntegration.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigsResultIntegration(
      customDatabaseName: pulumi.Input.fromValue(map['customDatabaseName'] as String),
      databaseBranchName: pulumi.Input.fromValue(map['databaseBranchName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      hyperdriveConfigProvider: pulumi.Input.fromValue(map['hyperdriveConfigProvider'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
