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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// A boolean terraform only flag to link/unlink dataset.
  ///
  /// Setting this field to true while creation will automatically link the created dataset as an additional functionality.
  /// &gt; **Note** A dataset config resource can only be destroyed once it is unlinked,
  /// so users must set this field to false to unlink the dataset and destroy the dataset config resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  /// [excludeCloudStorageBuckets] Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// [excludeCloudStorageLocations] Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// [identity] Identity used by DatasetConfig.
  /// [includeCloudStorageBuckets] Defines the options for including cloud storage buckets for the DatasetConfig.
  /// [includeCloudStorageLocations] Defines the options for including cloud storage locations for the DatasetConfig.
  /// [includeNewlyCreatedBuckets] If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  /// [linkDataset] A boolean terraform only flag to link/unlink dataset.
  /// [location] The location of the DatasetConfig.
  /// [organizationNumber] Organization resource ID that the source projects should belong to.
  /// [organizationScope] Defines the options for providing a source organization for the DatasetConfig.
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionPeriodDays] Number of days of history that must be retained.
  /// [sourceFolders] Defines the options for providing source folders for the DatasetConfig.
  /// [sourceProjects] Defines the options for providing source projects for the DatasetConfig.
  const InsightsDatasetConfigArgs({
    this.activityDataRetentionPeriodDays,
    required this.datasetConfigId,
    this.deletionPolicy,
    this.description,
    this.excludeCloudStorageBuckets,
    this.excludeCloudStorageLocations,
    required this.identity,
    this.includeCloudStorageBuckets,
    this.includeCloudStorageLocations,
    this.includeNewlyCreatedBuckets,
    this.linkDataset,
    required this.location,
    this.organizationNumber,
    this.organizationScope,
    this.project,
    required this.retentionPeriodDays,
    this.sourceFolders,
    this.sourceProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityDataRetentionPeriodDays': ?activityDataRetentionPeriodDays,
      'datasetConfigId': datasetConfigId,
      'deletionPolicy': ?deletionPolicy,
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
      activityDataRetentionPeriodDays: (() { final guardedValue = map['activityDataRetentionPeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      datasetConfigId: pulumi.Input.fromValue(map['datasetConfigId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeCloudStorageBuckets: (() { final guardedValue = map['excludeCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsDatasetConfigExcludeCloudStorageBuckets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeCloudStorageLocations: (() { final guardedValue = map['excludeCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsDatasetConfigExcludeCloudStorageLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: pulumi.Input.fromValue(InsightsDatasetConfigIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      includeCloudStorageBuckets: (() { final guardedValue = map['includeCloudStorageBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsDatasetConfigIncludeCloudStorageBuckets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeCloudStorageLocations: (() { final guardedValue = map['includeCloudStorageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsDatasetConfigIncludeCloudStorageLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeNewlyCreatedBuckets: (() { final guardedValue = map['includeNewlyCreatedBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linkDataset: (() { final guardedValue = map['linkDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationNumber: (() { final guardedValue = map['organizationNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationScope: (() { final guardedValue = map['organizationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriodDays: pulumi.Input.fromValue(map['retentionPeriodDays'] as int),
      sourceFolders: (() { final guardedValue = map['sourceFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsDatasetConfigSourceFolders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceProjects: (() { final guardedValue = map['sourceProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsDatasetConfigSourceProjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
