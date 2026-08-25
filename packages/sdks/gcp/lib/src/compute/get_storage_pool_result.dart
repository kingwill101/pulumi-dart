// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_param.dart';
import 'get_storage_pool_resource_status.dart';
import 'get_storage_pool_status.dart';

/// Result data returned by getStoragePool.
class GetStoragePoolResult {
  final String? capacityProvisioningType;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? id;
  final String? kind;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final String? name;
  final List<GetStoragePoolParam>? params;
  final String? performanceProvisioningType;
  final String? poolProvisionedCapacityGb;
  final String? poolProvisionedIops;
  final String? poolProvisionedThroughput;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetStoragePoolResourceStatus>? resourceStatuses;
  final List<GetStoragePoolStatus>? statuses;
  final String? storagePoolType;
  final String? zone;

  /// Creates a new [GetStoragePoolResult].
  /// [capacityProvisioningType] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [id] Optional.
  /// [kind] Optional.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [params] Optional.
  /// [performanceProvisioningType] Optional.
  /// [poolProvisionedCapacityGb] Optional.
  /// [poolProvisionedIops] Optional.
  /// [poolProvisionedThroughput] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [resourceStatuses] Optional.
  /// [statuses] Optional.
  /// [storagePoolType] Optional.
  /// [zone] Optional.
  const GetStoragePoolResult({
    this.capacityProvisioningType,
    this.creationTimestamp,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.effectiveLabels,
    this.id,
    this.kind,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.params,
    this.performanceProvisioningType,
    this.poolProvisionedCapacityGb,
    this.poolProvisionedIops,
    this.poolProvisionedThroughput,
    this.project,
    this.pulumiLabels,
    this.resourceStatuses,
    this.statuses,
    this.storagePoolType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProvisioningType': ?capacityProvisioningType,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'kind': ?kind,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStoragePoolParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'performanceProvisioningType': ?performanceProvisioningType,
      'poolProvisionedCapacityGb': ?poolProvisionedCapacityGb,
      'poolProvisionedIops': ?poolProvisionedIops,
      'poolProvisionedThroughput': ?poolProvisionedThroughput,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceStatuses': ?(() { final guardedValue = resourceStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStoragePoolResourceStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStoragePoolStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storagePoolType': ?storagePoolType,
      'zone': ?zone,
    };
  }

  factory GetStoragePoolResult.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolResult(
      capacityProvisioningType: (() { final guardedValue = map['capacityProvisioningType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStoragePoolParam>(guardedValue, (value) => GetStoragePoolParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      performanceProvisioningType: (() { final guardedValue = map['performanceProvisioningType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolProvisionedCapacityGb: (() { final guardedValue = map['poolProvisionedCapacityGb']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolProvisionedIops: (() { final guardedValue = map['poolProvisionedIops']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolProvisionedThroughput: (() { final guardedValue = map['poolProvisionedThroughput']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceStatuses: (() { final guardedValue = map['resourceStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStoragePoolResourceStatus>(guardedValue, (value) => GetStoragePoolResourceStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStoragePoolStatus>(guardedValue, (value) => GetStoragePoolStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      storagePoolType: (() { final guardedValue = map['storagePoolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
