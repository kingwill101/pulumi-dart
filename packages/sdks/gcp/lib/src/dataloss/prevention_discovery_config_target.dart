// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target.dart';
import 'prevention_discovery_config_target_cloud_sql_target.dart';
import 'prevention_discovery_config_target_cloud_storage_target.dart';
import 'prevention_discovery_config_target_other_cloud_target.dart';

class PreventionDiscoveryConfigTarget {
  /// BigQuery target for Discovery. The first target to match a table will be the one applied.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTarget>? bigQueryTarget;
  /// Cloud SQL target for Discovery. The first target to match a table will be the one applied.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTarget>? cloudSqlTarget;
  /// Cloud Storage target for Discovery. The first target to match a bucket will be the one applied.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTarget>? cloudStorageTarget;
  /// Other clouds target for discovery. The first target to match a resource will be the one applied.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTarget>? otherCloudTarget;
  /// Discovery target that looks for credentials and secrets stored in cloud resource metadata and reports them as vulnerabilities to Security Command Center. Only one target of this type is allowed.
  final pulumi.Input<Map<String, dynamic>>? secretsTarget;

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
      'bigQueryTarget': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTarget, Map<String, dynamic>>(bigQueryTarget, (value) => value.toMap()),
      'cloudSqlTarget': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTarget, Map<String, dynamic>>(cloudSqlTarget, (value) => value.toMap()),
      'cloudStorageTarget': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTarget, Map<String, dynamic>>(cloudStorageTarget, (value) => value.toMap()),
      'otherCloudTarget': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTarget, Map<String, dynamic>>(otherCloudTarget, (value) => value.toMap()),
      'secretsTarget': ?secretsTarget,
    };
  }

  factory PreventionDiscoveryConfigTarget.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTarget(
      bigQueryTarget: map['bigQueryTarget'] == null ? null : (PreventionDiscoveryConfigTargetBigQueryTarget.fromMap((map['bigQueryTarget'] as Map).cast<String, dynamic>())).input(),
      cloudSqlTarget: map['cloudSqlTarget'] == null ? null : (PreventionDiscoveryConfigTargetCloudSqlTarget.fromMap((map['cloudSqlTarget'] as Map).cast<String, dynamic>())).input(),
      cloudStorageTarget: map['cloudStorageTarget'] == null ? null : (PreventionDiscoveryConfigTargetCloudStorageTarget.fromMap((map['cloudStorageTarget'] as Map).cast<String, dynamic>())).input(),
      otherCloudTarget: map['otherCloudTarget'] == null ? null : (PreventionDiscoveryConfigTargetOtherCloudTarget.fromMap((map['otherCloudTarget'] as Map).cast<String, dynamic>())).input(),
      secretsTarget: map['secretsTarget'] == null ? null : ((map['secretsTarget'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

