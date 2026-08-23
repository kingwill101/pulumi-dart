// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_access_rules_option.dart';
import 'get_instance_dynamic_tier_option.dart';
import 'get_instance_maintenance_policy.dart';
import 'get_instance_upcoming_maintenance_schedule.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAccessRulesOption> accessRulesOptions;
  final String capacityGib;
  final String createTime;
  final String deletionPolicy;
  final String description;
  final List<GetInstanceDynamicTierOption> dynamicTierOptions;
  final Map<String, String> effectiveLabels;
  final String filesystem;
  final bool gkeSupportEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String kmsKey;
  final Map<String, String> labels;
  final String location;
  final List<GetInstanceMaintenancePolicy> maintenancePolicies;
  final String mountPoint;
  final String name;
  final String network;
  final String perUnitStorageThroughput;
  final String placementPolicy;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String state;
  final String stateReason;
  final String uid;
  final List<GetInstanceUpcomingMaintenanceSchedule> upcomingMaintenanceSchedules;
  final String updateTime;
  final String? zone;

  /// Creates a new [GetInstanceResult].
  /// [accessRulesOptions] Required.
  /// [capacityGib] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [dynamicTierOptions] Required.
  /// [effectiveLabels] Required.
  /// [filesystem] Required.
  /// [gkeSupportEnabled] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [kmsKey] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [maintenancePolicies] Required.
  /// [mountPoint] Required.
  /// [name] Required.
  /// [network] Required.
  /// [perUnitStorageThroughput] Required.
  /// [placementPolicy] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [state] Required.
  /// [stateReason] Required.
  /// [uid] Required.
  /// [upcomingMaintenanceSchedules] Required.
  /// [updateTime] Required.
  /// [zone] Optional.
  const GetInstanceResult({
    required this.accessRulesOptions,
    required this.capacityGib,
    required this.createTime,
    required this.deletionPolicy,
    required this.description,
    required this.dynamicTierOptions,
    required this.effectiveLabels,
    required this.filesystem,
    required this.gkeSupportEnabled,
    required this.id,
    required this.instanceId,
    required this.kmsKey,
    required this.labels,
    required this.location,
    required this.maintenancePolicies,
    required this.mountPoint,
    required this.name,
    required this.network,
    required this.perUnitStorageThroughput,
    required this.placementPolicy,
    this.project,
    required this.pulumiLabels,
    required this.state,
    required this.stateReason,
    required this.uid,
    required this.upcomingMaintenanceSchedules,
    required this.updateTime,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRulesOptions': pulumi.Input.encodeList<GetInstanceAccessRulesOption, Map<String, dynamic>>(accessRulesOptions, (value) => value.toMap()),
      'capacityGib': capacityGib,
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'dynamicTierOptions': pulumi.Input.encodeList<GetInstanceDynamicTierOption, Map<String, dynamic>>(dynamicTierOptions, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'filesystem': filesystem,
      'gkeSupportEnabled': gkeSupportEnabled,
      'id': id,
      'instanceId': instanceId,
      'kmsKey': kmsKey,
      'labels': labels,
      'location': location,
      'maintenancePolicies': pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
      'mountPoint': mountPoint,
      'name': name,
      'network': network,
      'perUnitStorageThroughput': perUnitStorageThroughput,
      'placementPolicy': placementPolicy,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'state': state,
      'stateReason': stateReason,
      'uid': uid,
      'upcomingMaintenanceSchedules': pulumi.Input.encodeList<GetInstanceUpcomingMaintenanceSchedule, Map<String, dynamic>>(upcomingMaintenanceSchedules, (value) => value.toMap()),
      'updateTime': updateTime,
      'zone': ?zone,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      accessRulesOptions: pulumi.Input.decodeList<GetInstanceAccessRulesOption>(map['accessRulesOptions']!, (value) => GetInstanceAccessRulesOption.fromMap((value as Map).cast<String, dynamic>())),
      capacityGib: map['capacityGib'] as String,
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      dynamicTierOptions: pulumi.Input.decodeList<GetInstanceDynamicTierOption>(map['dynamicTierOptions']!, (value) => GetInstanceDynamicTierOption.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      filesystem: map['filesystem'] as String,
      gkeSupportEnabled: map['gkeSupportEnabled'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      maintenancePolicies: pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(map['maintenancePolicies']!, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
      mountPoint: map['mountPoint'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      perUnitStorageThroughput: map['perUnitStorageThroughput'] as String,
      placementPolicy: map['placementPolicy'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      state: map['state'] as String,
      stateReason: map['stateReason'] as String,
      uid: map['uid'] as String,
      upcomingMaintenanceSchedules: pulumi.Input.decodeList<GetInstanceUpcomingMaintenanceSchedule>(map['upcomingMaintenanceSchedules']!, (value) => GetInstanceUpcomingMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
