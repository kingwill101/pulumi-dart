// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_dataset_config_exclude_cloud_storage_bucket.dart';
import 'get_insights_dataset_config_exclude_cloud_storage_location.dart';
import 'get_insights_dataset_config_identity.dart';
import 'get_insights_dataset_config_include_cloud_storage_bucket.dart';
import 'get_insights_dataset_config_include_cloud_storage_location.dart';
import 'get_insights_dataset_config_link.dart';
import 'get_insights_dataset_config_source_folder.dart';
import 'get_insights_dataset_config_source_project.dart';

/// Result data returned by getInsightsDatasetConfig.
class GetInsightsDatasetConfigResult {
  final int? activityDataRetentionPeriodDays;
  final String? createTime;
  final String? datasetConfigId;
  final String? datasetConfigState;
  final String? deletionPolicy;
  final String? description;
  final List<GetInsightsDatasetConfigExcludeCloudStorageBucket>? excludeCloudStorageBuckets;
  final List<GetInsightsDatasetConfigExcludeCloudStorageLocation>? excludeCloudStorageLocations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetInsightsDatasetConfigIdentity>? identities;
  final List<GetInsightsDatasetConfigIncludeCloudStorageBucket>? includeCloudStorageBuckets;
  final List<GetInsightsDatasetConfigIncludeCloudStorageLocation>? includeCloudStorageLocations;
  final bool? includeNewlyCreatedBuckets;
  final bool? linkDataset;
  final List<GetInsightsDatasetConfigLink>? links;
  final String? location;
  final String? name;
  final String? organizationNumber;
  final bool? organizationScope;
  final String? project;
  final int? retentionPeriodDays;
  final List<GetInsightsDatasetConfigSourceFolder>? sourceFolders;
  final List<GetInsightsDatasetConfigSourceProject>? sourceProjects;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetInsightsDatasetConfigResult].
  /// [activityDataRetentionPeriodDays] Optional.
  /// [createTime] Optional.
  /// [datasetConfigId] Optional.
  /// [datasetConfigState] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [excludeCloudStorageBuckets] Optional.
  /// [excludeCloudStorageLocations] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] Optional.
  /// [includeCloudStorageBuckets] Optional.
  /// [includeCloudStorageLocations] Optional.
  /// [includeNewlyCreatedBuckets] Optional.
  /// [linkDataset] Optional.
  /// [links] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [organizationNumber] Optional.
  /// [organizationScope] Optional.
  /// [project] Optional.
  /// [retentionPeriodDays] Optional.
  /// [sourceFolders] Optional.
  /// [sourceProjects] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetInsightsDatasetConfigResult({
    this.activityDataRetentionPeriodDays,
    this.createTime,
    this.datasetConfigId,
    this.datasetConfigState,
    this.deletionPolicy,
    this.description,
    this.excludeCloudStorageBuckets,
    this.excludeCloudStorageLocations,
    this.id,
    this.identities,
    this.includeCloudStorageBuckets,
    this.includeCloudStorageLocations,
    this.includeNewlyCreatedBuckets,
    this.linkDataset,
    this.links,
    this.location,
    this.name,
    this.organizationNumber,
    this.organizationScope,
    this.project,
    this.retentionPeriodDays,
    this.sourceFolders,
    this.sourceProjects,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityDataRetentionPeriodDays': ?activityDataRetentionPeriodDays,
      'createTime': ?createTime,
      'datasetConfigId': ?datasetConfigId,
      'datasetConfigState': ?datasetConfigState,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'excludeCloudStorageBuckets': ?(() { final guardedValue = excludeCloudStorageBuckets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigExcludeCloudStorageBucket, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'excludeCloudStorageLocations': ?(() { final guardedValue = excludeCloudStorageLocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigExcludeCloudStorageLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'includeCloudStorageBuckets': ?(() { final guardedValue = includeCloudStorageBuckets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigIncludeCloudStorageBucket, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'includeCloudStorageLocations': ?(() { final guardedValue = includeCloudStorageLocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigIncludeCloudStorageLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'includeNewlyCreatedBuckets': ?includeNewlyCreatedBuckets,
      'linkDataset': ?linkDataset,
      'links': ?(() { final guardedValue = links; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigLink, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'organizationNumber': ?organizationNumber,
      'organizationScope': ?organizationScope,
      'project': ?project,
      'retentionPeriodDays': ?retentionPeriodDays,
      'sourceFolders': ?(() { final guardedValue = sourceFolders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigSourceFolder, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceProjects': ?(() { final guardedValue = sourceProjects; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInsightsDatasetConfigSourceProject, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetInsightsDatasetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigResult(
      activityDataRetentionPeriodDays: (() { final guardedValue = map['activityDataRetentionPeriodDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasetConfigId: (() { final guardedValue = map['datasetConfigId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasetConfigState: (() { final guardedValue = map['datasetConfigState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludeCloudStorageBuckets: (() { final guardedValue = map['excludeCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigExcludeCloudStorageBucket>(guardedValue, (value) => GetInsightsDatasetConfigExcludeCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>())); })(),
      excludeCloudStorageLocations: (() { final guardedValue = map['excludeCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigExcludeCloudStorageLocation>(guardedValue, (value) => GetInsightsDatasetConfigExcludeCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigIdentity>(guardedValue, (value) => GetInsightsDatasetConfigIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      includeCloudStorageBuckets: (() { final guardedValue = map['includeCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigIncludeCloudStorageBucket>(guardedValue, (value) => GetInsightsDatasetConfigIncludeCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>())); })(),
      includeCloudStorageLocations: (() { final guardedValue = map['includeCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigIncludeCloudStorageLocation>(guardedValue, (value) => GetInsightsDatasetConfigIncludeCloudStorageLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      includeNewlyCreatedBuckets: (() { final guardedValue = map['includeNewlyCreatedBuckets']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      linkDataset: (() { final guardedValue = map['linkDataset']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigLink>(guardedValue, (value) => GetInsightsDatasetConfigLink.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationNumber: (() { final guardedValue = map['organizationNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationScope: (() { final guardedValue = map['organizationScope']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionPeriodDays: (() { final guardedValue = map['retentionPeriodDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sourceFolders: (() { final guardedValue = map['sourceFolders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigSourceFolder>(guardedValue, (value) => GetInsightsDatasetConfigSourceFolder.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceProjects: (() { final guardedValue = map['sourceProjects']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInsightsDatasetConfigSourceProject>(guardedValue, (value) => GetInsightsDatasetConfigSourceProject.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
