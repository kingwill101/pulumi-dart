// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access.dart';
import 'dataset_default_encryption_configuration.dart';
import 'dataset_external_catalog_dataset_options.dart';
import 'dataset_external_dataset_reference.dart';

/// Input properties used for looking up and filtering Dataset resources.
class DatasetState {
  /// An array of objects that define dataset access for one or more entities.
  /// Structure is documented below.
  final pulumi.Input<List<DatasetAccess>>? accesses;
  /// The time when this dataset was created, in milliseconds since the
  /// epoch.
  final pulumi.Input<int>? creationTime;
  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  final pulumi.Input<String>? datasetId;
  /// Defines the default collation specification of future tables created
  /// in the dataset. If a table is created in this dataset without table-level
  /// default collation, then the table inherits the dataset default collation,
  /// which is applied to the string fields that do not have explicit collation
  /// specified. A change to this field affects only tables created afterwards,
  /// and does not alter the existing tables.
  /// The following values are supported:
  /// - 'und:ci': undetermined locale, case insensitive.
  /// - '': empty string. Default to case-sensitive behavior.
  final pulumi.Input<String>? defaultCollation;
  /// The default encryption key for all tables in the dataset. Once this property is set,
  /// all newly-created partitioned tables in the dataset will have encryption key set to
  /// this value, unless table creation request (or query) overrides the key.
  /// Structure is documented below.
  final pulumi.Input<DatasetDefaultEncryptionConfiguration>? defaultEncryptionConfiguration;
  /// The default partition expiration for all partitioned tables in
  /// the dataset, in milliseconds.
  /// Once this property is set, all newly-created partitioned tables in
  /// the dataset will have an `expirationMs` property in the `timePartitioning`
  /// settings set to this value, and changing the value will only
  /// affect new tables, not existing ones. The storage in a partition will
  /// have an expiration time of its partition time plus this value.
  /// Setting this property overrides the use of `defaultTableExpirationMs`
  /// for partitioned tables: only one of `defaultTableExpirationMs` and
  /// `defaultPartitionExpirationMs` will be used for any new partitioned
  /// table. If you provide an explicit `timePartitioning.expirationMs` when
  /// creating or updating a partitioned table, that value takes precedence
  /// over the default partition expiration time indicated by this property.
  final pulumi.Input<int>? defaultPartitionExpirationMs;
  /// The default lifetime of all tables in the dataset, in milliseconds.
  /// The minimum value is 3600000 milliseconds (one hour).
  /// Once this property is set, all newly-created tables in the dataset
  /// will have an `expirationTime` property set to the creation time plus
  /// the value in this property, and changing the value will only affect
  /// new tables, not existing ones. When the `expirationTime` for a given
  /// table is reached, that table will be deleted automatically.
  /// If a table's `expirationTime` is modified or removed before the
  /// table expires, or if you provide an explicit `expirationTime` when
  /// creating a table, that value takes precedence over the default
  /// expiration time indicated by this property.
  final pulumi.Input<int>? defaultTableExpirationMs;
  /// If set to `true`, delete all the tables in the
  /// dataset when destroying the resource; otherwise,
  /// destroying the resource will fail if tables are present.
  final pulumi.Input<bool>? deleteContentsOnDestroy;
  /// A user-friendly description of the dataset
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A hash of the resource.
  final pulumi.Input<String>? etag;
  /// Options defining open source compatible datasets living in the BigQuery catalog. Contains
  /// metadata of open source database, schema or namespace represented by the current dataset.
  /// Structure is documented below.
  final pulumi.Input<DatasetExternalCatalogDatasetOptions>? externalCatalogDatasetOptions;
  /// Information about the external metadata storage where the dataset is defined.
  /// Structure is documented below.
  final pulumi.Input<DatasetExternalDatasetReference>? externalDatasetReference;
  /// A descriptive name for the dataset
  final pulumi.Input<String>? friendlyName;
  /// TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
  /// By default, this is FALSE, which means the dataset and its table names are
  /// case-sensitive. This field does not affect routine references.
  final pulumi.Input<bool>? isCaseInsensitive;
  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The date when this dataset or any of its tables was last modified, in
  /// milliseconds since the epoch.
  final pulumi.Input<int>? lastModifiedTime;
  /// The geographic location where the dataset should reside.
  /// See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).
  /// There are two types of locations, regional or multi-regional. A regional
  /// location is a specific geographic place, such as Tokyo, and a multi-regional
  /// location is a large geographic area, such as the United States, that
  /// contains at least two geographic places.
  /// The default value is multi-regional location `US`.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).
  final pulumi.Input<String>? maxTimeTravelHours;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The tags attached to this table. Tag keys are globally unique. Tag key is expected to be
  /// in the namespaced format, for example "123456789012/environment" where 123456789012 is the
  /// ID of the parent organization or project resource for this tag key. Tag value is expected
  /// to be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
  /// for more details.
  final pulumi.Input<Map<String, String>>? resourceTags;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Specifies the storage billing model for the dataset.
  /// Set this flag value to LOGICAL to use logical bytes for storage billing,
  /// or to PHYSICAL to use physical bytes instead.
  /// LOGICAL is the default if this flag isn't specified.
  final pulumi.Input<String>? storageBillingModel;

  /// Creates a new [DatasetState].
  /// [accesses] An array of objects that define dataset access for one or more entities.
  /// [creationTime] The time when this dataset was created, in milliseconds since the
  /// [datasetId] A unique ID for this dataset, without the project name. The ID
  /// [defaultCollation] Defines the default collation specification of future tables created
  /// [defaultEncryptionConfiguration] The default encryption key for all tables in the dataset. Once this property is set,
  /// [defaultPartitionExpirationMs] The default partition expiration for all partitioned tables in
  /// [defaultTableExpirationMs] The default lifetime of all tables in the dataset, in milliseconds.
  /// [deleteContentsOnDestroy] If set to `true`, delete all the tables in the
  /// [description] A user-friendly description of the dataset
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] A hash of the resource.
  /// [externalCatalogDatasetOptions] Options defining open source compatible datasets living in the BigQuery catalog. Contains
  /// [externalDatasetReference] Information about the external metadata storage where the dataset is defined.
  /// [friendlyName] A descriptive name for the dataset
  /// [isCaseInsensitive] TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
  /// [labels] The labels associated with this dataset. You can use these to
  /// [lastModifiedTime] The date when this dataset or any of its tables was last modified, in
  /// [location] The geographic location where the dataset should reside.
  /// [maxTimeTravelHours] Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [resourceTags] The tags attached to this table. Tag keys are globally unique. Tag key is expected to be
  /// [selfLink] The URI of the created resource.
  /// [storageBillingModel] Specifies the storage billing model for the dataset.
  const DatasetState({
    this.accesses,
    this.creationTime,
    this.datasetId,
    this.defaultCollation,
    this.defaultEncryptionConfiguration,
    this.defaultPartitionExpirationMs,
    this.defaultTableExpirationMs,
    this.deleteContentsOnDestroy,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.externalCatalogDatasetOptions,
    this.externalDatasetReference,
    this.friendlyName,
    this.isCaseInsensitive,
    this.labels,
    this.lastModifiedTime,
    this.location,
    this.maxTimeTravelHours,
    this.project,
    this.pulumiLabels,
    this.resourceTags,
    this.selfLink,
    this.storageBillingModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': ?pulumi.Input.mapOptionalInputValue<List<DatasetAccess>, List<Map<String, dynamic>>>(accesses, (value) => pulumi.Input.encodeList<DatasetAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTime': ?creationTime,
      'datasetId': ?datasetId,
      'defaultCollation': ?defaultCollation,
      'defaultEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DatasetDefaultEncryptionConfiguration, Map<String, dynamic>>(defaultEncryptionConfiguration, (value) => value.toMap()),
      'defaultPartitionExpirationMs': ?defaultPartitionExpirationMs,
      'defaultTableExpirationMs': ?defaultTableExpirationMs,
      'deleteContentsOnDestroy': ?deleteContentsOnDestroy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'externalCatalogDatasetOptions': ?pulumi.Input.mapOptionalInputValue<DatasetExternalCatalogDatasetOptions, Map<String, dynamic>>(externalCatalogDatasetOptions, (value) => value.toMap()),
      'externalDatasetReference': ?pulumi.Input.mapOptionalInputValue<DatasetExternalDatasetReference, Map<String, dynamic>>(externalDatasetReference, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'isCaseInsensitive': ?isCaseInsensitive,
      'labels': ?labels,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'maxTimeTravelHours': ?maxTimeTravelHours,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceTags': ?resourceTags,
      'selfLink': ?selfLink,
      'storageBillingModel': ?storageBillingModel,
    };
  }

  factory DatasetState.fromMap(Map<String, dynamic> map) {
    return DatasetState(
      accesses: (() { final guardedValue = map['accesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetAccess>(guardedValue, (value) => DatasetAccess.fromMap((value as Map).cast<String, dynamic>()))); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCollation: (() { final guardedValue = map['defaultCollation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultEncryptionConfiguration: (() { final guardedValue = map['defaultEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetDefaultEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultPartitionExpirationMs: (() { final guardedValue = map['defaultPartitionExpirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultTableExpirationMs: (() { final guardedValue = map['defaultTableExpirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deleteContentsOnDestroy: (() { final guardedValue = map['deleteContentsOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalCatalogDatasetOptions: (() { final guardedValue = map['externalCatalogDatasetOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetExternalCatalogDatasetOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      externalDatasetReference: (() { final guardedValue = map['externalDatasetReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetExternalDatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCaseInsensitive: (() { final guardedValue = map['isCaseInsensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTimeTravelHours: (() { final guardedValue = map['maxTimeTravelHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBillingModel: (() { final guardedValue = map['storageBillingModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

