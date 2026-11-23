// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_managed_rotation_cloud_sql_single_user_credentials.dart';

/// {@template pulumi_secretmanager_regional_secret_managed_rotation_regional_secret_managed_rotation_args_doc}
/// The set of arguments for RegionalSecretManagedRotation.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_regional_secret_managed_rotation_regional_secret_managed_rotation_args_doc}
class RegionalSecretManagedRotationArgs {
  /// The Cloud SQL single-user credentials to manage.
  /// Structure is documented below.
  final pulumi.Input<RegionalSecretManagedRotationCloudSqlSingleUserCredentials> cloudSqlSingleUserCredentials;
  /// The location of the regional secret. eg us-central1
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the regional secret of type `CLOUD_SQL_DB_CREDENTIALS` to enable managed rotation for.
  final pulumi.Input<String> secretId;

  /// Creates a new [RegionalSecretManagedRotationArgs].
  /// [cloudSqlSingleUserCredentials] The Cloud SQL single-user credentials to manage.
  /// [location] The location of the regional secret. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [secretId] The ID of the regional secret of type `CLOUD_SQL_DB_CREDENTIALS` to enable managed rotation for.
  const RegionalSecretManagedRotationArgs({
    required this.cloudSqlSingleUserCredentials,
    required this.location,
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlSingleUserCredentials': pulumi.Input.mapInputValue<RegionalSecretManagedRotationCloudSqlSingleUserCredentials, Map<String, dynamic>>(cloudSqlSingleUserCredentials, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory RegionalSecretManagedRotationArgs.fromMap(Map<String, dynamic> map) {
    return RegionalSecretManagedRotationArgs(
      cloudSqlSingleUserCredentials: pulumi.Input.fromValue(RegionalSecretManagedRotationCloudSqlSingleUserCredentials.fromMap((map['cloudSqlSingleUserCredentials']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
