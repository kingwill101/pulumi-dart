// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_configmanagement_config_sync.dart';

class GetFeatureFleetDefaultMemberConfigConfigmanagement {
  /// ConfigSync configuration for the cluster
  final pulumi.Input<
    List<GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync>
  >
  configSyncs;

  /// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades. Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  final pulumi.Input<String> management;

  /// Version of Config Sync installed
  final pulumi.Input<String> version;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigConfigmanagement].
  /// [configSyncs] ConfigSync configuration for the cluster
  /// [management] Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades. Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  /// [version] Version of Config Sync installed
  GetFeatureFleetDefaultMemberConfigConfigmanagement({
    required this.configSyncs,
    required this.management,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSyncs':
          pulumi.Input.mapInputValue<
            List<GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync>,
            List<Map<String, dynamic>>
          >(
            configSyncs,
            (value) =>
                pulumi.Input.encodeList<
                  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'management': management,
      'version': version,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagement(
      configSyncs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync
        >(
          map['configSyncs']!,
          (value) =>
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      management: pulumi.Input.fromValue(map['management'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
