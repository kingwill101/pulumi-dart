// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_big_query_target.dart';
import 'prevention_discovery_config_target_cloud_sql_target.dart';
import 'prevention_discovery_config_target_cloud_storage_target.dart';
import 'prevention_discovery_config_target_other_cloud_target.dart';

class PreventionDiscoveryConfigTarget {
  /// BigQuery target for Discovery. The first target to match a table will be the one applied.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetBigQueryTarget? bigQueryTarget;
  /// Cloud SQL target for Discovery. The first target to match a table will be the one applied.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudSqlTarget? cloudSqlTarget;
  /// Cloud Storage target for Discovery. The first target to match a bucket will be the one applied.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTarget? cloudStorageTarget;
  /// Other clouds target for discovery. The first target to match a resource will be the one applied.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetOtherCloudTarget? otherCloudTarget;
  /// Discovery target that looks for credentials and secrets stored in cloud resource metadata and reports them as vulnerabilities to Security Command Center. Only one target of this type is allowed.
  final Map<String, dynamic>? secretsTarget;

  /// Creates a new [PreventionDiscoveryConfigTarget].
  /// [bigQueryTarget] BigQuery target for Discovery. The first target to match a table will be the one applied.
  /// [cloudSqlTarget] Cloud SQL target for Discovery. The first target to match a table will be the one applied.
  /// [cloudStorageTarget] Cloud Storage target for Discovery. The first target to match a bucket will be the one applied.
  /// [otherCloudTarget] Other clouds target for discovery. The first target to match a resource will be the one applied.
  /// [secretsTarget] Discovery target that looks for credentials and secrets stored in cloud resource metadata and reports them as vulnerabilities to Security Command Center. Only one target of this type is allowed.
  PreventionDiscoveryConfigTarget({
    this.bigQueryTarget,
    this.cloudSqlTarget,
    this.cloudStorageTarget,
    this.otherCloudTarget,
    this.secretsTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryTarget': ?bigQueryTarget == null ? null : bigQueryTarget!.toMap(),
      'cloudSqlTarget': ?cloudSqlTarget == null ? null : cloudSqlTarget!.toMap(),
      'cloudStorageTarget': ?cloudStorageTarget == null ? null : cloudStorageTarget!.toMap(),
      'otherCloudTarget': ?otherCloudTarget == null ? null : otherCloudTarget!.toMap(),
      'secretsTarget': ?secretsTarget,
    };
  }

  factory PreventionDiscoveryConfigTarget.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTarget(
      bigQueryTarget: map['bigQueryTarget'] == null ? null : PreventionDiscoveryConfigTargetBigQueryTarget.fromMap((map['bigQueryTarget'] as Map).cast<String, dynamic>()),
      cloudSqlTarget: map['cloudSqlTarget'] == null ? null : PreventionDiscoveryConfigTargetCloudSqlTarget.fromMap((map['cloudSqlTarget'] as Map).cast<String, dynamic>()),
      cloudStorageTarget: map['cloudStorageTarget'] == null ? null : PreventionDiscoveryConfigTargetCloudStorageTarget.fromMap((map['cloudStorageTarget'] as Map).cast<String, dynamic>()),
      otherCloudTarget: map['otherCloudTarget'] == null ? null : PreventionDiscoveryConfigTargetOtherCloudTarget.fromMap((map['otherCloudTarget'] as Map).cast<String, dynamic>()),
      secretsTarget: map['secretsTarget'] == null ? null : (map['secretsTarget'] as Map).cast<String, dynamic>(),
    );
  }
}

