// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_access.dart';
import 'get_dataset_default_encryption_configuration.dart';
import 'get_dataset_external_catalog_dataset_option.dart';
import 'get_dataset_external_dataset_reference.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  final List<GetDatasetAccess>? accesses;
  final int? creationTime;
  final String? datasetId;
  final String? defaultCollation;
  final List<GetDatasetDefaultEncryptionConfiguration>? defaultEncryptionConfigurations;
  final int? defaultPartitionExpirationMs;
  final int? defaultTableExpirationMs;
  final bool? deleteContentsOnDestroy;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? etag;
  final List<GetDatasetExternalCatalogDatasetOption>? externalCatalogDatasetOptions;
  final List<GetDatasetExternalDatasetReference>? externalDatasetReferences;
  final String? friendlyName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? isCaseInsensitive;
  final Map<String, String>? labels;
  final int? lastModifiedTime;
  final String? location;
  final String? maxTimeTravelHours;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final Map<String, String>? resourceTags;
  final String? selfLink;
  final String? storageBillingModel;

  /// Creates a new [GetDatasetResult].
  /// [accesses] Optional.
  /// [creationTime] Optional.
  /// [datasetId] Optional.
  /// [defaultCollation] Optional.
  /// [defaultEncryptionConfigurations] Optional.
  /// [defaultPartitionExpirationMs] Optional.
  /// [defaultTableExpirationMs] Optional.
  /// [deleteContentsOnDestroy] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [etag] Optional.
  /// [externalCatalogDatasetOptions] Optional.
  /// [externalDatasetReferences] Optional.
  /// [friendlyName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isCaseInsensitive] Optional.
  /// [labels] Optional.
  /// [lastModifiedTime] Optional.
  /// [location] Optional.
  /// [maxTimeTravelHours] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [resourceTags] Optional.
  /// [selfLink] Optional.
  /// [storageBillingModel] Optional.
  const GetDatasetResult({
    this.accesses,
    this.creationTime,
    this.datasetId,
    this.defaultCollation,
    this.defaultEncryptionConfigurations,
    this.defaultPartitionExpirationMs,
    this.defaultTableExpirationMs,
    this.deleteContentsOnDestroy,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.externalCatalogDatasetOptions,
    this.externalDatasetReferences,
    this.friendlyName,
    this.id,
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
      'accesses': ?(() { final guardedValue = accesses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatasetAccess, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'creationTime': ?creationTime,
      'datasetId': ?datasetId,
      'defaultCollation': ?defaultCollation,
      'defaultEncryptionConfigurations': ?(() { final guardedValue = defaultEncryptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatasetDefaultEncryptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultPartitionExpirationMs': ?defaultPartitionExpirationMs,
      'defaultTableExpirationMs': ?defaultTableExpirationMs,
      'deleteContentsOnDestroy': ?deleteContentsOnDestroy,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'externalCatalogDatasetOptions': ?(() { final guardedValue = externalCatalogDatasetOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatasetExternalCatalogDatasetOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'externalDatasetReferences': ?(() { final guardedValue = externalDatasetReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatasetExternalDatasetReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'friendlyName': ?friendlyName,
      'id': ?id,
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

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      accesses: (() { final guardedValue = map['accesses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatasetAccess>(guardedValue, (value) => GetDatasetAccess.fromMap((value as Map).cast<String, dynamic>())); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultCollation: (() { final guardedValue = map['defaultCollation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultEncryptionConfigurations: (() { final guardedValue = map['defaultEncryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatasetDefaultEncryptionConfiguration>(guardedValue, (value) => GetDatasetDefaultEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultPartitionExpirationMs: (() { final guardedValue = map['defaultPartitionExpirationMs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultTableExpirationMs: (() { final guardedValue = map['defaultTableExpirationMs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      deleteContentsOnDestroy: (() { final guardedValue = map['deleteContentsOnDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalCatalogDatasetOptions: (() { final guardedValue = map['externalCatalogDatasetOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatasetExternalCatalogDatasetOption>(guardedValue, (value) => GetDatasetExternalCatalogDatasetOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      externalDatasetReferences: (() { final guardedValue = map['externalDatasetReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatasetExternalDatasetReference>(guardedValue, (value) => GetDatasetExternalDatasetReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isCaseInsensitive: (() { final guardedValue = map['isCaseInsensitive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxTimeTravelHours: (() { final guardedValue = map['maxTimeTravelHours']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageBillingModel: (() { final guardedValue = map['storageBillingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
