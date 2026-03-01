// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_dataset_config_exclude_cloud_storage_buckets.dart';
import 'insights_dataset_config_exclude_cloud_storage_locations.dart';
import 'insights_dataset_config_identity.dart';
import 'insights_dataset_config_include_cloud_storage_buckets.dart';
import 'insights_dataset_config_include_cloud_storage_locations.dart';
import 'insights_dataset_config_source_folders.dart';
import 'insights_dataset_config_source_projects.dart';

/// {@template pulumi_storage_insights_dataset_config_insights_dataset_config_args_doc}
/// The set of arguments for InsightsDatasetConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_insights_dataset_config_insights_dataset_config_args_doc}
class InsightsDatasetConfigArgs {
  /// Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  final pulumi.Input<int>? activityDataRetentionPeriodDays;
  /// The user-defined ID of the DatasetConfig
  final pulumi.Input<String> datasetConfigId;
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
  final pulumi.Input<InsightsDatasetConfigIdentity> identity;
  /// Defines the options for including cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIncludeCloudStorageBuckets>? includeCloudStorageBuckets;
  /// Defines the options for including cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIncludeCloudStorageLocations>? includeCloudStorageLocations;
  /// If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  final pulumi.Input<bool>? includeNewlyCreatedBuckets;
  final pulumi.Input<bool>? linkDataset;
  /// The location of the DatasetConfig.
  final pulumi.Input<String> location;
  /// Organization resource ID that the source projects should belong to.
  /// Projects that do not belong to the provided organization are not considered when creating the dataset.
  final pulumi.Input<String>? organizationNumber;
  /// Defines the options for providing a source organization for the DatasetConfig.
  final pulumi.Input<bool>? organizationScope;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Number of days of history that must be retained.
  final pulumi.Input<int> retentionPeriodDays;
  /// Defines the options for providing source folders for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigSourceFolders>? sourceFolders;
  /// Defines the options for providing source projects for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigSourceProjects>? sourceProjects;

  /// Creates a new [InsightsDatasetConfigArgs].
  /// [activityDataRetentionPeriodDays] Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  /// [datasetConfigId] The user-defined ID of the DatasetConfig
  /// [description] An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  /// [excludeCloudStorageBuckets] Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// [excludeCloudStorageLocations] Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// [identity] Identity used by DatasetConfig.
  /// [includeCloudStorageBuckets] Defines the options for including cloud storage buckets for the DatasetConfig.
  /// [includeCloudStorageLocations] Defines the options for including cloud storage locations for the DatasetConfig.
  /// [includeNewlyCreatedBuckets] If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  /// [linkDataset] Optional.
  /// [location] The location of the DatasetConfig.
  /// [organizationNumber] Organization resource ID that the source projects should belong to.
  /// [organizationScope] Defines the options for providing a source organization for the DatasetConfig.
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionPeriodDays] Number of days of history that must be retained.
  /// [sourceFolders] Defines the options for providing source folders for the DatasetConfig.
  /// [sourceProjects] Defines the options for providing source projects for the DatasetConfig.
  InsightsDatasetConfigArgs({
    pulumi.Output<int>? activityDataRetentionPeriodDays,
    required pulumi.Output<String> datasetConfigId,
    pulumi.Output<String>? description,
    pulumi.Output<InsightsDatasetConfigExcludeCloudStorageBuckets>? excludeCloudStorageBuckets,
    pulumi.Output<InsightsDatasetConfigExcludeCloudStorageLocations>? excludeCloudStorageLocations,
    required pulumi.Output<InsightsDatasetConfigIdentity> identity,
    pulumi.Output<InsightsDatasetConfigIncludeCloudStorageBuckets>? includeCloudStorageBuckets,
    pulumi.Output<InsightsDatasetConfigIncludeCloudStorageLocations>? includeCloudStorageLocations,
    pulumi.Output<bool>? includeNewlyCreatedBuckets,
    pulumi.Output<bool>? linkDataset,
    required pulumi.Output<String> location,
    pulumi.Output<String>? organizationNumber,
    pulumi.Output<bool>? organizationScope,
    pulumi.Output<String>? project,
    required pulumi.Output<int> retentionPeriodDays,
    pulumi.Output<InsightsDatasetConfigSourceFolders>? sourceFolders,
    pulumi.Output<InsightsDatasetConfigSourceProjects>? sourceProjects,
  }) :
      activityDataRetentionPeriodDays = pulumi.Input.asOptionalInput<int>(activityDataRetentionPeriodDays),
      datasetConfigId = pulumi.Input.asInput<String>(datasetConfigId),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeCloudStorageBuckets = pulumi.Input.asOptionalInput<InsightsDatasetConfigExcludeCloudStorageBuckets>(excludeCloudStorageBuckets),
      excludeCloudStorageLocations = pulumi.Input.asOptionalInput<InsightsDatasetConfigExcludeCloudStorageLocations>(excludeCloudStorageLocations),
      identity = pulumi.Input.asInput<InsightsDatasetConfigIdentity>(identity),
      includeCloudStorageBuckets = pulumi.Input.asOptionalInput<InsightsDatasetConfigIncludeCloudStorageBuckets>(includeCloudStorageBuckets),
      includeCloudStorageLocations = pulumi.Input.asOptionalInput<InsightsDatasetConfigIncludeCloudStorageLocations>(includeCloudStorageLocations),
      includeNewlyCreatedBuckets = pulumi.Input.asOptionalInput<bool>(includeNewlyCreatedBuckets),
      linkDataset = pulumi.Input.asOptionalInput<bool>(linkDataset),
      location = pulumi.Input.asInput<String>(location),
      organizationNumber = pulumi.Input.asOptionalInput<String>(organizationNumber),
      organizationScope = pulumi.Input.asOptionalInput<bool>(organizationScope),
      project = pulumi.Input.asOptionalInput<String>(project),
      retentionPeriodDays = pulumi.Input.asInput<int>(retentionPeriodDays),
      sourceFolders = pulumi.Input.asOptionalInput<InsightsDatasetConfigSourceFolders>(sourceFolders),
      sourceProjects = pulumi.Input.asOptionalInput<InsightsDatasetConfigSourceProjects>(sourceProjects);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityDataRetentionPeriodDays': ?activityDataRetentionPeriodDays,
      'datasetConfigId': datasetConfigId,
      'description': ?description,
      'excludeCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigExcludeCloudStorageBuckets, Map<String, dynamic>>(excludeCloudStorageBuckets, (value) => value.toMap()),
      'excludeCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigExcludeCloudStorageLocations, Map<String, dynamic>>(excludeCloudStorageLocations, (value) => value.toMap()),
      'identity': pulumi.Input.mapInputValue<InsightsDatasetConfigIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'includeCloudStorageBuckets': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigIncludeCloudStorageBuckets, Map<String, dynamic>>(includeCloudStorageBuckets, (value) => value.toMap()),
      'includeCloudStorageLocations': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigIncludeCloudStorageLocations, Map<String, dynamic>>(includeCloudStorageLocations, (value) => value.toMap()),
      'includeNewlyCreatedBuckets': ?includeNewlyCreatedBuckets,
      'linkDataset': ?linkDataset,
      'location': location,
      'organizationNumber': ?organizationNumber,
      'organizationScope': ?organizationScope,
      'project': ?project,
      'retentionPeriodDays': retentionPeriodDays,
      'sourceFolders': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigSourceFolders, Map<String, dynamic>>(sourceFolders, (value) => value.toMap()),
      'sourceProjects': ?pulumi.Input.mapOptionalInputValue<InsightsDatasetConfigSourceProjects, Map<String, dynamic>>(sourceProjects, (value) => value.toMap()),
    };
  }

  factory InsightsDatasetConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigArgs(
      activityDataRetentionPeriodDays: map['activityDataRetentionPeriodDays'] == null ? null : pulumi.Output.create<int>(map['activityDataRetentionPeriodDays'] as int),
      datasetConfigId: pulumi.Output.create<String>(map['datasetConfigId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludeCloudStorageBuckets: map['excludeCloudStorageBuckets'] == null ? null : pulumi.Output.create<InsightsDatasetConfigExcludeCloudStorageBuckets>(InsightsDatasetConfigExcludeCloudStorageBuckets.fromMap((map['excludeCloudStorageBuckets'] as Map).cast<String, dynamic>())),
      excludeCloudStorageLocations: map['excludeCloudStorageLocations'] == null ? null : pulumi.Output.create<InsightsDatasetConfigExcludeCloudStorageLocations>(InsightsDatasetConfigExcludeCloudStorageLocations.fromMap((map['excludeCloudStorageLocations'] as Map).cast<String, dynamic>())),
      identity: pulumi.Output.create<InsightsDatasetConfigIdentity>(InsightsDatasetConfigIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      includeCloudStorageBuckets: map['includeCloudStorageBuckets'] == null ? null : pulumi.Output.create<InsightsDatasetConfigIncludeCloudStorageBuckets>(InsightsDatasetConfigIncludeCloudStorageBuckets.fromMap((map['includeCloudStorageBuckets'] as Map).cast<String, dynamic>())),
      includeCloudStorageLocations: map['includeCloudStorageLocations'] == null ? null : pulumi.Output.create<InsightsDatasetConfigIncludeCloudStorageLocations>(InsightsDatasetConfigIncludeCloudStorageLocations.fromMap((map['includeCloudStorageLocations'] as Map).cast<String, dynamic>())),
      includeNewlyCreatedBuckets: map['includeNewlyCreatedBuckets'] == null ? null : pulumi.Output.create<bool>(map['includeNewlyCreatedBuckets'] as bool),
      linkDataset: map['linkDataset'] == null ? null : pulumi.Output.create<bool>(map['linkDataset'] as bool),
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationNumber: map['organizationNumber'] == null ? null : pulumi.Output.create<String>(map['organizationNumber'] as String),
      organizationScope: map['organizationScope'] == null ? null : pulumi.Output.create<bool>(map['organizationScope'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      retentionPeriodDays: pulumi.Output.create<int>(map['retentionPeriodDays'] as int),
      sourceFolders: map['sourceFolders'] == null ? null : pulumi.Output.create<InsightsDatasetConfigSourceFolders>(InsightsDatasetConfigSourceFolders.fromMap((map['sourceFolders'] as Map).cast<String, dynamic>())),
      sourceProjects: map['sourceProjects'] == null ? null : pulumi.Output.create<InsightsDatasetConfigSourceProjects>(InsightsDatasetConfigSourceProjects.fromMap((map['sourceProjects'] as Map).cast<String, dynamic>())),
    );
  }
}

