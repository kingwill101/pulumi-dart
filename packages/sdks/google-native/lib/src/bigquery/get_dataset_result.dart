// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_item_response.dart';
import 'dataset_reference_response.dart';
import 'dataset_tags_item_response.dart';
import 'encryption_configuration_response.dart';
import 'external_dataset_reference_response.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  /// [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  final List<DatasetAccessItemResponse> access;

  /// The time when this dataset was created, in milliseconds since the epoch.
  final String creationTime;

  /// [Required] A reference that identifies the dataset.
  final DatasetReferenceResponse datasetReference;

  /// The default collation of the dataset.
  final String defaultCollation;
  final EncryptionConfigurationResponse defaultEncryptionConfiguration;

  /// [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  final String defaultPartitionExpirationMs;

  /// The default rounding mode of the dataset.
  final String defaultRoundingMode;

  /// [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  final String defaultTableExpirationMs;

  /// [Optional] A user-friendly description of the dataset.
  final String description;

  /// A hash of the resource.
  final String etag;

  /// [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  final ExternalDatasetReferenceResponse externalDatasetReference;

  /// [Optional] A descriptive name for the dataset.
  final String friendlyName;

  /// [Optional] Indicates if table names are case insensitive in the dataset.
  final bool isCaseInsensitive;

  /// The resource type.
  final String kind;

  /// The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  final Map<String, String> labels;

  /// The date when this dataset or any of its tables was last modified, in milliseconds since the epoch.
  final String lastModifiedTime;

  /// The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  final String location;

  /// [Optional] Number of hours for the max time travel for all tables in the dataset.
  final String maxTimeTravelHours;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource.
  final String selfLink;

  /// [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  final String storageBillingModel;

  /// [Optional]The tags associated with this dataset. Tag keys are globally unique.
  final List<DatasetTagsItemResponse> tags;

  /// Creates a new [GetDatasetResult].
  /// [access] [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
  /// [creationTime] The time when this dataset was created, in milliseconds since the epoch.
  /// [datasetReference] [Required] A reference that identifies the dataset.
  /// [defaultCollation] The default collation of the dataset.
  /// [defaultEncryptionConfiguration] Required.
  /// [defaultPartitionExpirationMs] [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
  /// [defaultRoundingMode] The default rounding mode of the dataset.
  /// [defaultTableExpirationMs] [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
  /// [description] [Optional] A user-friendly description of the dataset.
  /// [etag] A hash of the resource.
  /// [externalDatasetReference] [Optional] Information about the external metadata storage where the dataset is defined. Filled out when the dataset type is EXTERNAL.
  /// [friendlyName] [Optional] A descriptive name for the dataset.
  /// [isCaseInsensitive] [Optional] Indicates if table names are case insensitive in the dataset.
  /// [kind] The resource type.
  /// [labels] The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
  /// [lastModifiedTime] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch.
  /// [location] The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.
  /// [maxTimeTravelHours] [Optional] Number of hours for the max time travel for all tables in the dataset.
  /// [satisfiesPzs] Reserved for future use.
  /// [selfLink] A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource.
  /// [storageBillingModel] [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
  /// [tags] [Optional]The tags associated with this dataset. Tag keys are globally unique.
  GetDatasetResult({
    required this.access,
    required this.creationTime,
    required this.datasetReference,
    required this.defaultCollation,
    required this.defaultEncryptionConfiguration,
    required this.defaultPartitionExpirationMs,
    required this.defaultRoundingMode,
    required this.defaultTableExpirationMs,
    required this.description,
    required this.etag,
    required this.externalDatasetReference,
    required this.friendlyName,
    required this.isCaseInsensitive,
    required this.kind,
    required this.labels,
    required this.lastModifiedTime,
    required this.location,
    required this.maxTimeTravelHours,
    required this.satisfiesPzs,
    required this.selfLink,
    required this.storageBillingModel,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access':
          pulumi.Input.encodeList<
            DatasetAccessItemResponse,
            Map<String, dynamic>
          >(access, (value) => value.toMap()),
      'creationTime': creationTime,
      'datasetReference': datasetReference.toMap(),
      'defaultCollation': defaultCollation,
      'defaultEncryptionConfiguration': defaultEncryptionConfiguration.toMap(),
      'defaultPartitionExpirationMs': defaultPartitionExpirationMs,
      'defaultRoundingMode': defaultRoundingMode,
      'defaultTableExpirationMs': defaultTableExpirationMs,
      'description': description,
      'etag': etag,
      'externalDatasetReference': externalDatasetReference.toMap(),
      'friendlyName': friendlyName,
      'isCaseInsensitive': isCaseInsensitive,
      'kind': kind,
      'labels': labels,
      'lastModifiedTime': lastModifiedTime,
      'location': location,
      'maxTimeTravelHours': maxTimeTravelHours,
      'satisfiesPzs': satisfiesPzs,
      'selfLink': selfLink,
      'storageBillingModel': storageBillingModel,
      'tags':
          pulumi.Input.encodeList<
            DatasetTagsItemResponse,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      access: pulumi.Input.decodeList<DatasetAccessItemResponse>(
        map['access']!,
        (value) => DatasetAccessItemResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      creationTime: map['creationTime'] as String,
      datasetReference: DatasetReferenceResponse.fromMap(
        (map['datasetReference']! as Map).cast<String, dynamic>(),
      ),
      defaultCollation: map['defaultCollation'] as String,
      defaultEncryptionConfiguration: EncryptionConfigurationResponse.fromMap(
        (map['defaultEncryptionConfiguration']! as Map).cast<String, dynamic>(),
      ),
      defaultPartitionExpirationMs:
          map['defaultPartitionExpirationMs'] as String,
      defaultRoundingMode: map['defaultRoundingMode'] as String,
      defaultTableExpirationMs: map['defaultTableExpirationMs'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      externalDatasetReference: ExternalDatasetReferenceResponse.fromMap(
        (map['externalDatasetReference']! as Map).cast<String, dynamic>(),
      ),
      friendlyName: map['friendlyName'] as String,
      isCaseInsensitive: map['isCaseInsensitive'] as bool,
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] as String,
      maxTimeTravelHours: map['maxTimeTravelHours'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      selfLink: map['selfLink'] as String,
      storageBillingModel: map['storageBillingModel'] as String,
      tags: pulumi.Input.decodeList<DatasetTagsItemResponse>(
        map['tags']!,
        (value) => DatasetTagsItemResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
