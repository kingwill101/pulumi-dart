// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_access.dart';
import 'get_dataset_default_encryption_configuration.dart';
import 'get_dataset_external_catalog_dataset_option.dart';
import 'get_dataset_external_dataset_reference.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  final List<GetDatasetAccess> accesses;
  final int creationTime;
  final String datasetId;
  final String defaultCollation;
  final List<GetDatasetDefaultEncryptionConfiguration> defaultEncryptionConfigurations;
  final int defaultPartitionExpirationMs;
  final int defaultTableExpirationMs;
  final bool deleteContentsOnDestroy;
  final String description;
  final Map<String, String> effectiveLabels;
  final String etag;
  final List<GetDatasetExternalCatalogDatasetOption> externalCatalogDatasetOptions;
  final List<GetDatasetExternalDatasetReference> externalDatasetReferences;
  final String friendlyName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool isCaseInsensitive;
  final Map<String, String> labels;
  final int lastModifiedTime;
  final String location;
  final String maxTimeTravelHours;
  final String? project;
  final Map<String, String> pulumiLabels;
  final Map<String, String> resourceTags;
  final String selfLink;
  final String storageBillingModel;

  /// Creates a new [GetDatasetResult].
  /// [accesses] Required.
  /// [creationTime] Required.
  /// [datasetId] Required.
  /// [defaultCollation] Required.
  /// [defaultEncryptionConfigurations] Required.
  /// [defaultPartitionExpirationMs] Required.
  /// [defaultTableExpirationMs] Required.
  /// [deleteContentsOnDestroy] Required.
  /// [description] Required.
  /// [effectiveLabels] Required.
  /// [etag] Required.
  /// [externalCatalogDatasetOptions] Required.
  /// [externalDatasetReferences] Required.
  /// [friendlyName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isCaseInsensitive] Required.
  /// [labels] Required.
  /// [lastModifiedTime] Required.
  /// [location] Required.
  /// [maxTimeTravelHours] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [resourceTags] Required.
  /// [selfLink] Required.
  /// [storageBillingModel] Required.
  GetDatasetResult({
    required this.accesses,
    required this.creationTime,
    required this.datasetId,
    required this.defaultCollation,
    required this.defaultEncryptionConfigurations,
    required this.defaultPartitionExpirationMs,
    required this.defaultTableExpirationMs,
    required this.deleteContentsOnDestroy,
    required this.description,
    required this.effectiveLabels,
    required this.etag,
    required this.externalCatalogDatasetOptions,
    required this.externalDatasetReferences,
    required this.friendlyName,
    required this.id,
    required this.isCaseInsensitive,
    required this.labels,
    required this.lastModifiedTime,
    required this.location,
    required this.maxTimeTravelHours,
    this.project,
    required this.pulumiLabels,
    required this.resourceTags,
    required this.selfLink,
    required this.storageBillingModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': pulumi.Input.encodeList<GetDatasetAccess, Map<String, dynamic>>(accesses, (value) => value.toMap()),
      'creationTime': creationTime,
      'datasetId': datasetId,
      'defaultCollation': defaultCollation,
      'defaultEncryptionConfigurations': pulumi.Input.encodeList<GetDatasetDefaultEncryptionConfiguration, Map<String, dynamic>>(defaultEncryptionConfigurations, (value) => value.toMap()),
      'defaultPartitionExpirationMs': defaultPartitionExpirationMs,
      'defaultTableExpirationMs': defaultTableExpirationMs,
      'deleteContentsOnDestroy': deleteContentsOnDestroy,
      'description': description,
      'effectiveLabels': effectiveLabels,
      'etag': etag,
      'externalCatalogDatasetOptions': pulumi.Input.encodeList<GetDatasetExternalCatalogDatasetOption, Map<String, dynamic>>(externalCatalogDatasetOptions, (value) => value.toMap()),
      'externalDatasetReferences': pulumi.Input.encodeList<GetDatasetExternalDatasetReference, Map<String, dynamic>>(externalDatasetReferences, (value) => value.toMap()),
      'friendlyName': friendlyName,
      'id': id,
      'isCaseInsensitive': isCaseInsensitive,
      'labels': labels,
      'lastModifiedTime': lastModifiedTime,
      'location': location,
      'maxTimeTravelHours': maxTimeTravelHours,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'resourceTags': resourceTags,
      'selfLink': selfLink,
      'storageBillingModel': storageBillingModel,
    };
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      accesses: pulumi.Input.decodeList<GetDatasetAccess>(map['accesses']!, (value) => GetDatasetAccess.fromMap((value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as int,
      datasetId: map['datasetId'] as String,
      defaultCollation: map['defaultCollation'] as String,
      defaultEncryptionConfigurations: pulumi.Input.decodeList<GetDatasetDefaultEncryptionConfiguration>(map['defaultEncryptionConfigurations']!, (value) => GetDatasetDefaultEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      defaultPartitionExpirationMs: map['defaultPartitionExpirationMs'] as int,
      defaultTableExpirationMs: map['defaultTableExpirationMs'] as int,
      deleteContentsOnDestroy: map['deleteContentsOnDestroy'] as bool,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      externalCatalogDatasetOptions: pulumi.Input.decodeList<GetDatasetExternalCatalogDatasetOption>(map['externalCatalogDatasetOptions']!, (value) => GetDatasetExternalCatalogDatasetOption.fromMap((value as Map).cast<String, dynamic>())),
      externalDatasetReferences: pulumi.Input.decodeList<GetDatasetExternalDatasetReference>(map['externalDatasetReferences']!, (value) => GetDatasetExternalDatasetReference.fromMap((value as Map).cast<String, dynamic>())),
      friendlyName: map['friendlyName'] as String,
      id: map['id'] as String,
      isCaseInsensitive: map['isCaseInsensitive'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifiedTime: map['lastModifiedTime'] as int,
      location: map['location'] as String,
      maxTimeTravelHours: map['maxTimeTravelHours'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      resourceTags: (map['resourceTags'] as Map).cast<String, String>(),
      selfLink: map['selfLink'] as String,
      storageBillingModel: map['storageBillingModel'] as String,
    );
  }
}

