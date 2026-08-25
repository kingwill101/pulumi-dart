// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_types_deprecated.dart';

/// Result data returned by getStoragePoolTypes.
class GetStoragePoolTypesResult {
  final String? creationTimestamp;
  final List<GetStoragePoolTypesDeprecated>? deprecateds;
  final String? description;
  final int? id;
  final String? kind;
  final int? maxPoolProvisionedCapacityGb;
  final int? maxPoolProvisionedIops;
  final int? maxPoolProvisionedThroughput;
  final int? minPoolProvisionedCapacityGb;
  final int? minPoolProvisionedIops;
  final int? minPoolProvisionedThroughput;
  final String? name;
  final String? project;
  final String? selfLink;
  final String? selfLinkWithId;
  final String? storagePoolType;
  final List<String>? supportedDiskTypes;
  final String? zone;

  /// Creates a new [GetStoragePoolTypesResult].
  /// [creationTimestamp] Optional.
  /// [deprecateds] Optional.
  /// [description] Optional.
  /// [id] Optional.
  /// [kind] Optional.
  /// [maxPoolProvisionedCapacityGb] Optional.
  /// [maxPoolProvisionedIops] Optional.
  /// [maxPoolProvisionedThroughput] Optional.
  /// [minPoolProvisionedCapacityGb] Optional.
  /// [minPoolProvisionedIops] Optional.
  /// [minPoolProvisionedThroughput] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [selfLink] Optional.
  /// [selfLinkWithId] Optional.
  /// [storagePoolType] Optional.
  /// [supportedDiskTypes] Optional.
  /// [zone] Optional.
  const GetStoragePoolTypesResult({
    this.creationTimestamp,
    this.deprecateds,
    this.description,
    this.id,
    this.kind,
    this.maxPoolProvisionedCapacityGb,
    this.maxPoolProvisionedIops,
    this.maxPoolProvisionedThroughput,
    this.minPoolProvisionedCapacityGb,
    this.minPoolProvisionedIops,
    this.minPoolProvisionedThroughput,
    this.name,
    this.project,
    this.selfLink,
    this.selfLinkWithId,
    this.storagePoolType,
    this.supportedDiskTypes,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'deprecateds': ?(() { final guardedValue = deprecateds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStoragePoolTypesDeprecated, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': ?id,
      'kind': ?kind,
      'maxPoolProvisionedCapacityGb': ?maxPoolProvisionedCapacityGb,
      'maxPoolProvisionedIops': ?maxPoolProvisionedIops,
      'maxPoolProvisionedThroughput': ?maxPoolProvisionedThroughput,
      'minPoolProvisionedCapacityGb': ?minPoolProvisionedCapacityGb,
      'minPoolProvisionedIops': ?minPoolProvisionedIops,
      'minPoolProvisionedThroughput': ?minPoolProvisionedThroughput,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'storagePoolType': ?storagePoolType,
      'supportedDiskTypes': ?supportedDiskTypes,
      'zone': ?zone,
    };
  }

  factory GetStoragePoolTypesResult.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesResult(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecateds: (() { final guardedValue = map['deprecateds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStoragePoolTypesDeprecated>(guardedValue, (value) => GetStoragePoolTypesDeprecated.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxPoolProvisionedCapacityGb: (() { final guardedValue = map['maxPoolProvisionedCapacityGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxPoolProvisionedIops: (() { final guardedValue = map['maxPoolProvisionedIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxPoolProvisionedThroughput: (() { final guardedValue = map['maxPoolProvisionedThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minPoolProvisionedCapacityGb: (() { final guardedValue = map['minPoolProvisionedCapacityGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minPoolProvisionedIops: (() { final guardedValue = map['minPoolProvisionedIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minPoolProvisionedThroughput: (() { final guardedValue = map['minPoolProvisionedThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storagePoolType: (() { final guardedValue = map['storagePoolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedDiskTypes: (() { final guardedValue = map['supportedDiskTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
