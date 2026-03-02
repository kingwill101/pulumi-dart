// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_dataset_config_exclude_cloud_storage_buckets.dart';
import 'insights_dataset_config_exclude_cloud_storage_locations.dart';
import 'insights_dataset_config_identity.dart';
import 'insights_dataset_config_include_cloud_storage_buckets.dart';
import 'insights_dataset_config_include_cloud_storage_locations.dart';
import 'insights_dataset_config_link.dart';
import 'insights_dataset_config_source_folders.dart';
import 'insights_dataset_config_source_projects.dart';

/// Input properties used for looking up and filtering InsightsDatasetConfig resources.
class InsightsDatasetConfigState {
  /// Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  final pulumi.Input<int>? activityDataRetentionPeriodDays;
  /// The UTC time at which the DatasetConfig was created. This is auto-populated.
  final pulumi.Input<String>? createTime;
  /// The user-defined ID of the DatasetConfig
  final pulumi.Input<String>? datasetConfigId;
  /// State of the DatasetConfig.
  final pulumi.Input<String>? datasetConfigState;
  /// An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  final pulumi.Input<String>? description;
  /// Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigExcludeCloudStorageBuckets>? excludeCloudStorageBuckets;
  /// Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigExcludeCloudStorageLocations>? excludeCloudStorageLocations;
  /// Identity used by DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIdentity>? identity;
  /// Defines the options for including cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIncludeCloudStorageBuckets>? includeCloudStorageBuckets;
  /// Defines the options for including cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIncludeCloudStorageLocations>? includeCloudStorageLocations;
  /// If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  final pulumi.Input<bool>? includeNewlyCreatedBuckets;
  final pulumi.Input<bool>? linkDataset;
  /// Details of the linked DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsDatasetConfigLink>>? links;
  /// The location of the DatasetConfig.
  final pulumi.Input<String>? location;
  /// The full canonical resource name of the DatasetConfig (e.g., projects/P/locations/L/datasetConfigs/ID).
  final pulumi.Input<String>? name;
  /// Organization resource ID that the source projects should belong to.
  /// Projects that do not belong to the provided organization are not considered when creating the dataset.
  final pulumi.Input<String>? organizationNumber;
  /// Defines the options for providing a source organization for the DatasetConfig.
  final pulumi.Input<bool>? organizationScope;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Number of days of history that must be retained.
  final pulumi.Input<int>? retentionPeriodDays;
  /// Defines the options for providing source folders for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigSourceFolders>? sourceFolders;
  /// Defines the options for providing source projects for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigSourceProjects>? sourceProjects;
  /// System generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// The UTC time at which the DatasetConfig was updated. This is auto-populated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InsightsDatasetConfigState].
  /// [activityDataRetentionPeriodDays] Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  /// [createTime] The UTC time at which the DatasetConfig was created. This is auto-populated.
  /// [datasetConfigId] The user-defined ID of the DatasetConfig
  /// [datasetConfigState] State of the DatasetConfig.
  /// [description] An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  /// [excludeCloudStorageBuckets] Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// [excludeCloudStorageLocations] Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// [identity] Identity used by DatasetConfig.
  /// [includeCloudStorageBuckets] Defines the options for including cloud storage buckets for the DatasetConfig.
  /// [includeCloudStorageLocations] Defines the options for including cloud storage locations for the DatasetConfig.
  /// [includeNewlyCreatedBuckets] If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  /// [linkDataset] Optional.
  /// [links] Details of the linked DatasetConfig.
  /// [location] The location of the DatasetConfig.
  /// [name] The full canonical resource name of the DatasetConfig (e.g., projects/P/locations/L/datasetConfigs/ID).
  /// [organizationNumber] Organization resource ID that the source projects should belong to.
  /// [organizationScope] Defines the options for providing a source organization for the DatasetConfig.
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionPeriodDays] Number of days of history that must be retained.
  /// [sourceFolders] Defines the options for providing source folders for the DatasetConfig.
  /// [sourceProjects] Defines the options for providing source projects for the DatasetConfig.
  /// [uid] System generated unique identifier for the resource.
  /// [updateTime] The UTC time at which the DatasetConfig was updated. This is auto-populated.
  InsightsDatasetConfigState({
    this.activityDataRetentionPeriodDays,
    this.createTime,
    this.datasetConfigId,
    this.datasetConfigState,
    this.description,
    this.excludeCloudStorageBuckets,
    this.excludeCloudStorageLocations,
    this.identity,
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
      'description': ?description,
      'excludeCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigExcludeCloudStorageBuckets, Map<String, dynamic>>(excludeCloudStorageBuckets, (value) => value.toMap()),
      'excludeCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigExcludeCloudStorageLocations, Map<String, dynamic>>(excludeCloudStorageLocations, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'includeCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigIncludeCloudStorageBuckets, Map<String, dynamic>>(includeCloudStorageBuckets, (value) => value.toMap()),
      'includeCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigIncludeCloudStorageLocations, Map<String, dynamic>>(includeCloudStorageLocations, (value) => value.toMap()),
      'includeNewlyCreatedBuckets': ?includeNewlyCreatedBuckets,
      'linkDataset': ?linkDataset,
      'links': ?pulumi.Input.mapOptionalInputValue<List<InsightsDatasetConfigLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<InsightsDatasetConfigLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'organizationNumber': ?organizationNumber,
      'organizationScope': ?organizationScope,
      'project': ?project,
      'retentionPeriodDays': ?retentionPeriodDays,
      'sourceFolders': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigSourceFolders, Map<String, dynamic>>(sourceFolders, (value) => value.toMap()),
      'sourceProjects': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigSourceProjects, Map<String, dynamic>>(sourceProjects, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory InsightsDatasetConfigState.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigState(
      activityDataRetentionPeriodDays: map['activityDataRetentionPeriodDays'] == null ? null : (map['activityDataRetentionPeriodDays']! as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      datasetConfigId: map['datasetConfigId'] == null ? null : (map['datasetConfigId']! as String).input(),
      datasetConfigState: map['datasetConfigState'] == null ? null : (map['datasetConfigState']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      excludeCloudStorageBuckets: map['excludeCloudStorageBuckets'] == null ? null : (InsightsDatasetConfigExcludeCloudStorageBuckets.fromMap((map['excludeCloudStorageBuckets']! as Map).cast<String, dynamic>())).input(),
      excludeCloudStorageLocations: map['excludeCloudStorageLocations'] == null ? null : (InsightsDatasetConfigExcludeCloudStorageLocations.fromMap((map['excludeCloudStorageLocations']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (InsightsDatasetConfigIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      includeCloudStorageBuckets: map['includeCloudStorageBuckets'] == null ? null : (InsightsDatasetConfigIncludeCloudStorageBuckets.fromMap((map['includeCloudStorageBuckets']! as Map).cast<String, dynamic>())).input(),
      includeCloudStorageLocations: map['includeCloudStorageLocations'] == null ? null : (InsightsDatasetConfigIncludeCloudStorageLocations.fromMap((map['includeCloudStorageLocations']! as Map).cast<String, dynamic>())).input(),
      includeNewlyCreatedBuckets: map['includeNewlyCreatedBuckets'] == null ? null : (map['includeNewlyCreatedBuckets']! as bool).input(),
      linkDataset: map['linkDataset'] == null ? null : (map['linkDataset']! as bool).input(),
      links: map['links'] == null ? null : (pulumi.Input.decodeList<InsightsDatasetConfigLink>(map['links']!, (value) => InsightsDatasetConfigLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationNumber: map['organizationNumber'] == null ? null : (map['organizationNumber']! as String).input(),
      organizationScope: map['organizationScope'] == null ? null : (map['organizationScope']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : (map['retentionPeriodDays']! as int).input(),
      sourceFolders: map['sourceFolders'] == null ? null : (InsightsDatasetConfigSourceFolders.fromMap((map['sourceFolders']! as Map).cast<String, dynamic>())).input(),
      sourceProjects: map['sourceProjects'] == null ? null : (InsightsDatasetConfigSourceProjects.fromMap((map['sourceProjects']! as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

