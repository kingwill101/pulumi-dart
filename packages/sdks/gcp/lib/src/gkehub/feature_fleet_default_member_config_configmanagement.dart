// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_configmanagement_config_sync.dart';

class FeatureFleetDefaultMemberConfigConfigmanagement {
  /// ConfigSync configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigConfigmanagementConfigSync>? configSync;
  /// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
  /// Possible values are: `MANAGEMENT_UNSPECIFIED`, `MANAGEMENT_AUTOMATIC`, `MANAGEMENT_MANUAL`.
  final pulumi.Input<String>? management;
  /// Version of Config Sync installed
  final pulumi.Input<String>? version;

  /// Creates a new [FeatureFleetDefaultMemberConfigConfigmanagement].
  /// [configSync] ConfigSync configuration for the cluster
  /// [management] Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
  /// [version] Version of Config Sync installed
  FeatureFleetDefaultMemberConfigConfigmanagement({
    this.configSync,
    this.management,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSync': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigConfigmanagementConfigSync, Map<String, dynamic>>(configSync, (value) => value.toMap()),
      'management': ?management,
      'version': ?version,
    };
  }

  factory FeatureFleetDefaultMemberConfigConfigmanagement.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigConfigmanagement(
      configSync: map['configSync'] == null ? null : (FeatureFleetDefaultMemberConfigConfigmanagementConfigSync.fromMap((map['configSync']! as Map).cast<String, dynamic>())).input(),
      management: map['management'] == null ? null : (map['management']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

