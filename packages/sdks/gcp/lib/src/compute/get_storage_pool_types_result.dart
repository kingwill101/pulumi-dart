// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_types_deprecated.dart';

/// Result data returned by getStoragePoolTypes.
class GetStoragePoolTypesResult {
  final String creationTimestamp;
  final List<GetStoragePoolTypesDeprecated> deprecateds;
  final String description;
  final int id;
  final String kind;
  final int maxPoolProvisionedCapacityGb;
  final int maxPoolProvisionedIops;
  final int maxPoolProvisionedThroughput;
  final int minPoolProvisionedCapacityGb;
  final int minPoolProvisionedIops;
  final int minPoolProvisionedThroughput;
  final String name;
  final String project;
  final String selfLink;
  final String selfLinkWithId;
  final String storagePoolType;
  final List<String> supportedDiskTypes;
  final String zone;

  /// Creates a new [GetStoragePoolTypesResult].
  /// [creationTimestamp] Required.
  /// [deprecateds] Required.
  /// [description] Required.
  /// [id] Required.
  /// [kind] Required.
  /// [maxPoolProvisionedCapacityGb] Required.
  /// [maxPoolProvisionedIops] Required.
  /// [maxPoolProvisionedThroughput] Required.
  /// [minPoolProvisionedCapacityGb] Required.
  /// [minPoolProvisionedIops] Required.
  /// [minPoolProvisionedThroughput] Required.
  /// [name] Required.
  /// [project] Required.
  /// [selfLink] Required.
  /// [selfLinkWithId] Required.
  /// [storagePoolType] Required.
  /// [supportedDiskTypes] Required.
  /// [zone] Required.
  GetStoragePoolTypesResult({
    required this.creationTimestamp,
    required this.deprecateds,
    required this.description,
    required this.id,
    required this.kind,
    required this.maxPoolProvisionedCapacityGb,
    required this.maxPoolProvisionedIops,
    required this.maxPoolProvisionedThroughput,
    required this.minPoolProvisionedCapacityGb,
    required this.minPoolProvisionedIops,
    required this.minPoolProvisionedThroughput,
    required this.name,
    required this.project,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.storagePoolType,
    required this.supportedDiskTypes,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'deprecateds':
          pulumi.Input.encodeList<
            GetStoragePoolTypesDeprecated,
            Map<String, dynamic>
          >(deprecateds, (value) => value.toMap()),
      'description': description,
      'id': id,
      'kind': kind,
      'maxPoolProvisionedCapacityGb': maxPoolProvisionedCapacityGb,
      'maxPoolProvisionedIops': maxPoolProvisionedIops,
      'maxPoolProvisionedThroughput': maxPoolProvisionedThroughput,
      'minPoolProvisionedCapacityGb': minPoolProvisionedCapacityGb,
      'minPoolProvisionedIops': minPoolProvisionedIops,
      'minPoolProvisionedThroughput': minPoolProvisionedThroughput,
      'name': name,
      'project': project,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'storagePoolType': storagePoolType,
      'supportedDiskTypes': supportedDiskTypes,
      'zone': zone,
    };
  }

  factory GetStoragePoolTypesResult.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesResult(
      creationTimestamp: map['creationTimestamp'] as String,
      deprecateds: pulumi.Input.decodeList<GetStoragePoolTypesDeprecated>(
        map['deprecateds']!,
        (value) => GetStoragePoolTypesDeprecated.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      description: map['description'] as String,
      id: map['id'] as int,
      kind: map['kind'] as String,
      maxPoolProvisionedCapacityGb: map['maxPoolProvisionedCapacityGb'] as int,
      maxPoolProvisionedIops: map['maxPoolProvisionedIops'] as int,
      maxPoolProvisionedThroughput: map['maxPoolProvisionedThroughput'] as int,
      minPoolProvisionedCapacityGb: map['minPoolProvisionedCapacityGb'] as int,
      minPoolProvisionedIops: map['minPoolProvisionedIops'] as int,
      minPoolProvisionedThroughput: map['minPoolProvisionedThroughput'] as int,
      name: map['name'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      storagePoolType: map['storagePoolType'] as String,
      supportedDiskTypes: (map['supportedDiskTypes'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}
