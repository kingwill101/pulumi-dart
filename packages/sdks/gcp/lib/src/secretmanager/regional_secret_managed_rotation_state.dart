// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_managed_rotation_cloud_sql_single_user_credentials.dart';
import 'regional_secret_managed_rotation_rotation.dart';

/// Input properties used for looking up and filtering RegionalSecretManagedRotation resources.
class RegionalSecretManagedRotationState {
  /// The Cloud SQL single-user credentials to manage.
  /// Structure is documented below.
  final pulumi.Input<RegionalSecretManagedRotationCloudSqlSingleUserCredentials?>? cloudSqlSingleUserCredentials;
  /// The location of the regional secret. eg us-central1
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The rotation configuration of the regional secret.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretManagedRotationRotation>?>? rotations;
  /// The ID of the regional secret of type `CLOUD_SQL_DB_CREDENTIALS` to enable managed rotation for.
  final pulumi.Input<String?>? secretId;

  /// Creates a new [RegionalSecretManagedRotationState].
  /// [cloudSqlSingleUserCredentials] The Cloud SQL single-user credentials to manage.
  /// [location] The location of the regional secret. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [rotations] The rotation configuration of the regional secret.
  /// [secretId] The ID of the regional secret of type `CLOUD_SQL_DB_CREDENTIALS` to enable managed rotation for.
  const RegionalSecretManagedRotationState({
    this.cloudSqlSingleUserCredentials,
    this.location,
    this.project,
    this.rotations,
    this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlSingleUserCredentials': ?pulumi.Input.mapOptionalInputValue<RegionalSecretManagedRotationCloudSqlSingleUserCredentials, Map<String, dynamic>>(cloudSqlSingleUserCredentials, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'rotations': ?pulumi.Input.mapOptionalInputValue<List<RegionalSecretManagedRotationRotation>, List<Map<String, dynamic>>>(rotations, (value) => pulumi.Input.encodeList<RegionalSecretManagedRotationRotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretId': ?secretId,
    };
  }

  factory RegionalSecretManagedRotationState.fromMap(Map<String, dynamic> map) {
    return RegionalSecretManagedRotationState(
      cloudSqlSingleUserCredentials: (() { final guardedValue = map['cloudSqlSingleUserCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionalSecretManagedRotationCloudSqlSingleUserCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotations: (() { final guardedValue = map['rotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionalSecretManagedRotationRotation>(guardedValue, (value) => RegionalSecretManagedRotationRotation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
