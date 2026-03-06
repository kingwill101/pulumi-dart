// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_item.dart';
import 'dataset_reference.dart';
import 'dataset_tags_item.dart';
import 'encryption_configuration.dart';
import 'external_dataset_reference.dart';

/// {@template pulumi_bigquery_v2_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_dataset_args_doc}
class DatasetArgs {
  /// [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  final pulumi.Input<List<DatasetAccessItem>>? access;
  /// [Required] A reference that identifies the dataset.
  final pulumi.Input<DatasetReference>? datasetReference;
  final pulumi.Input<EncryptionConfiguration>? defaultEncryptionConfiguration;
  /// [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  final pulumi.Input<String>? defaultPartitionExpirationMs;
  /// [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  final pulumi.Input<String>? defaultTableExpirationMs;
  /// [Optional] A user-friendly description of the dataset.
  final pulumi.Input<String>? description;
  /// [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  final pulumi.Input<ExternalDatasetReference>? externalDatasetReference;
  /// [Optional] A descriptive name for the dataset.
  final pulumi.Input<String>? friendlyName;
  /// [Optional] Indicates if table names are case insensitive in the dataset.
  final pulumi.Input<bool>? isCaseInsensitive;
  /// The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  final pulumi.Input<Map<String, String>>? labels;
  /// The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  final pulumi.Input<String>? location;
  /// [Optional] Number of hours for the max time travel for all tables in the dataset.
  final pulumi.Input<String>? maxTimeTravelHours;
  final pulumi.Input<String>? project;
  /// [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  final pulumi.Input<String>? storageBillingModel;
  /// [Optional]The tags associated with this dataset. Tag keys are globally unique.
  final pulumi.Input<List<DatasetTagsItem>>? tags;

  /// Creates a new [DatasetArgs].
  /// [access] [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  /// [datasetReference] [Required] A reference that identifies the dataset.
  /// [defaultEncryptionConfiguration] Optional.
  /// [defaultPartitionExpirationMs] [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  /// [defaultTableExpirationMs] [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  /// [description] [Optional] A user-friendly description of the dataset.
  /// [externalDatasetReference] [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  /// [friendlyName] [Optional] A descriptive name for the dataset.
  /// [isCaseInsensitive] [Optional] Indicates if table names are case insensitive in the dataset.
  /// [labels] The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  /// [location] The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  /// [maxTimeTravelHours] [Optional] Number of hours for the max time travel for all tables in the dataset.
  /// [project] Optional.
  /// [storageBillingModel] [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  /// [tags] [Optional]The tags associated with this dataset. Tag keys are globally unique.
  const DatasetArgs({
    this.access,
    this.datasetReference,
    this.defaultEncryptionConfiguration,
    this.defaultPartitionExpirationMs,
    this.defaultTableExpirationMs,
    this.description,
    this.externalDatasetReference,
    this.friendlyName,
    this.isCaseInsensitive,
    this.labels,
    this.location,
    this.maxTimeTravelHours,
    this.project,
    this.storageBillingModel,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?pulumi.Input.mapOptionalInputValue<List<DatasetAccessItem>, List<Map<String, dynamic>>>(access, (value) => pulumi.Input.encodeList<DatasetAccessItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasetReference': ?pulumi.Input.mapOptionalInputValue<DatasetReference, Map<String, dynamic>>(datasetReference, (value) => value.toMap()),
      'defaultEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(defaultEncryptionConfiguration, (value) => value.toMap()),
      'defaultPartitionExpirationMs': ?defaultPartitionExpirationMs,
      'defaultTableExpirationMs': ?defaultTableExpirationMs,
      'description': ?description,
      'externalDatasetReference': ?pulumi.Input.mapOptionalInputValue<ExternalDatasetReference, Map<String, dynamic>>(externalDatasetReference, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'isCaseInsensitive': ?isCaseInsensitive,
      'labels': ?labels,
      'location': ?location,
      'maxTimeTravelHours': ?maxTimeTravelHours,
      'project': ?project,
      'storageBillingModel': ?storageBillingModel,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<DatasetTagsItem>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<DatasetTagsItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetAccessItem>(guardedValue, (value) => DatasetAccessItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datasetReference: (() { final guardedValue = map['datasetReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultEncryptionConfiguration: (() { final guardedValue = map['defaultEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultPartitionExpirationMs: (() { final guardedValue = map['defaultPartitionExpirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTableExpirationMs: (() { final guardedValue = map['defaultTableExpirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalDatasetReference: (() { final guardedValue = map['externalDatasetReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalDatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCaseInsensitive: (() { final guardedValue = map['isCaseInsensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTimeTravelHours: (() { final guardedValue = map['maxTimeTravelHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBillingModel: (() { final guardedValue = map['storageBillingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetTagsItem>(guardedValue, (value) => DatasetTagsItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

