// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_types_deprecated.dart';

/// Result data returned by getStoragePoolTypes.
class GetStoragePoolTypesResult {
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// (Output)
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED.
  /// This is only informational and the status will not change unless the client explicitly changes it.
  final List<GetStoragePoolTypesDeprecated>? deprecateds;
  /// An optional description of this resource.
  final String? description;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final int? id;
  /// Type of the resource. Always compute#storagePoolType for storage pool types.
  final String? kind;
  /// Maximum storage pool size in GB.
  final int? maxPoolProvisionedCapacityGb;
  /// Maximum provisioned IOPS.
  final int? maxPoolProvisionedIops;
  /// Maximum provisioned throughput.
  final int? maxPoolProvisionedThroughput;
  /// Minimum storage pool size in GB.
  final int? minPoolProvisionedCapacityGb;
  /// Minimum provisioned IOPS.
  final int? minPoolProvisionedIops;
  /// Minimum provisioned throughput.
  final int? minPoolProvisionedThroughput;
  /// Name of the resource.
  final String? name;
  final String? project;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  final String? storagePoolType;
  /// The list of disk types supported in this storage pool type.
  final List<String>? supportedDiskTypes;
  final String? zone;

  /// Creates a new [GetStoragePoolTypesResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deprecateds] (Output)
  /// [description] An optional description of this resource.
  /// [id] The unique identifier for the resource. This identifier is defined by the server.
  /// [kind] Type of the resource. Always compute#storagePoolType for storage pool types.
  /// [maxPoolProvisionedCapacityGb] Maximum storage pool size in GB.
  /// [maxPoolProvisionedIops] Maximum provisioned IOPS.
  /// [maxPoolProvisionedThroughput] Maximum provisioned throughput.
  /// [minPoolProvisionedCapacityGb] Minimum storage pool size in GB.
  /// [minPoolProvisionedIops] Minimum provisioned IOPS.
  /// [minPoolProvisionedThroughput] Minimum provisioned throughput.
  /// [name] Name of the resource.
  /// [project] Optional.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [storagePoolType] Optional.
  /// [supportedDiskTypes] The list of disk types supported in this storage pool type.
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxPoolProvisionedCapacityGb: (() { final guardedValue = map['maxPoolProvisionedCapacityGb']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxPoolProvisionedIops: (() { final guardedValue = map['maxPoolProvisionedIops']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxPoolProvisionedThroughput: (() { final guardedValue = map['maxPoolProvisionedThroughput']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minPoolProvisionedCapacityGb: (() { final guardedValue = map['minPoolProvisionedCapacityGb']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minPoolProvisionedIops: (() { final guardedValue = map['minPoolProvisionedIops']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minPoolProvisionedThroughput: (() { final guardedValue = map['minPoolProvisionedThroughput']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
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
