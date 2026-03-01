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
  DatasetState({
    pulumi.Output<List<DatasetAccess>>? accesses,
    pulumi.Output<int>? creationTime,
    pulumi.Output<String>? datasetId,
    pulumi.Output<String>? defaultCollation,
    pulumi.Output<DatasetDefaultEncryptionConfiguration>? defaultEncryptionConfiguration,
    pulumi.Output<int>? defaultPartitionExpirationMs,
    pulumi.Output<int>? defaultTableExpirationMs,
    pulumi.Output<bool>? deleteContentsOnDestroy,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<DatasetExternalCatalogDatasetOptions>? externalCatalogDatasetOptions,
    pulumi.Output<DatasetExternalDatasetReference>? externalDatasetReference,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<bool>? isCaseInsensitive,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? lastModifiedTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maxTimeTravelHours,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<Map<String, String>>? resourceTags,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? storageBillingModel,
  }) :
      accesses = pulumi.Input.asOptionalInput<List<DatasetAccess>>(accesses),
      creationTime = pulumi.Input.asOptionalInput<int>(creationTime),
      datasetId = pulumi.Input.asOptionalInput<String>(datasetId),
      defaultCollation = pulumi.Input.asOptionalInput<String>(defaultCollation),
      defaultEncryptionConfiguration = pulumi.Input.asOptionalInput<DatasetDefaultEncryptionConfiguration>(defaultEncryptionConfiguration),
      defaultPartitionExpirationMs = pulumi.Input.asOptionalInput<int>(defaultPartitionExpirationMs),
      defaultTableExpirationMs = pulumi.Input.asOptionalInput<int>(defaultTableExpirationMs),
      deleteContentsOnDestroy = pulumi.Input.asOptionalInput<bool>(deleteContentsOnDestroy),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      externalCatalogDatasetOptions = pulumi.Input.asOptionalInput<DatasetExternalCatalogDatasetOptions>(externalCatalogDatasetOptions),
      externalDatasetReference = pulumi.Input.asOptionalInput<DatasetExternalDatasetReference>(externalDatasetReference),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      isCaseInsensitive = pulumi.Input.asOptionalInput<bool>(isCaseInsensitive),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lastModifiedTime = pulumi.Input.asOptionalInput<int>(lastModifiedTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxTimeTravelHours = pulumi.Input.asOptionalInput<String>(maxTimeTravelHours),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      storageBillingModel = pulumi.Input.asOptionalInput<String>(storageBillingModel);

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
      accesses: map['accesses'] == null ? null : pulumi.Output.create<List<DatasetAccess>>(pulumi.Input.decodeList<DatasetAccess>(map['accesses'], (value) => DatasetAccess.fromMap((value as Map).cast<String, dynamic>()))),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<int>(map['creationTime'] as int),
      datasetId: map['datasetId'] == null ? null : pulumi.Output.create<String>(map['datasetId'] as String),
      defaultCollation: map['defaultCollation'] == null ? null : pulumi.Output.create<String>(map['defaultCollation'] as String),
      defaultEncryptionConfiguration: map['defaultEncryptionConfiguration'] == null ? null : pulumi.Output.create<DatasetDefaultEncryptionConfiguration>(DatasetDefaultEncryptionConfiguration.fromMap((map['defaultEncryptionConfiguration'] as Map).cast<String, dynamic>())),
      defaultPartitionExpirationMs: map['defaultPartitionExpirationMs'] == null ? null : pulumi.Output.create<int>(map['defaultPartitionExpirationMs'] as int),
      defaultTableExpirationMs: map['defaultTableExpirationMs'] == null ? null : pulumi.Output.create<int>(map['defaultTableExpirationMs'] as int),
      deleteContentsOnDestroy: map['deleteContentsOnDestroy'] == null ? null : pulumi.Output.create<bool>(map['deleteContentsOnDestroy'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      externalCatalogDatasetOptions: map['externalCatalogDatasetOptions'] == null ? null : pulumi.Output.create<DatasetExternalCatalogDatasetOptions>(DatasetExternalCatalogDatasetOptions.fromMap((map['externalCatalogDatasetOptions'] as Map).cast<String, dynamic>())),
      externalDatasetReference: map['externalDatasetReference'] == null ? null : pulumi.Output.create<DatasetExternalDatasetReference>(DatasetExternalDatasetReference.fromMap((map['externalDatasetReference'] as Map).cast<String, dynamic>())),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      isCaseInsensitive: map['isCaseInsensitive'] == null ? null : pulumi.Output.create<bool>(map['isCaseInsensitive'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<int>(map['lastModifiedTime'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxTimeTravelHours: map['maxTimeTravelHours'] == null ? null : pulumi.Output.create<String>(map['maxTimeTravelHours'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      resourceTags: map['resourceTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceTags'] as Map).cast<String, String>()),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      storageBillingModel: map['storageBillingModel'] == null ? null : pulumi.Output.create<String>(map['storageBillingModel'] as String),
    );
  }
}

