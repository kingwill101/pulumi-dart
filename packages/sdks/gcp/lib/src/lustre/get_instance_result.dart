// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_access_rules_option.dart';
import 'get_instance_dynamic_tier_option.dart';
import 'get_instance_maintenance_policy.dart';
import 'get_instance_upcoming_maintenance_schedule.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAccessRulesOption>? accessRulesOptions;
  final String? capacityGib;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final List<GetInstanceDynamicTierOption>? dynamicTierOptions;
  final Map<String, String>? effectiveLabels;
  final String? filesystem;
  final bool? gkeSupportEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? kmsKey;
  final Map<String, String>? labels;
  final String? location;
  final List<GetInstanceMaintenancePolicy>? maintenancePolicies;
  final String? mountPoint;
  final String? name;
  final String? network;
  final String? perUnitStorageThroughput;
  final String? placementPolicy;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? state;
  final String? stateReason;
  final String? uid;
  final List<GetInstanceUpcomingMaintenanceSchedule>? upcomingMaintenanceSchedules;
  final String? updateTime;
  final String? zone;

  /// Creates a new [GetInstanceResult].
  /// [accessRulesOptions] Optional.
  /// [capacityGib] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [dynamicTierOptions] Optional.
  /// [effectiveLabels] Optional.
  /// [filesystem] Optional.
  /// [gkeSupportEnabled] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [kmsKey] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [maintenancePolicies] Optional.
  /// [mountPoint] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [perUnitStorageThroughput] Optional.
  /// [placementPolicy] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [state] Optional.
  /// [stateReason] Optional.
  /// [uid] Optional.
  /// [upcomingMaintenanceSchedules] Optional.
  /// [updateTime] Optional.
  /// [zone] Optional.
  const GetInstanceResult({
    this.accessRulesOptions,
    this.capacityGib,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.dynamicTierOptions,
    this.effectiveLabels,
    this.filesystem,
    this.gkeSupportEnabled,
    this.id,
    this.instanceId,
    this.kmsKey,
    this.labels,
    this.location,
    this.maintenancePolicies,
    this.mountPoint,
    this.name,
    this.network,
    this.perUnitStorageThroughput,
    this.placementPolicy,
    this.project,
    this.pulumiLabels,
    this.state,
    this.stateReason,
    this.uid,
    this.upcomingMaintenanceSchedules,
    this.updateTime,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRulesOptions': ?(() { final guardedValue = accessRulesOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceAccessRulesOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'capacityGib': ?capacityGib,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dynamicTierOptions': ?(() { final guardedValue = dynamicTierOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceDynamicTierOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'filesystem': ?filesystem,
      'gkeSupportEnabled': ?gkeSupportEnabled,
      'id': ?id,
      'instanceId': ?instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mountPoint': ?mountPoint,
      'name': ?name,
      'network': ?network,
      'perUnitStorageThroughput': ?perUnitStorageThroughput,
      'placementPolicy': ?placementPolicy,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
      'upcomingMaintenanceSchedules': ?(() { final guardedValue = upcomingMaintenanceSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceUpcomingMaintenanceSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
      'zone': ?zone,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      accessRulesOptions: (() { final guardedValue = map['accessRulesOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceAccessRulesOption>(guardedValue, (value) => GetInstanceAccessRulesOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      capacityGib: (() { final guardedValue = map['capacityGib']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicTierOptions: (() { final guardedValue = map['dynamicTierOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceDynamicTierOption>(guardedValue, (value) => GetInstanceDynamicTierOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      filesystem: (() { final guardedValue = map['filesystem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gkeSupportEnabled: (() { final guardedValue = map['gkeSupportEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(guardedValue, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      mountPoint: (() { final guardedValue = map['mountPoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perUnitStorageThroughput: (() { final guardedValue = map['perUnitStorageThroughput']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementPolicy: (() { final guardedValue = map['placementPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upcomingMaintenanceSchedules: (() { final guardedValue = map['upcomingMaintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceUpcomingMaintenanceSchedule>(guardedValue, (value) => GetInstanceUpcomingMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
