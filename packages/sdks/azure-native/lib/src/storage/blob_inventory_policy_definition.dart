// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_filter.dart';

/// An object that defines the blob inventory rule.
class BlobInventoryPolicyDefinition {
  /// An object that defines the filter set.
  final pulumi.Input<BlobInventoryPolicyFilter>? filters;
  /// This is a required field, it specifies the format for the inventory files.
  final pulumi.Input<String> format;
  /// This is a required field. This field specifies the scope of the inventory created either at the blob or container level.
  final pulumi.Input<String> objectType;
  /// This is a required field. This field is used to schedule an inventory formation.
  final pulumi.Input<String> schedule;
  /// This is a required field. This field specifies the fields and properties of the object to be included in the inventory. The Schema field value 'Name' is always required. The valid values for this field for the 'Blob' definition.objectType include 'Name, Creation-Time, Last-Modified, Content-Length, Content-MD5, BlobType, AccessTier, AccessTierChangeTime, AccessTierInferred, Tags, Expiry-Time, hdi_isfolder, Owner, Group, Permissions, Acl, Snapshot, VersionId, IsCurrentVersion, Metadata, LastAccessTime, Tags, Etag, ContentType, ContentEncoding, ContentLanguage, ContentCRC64, CacheControl, ContentDisposition, LeaseStatus, LeaseState, LeaseDuration, ServerEncrypted, Deleted, DeletionId, DeletedTime, RemainingRetentionDays, ImmutabilityPolicyUntilDate, ImmutabilityPolicyMode, LegalHold, CopyId, CopyStatus, CopySource, CopyProgress, CopyCompletionTime, CopyStatusDescription, CustomerProvidedKeySha256, RehydratePriority, ArchiveStatus, XmsBlobSequenceNumber, EncryptionScope, IncrementalCopy, TagCount'. For Blob object type schema field value 'DeletedTime' is applicable only for Hns enabled accounts. The valid values for 'Container' definition.objectType include 'Name, Last-Modified, Metadata, LeaseStatus, LeaseState, LeaseDuration, PublicAccess, HasImmutabilityPolicy, HasLegalHold, Etag, DefaultEncryptionScope, DenyEncryptionScopeOverride, ImmutableStorageWithVersioningEnabled, Deleted, Version, DeletedTime, RemainingRetentionDays'. Schema field values 'Expiry-Time, hdi_isfolder, Owner, Group, Permissions, Acl, DeletionId' are valid only for Hns enabled accounts.Schema field values 'Tags, TagCount' are only valid for Non-Hns accounts.
  final pulumi.Input<List<String>> schemaFields;

  /// Creates a new [BlobInventoryPolicyDefinition].
  /// [filters] An object that defines the filter set.
  /// [format] This is a required field, it specifies the format for the inventory files.
  /// [objectType] This is a required field. This field specifies the scope of the inventory created either at the blob or container level.
  /// [schedule] This is a required field. This field is used to schedule an inventory formation.
  /// [schemaFields] This is a required field. This field specifies the fields and properties of the object to be included in the inventory. The Schema field value 'Name' is always required. The valid values for this field for the 'Blob' definition.objectType include 'Name, Creation-Time, Last-Modified, Content-Length, Content-MD5, BlobType, AccessTier, AccessTierChangeTime, AccessTierInferred, Tags, Expiry-Time, hdi_isfolder, Owner, Group, Permissions, Acl, Snapshot, VersionId, IsCurrentVersion, Metadata, LastAccessTime, Tags, Etag, ContentType, ContentEncoding, ContentLanguage, ContentCRC64, CacheControl, ContentDisposition, LeaseStatus, LeaseState, LeaseDuration, ServerEncrypted, Deleted, DeletionId, DeletedTime, RemainingRetentionDays, ImmutabilityPolicyUntilDate, ImmutabilityPolicyMode, LegalHold, CopyId, CopyStatus, CopySource, CopyProgress, CopyCompletionTime, CopyStatusDescription, CustomerProvidedKeySha256, RehydratePriority, ArchiveStatus, XmsBlobSequenceNumber, EncryptionScope, IncrementalCopy, TagCount'. For Blob object type schema field value 'DeletedTime' is applicable only for Hns enabled accounts. The valid values for 'Container' definition.objectType include 'Name, Last-Modified, Metadata, LeaseStatus, LeaseState, LeaseDuration, PublicAccess, HasImmutabilityPolicy, HasLegalHold, Etag, DefaultEncryptionScope, DenyEncryptionScopeOverride, ImmutableStorageWithVersioningEnabled, Deleted, Version, DeletedTime, RemainingRetentionDays'. Schema field values 'Expiry-Time, hdi_isfolder, Owner, Group, Permissions, Acl, DeletionId' are valid only for Hns enabled accounts.Schema field values 'Tags, TagCount' are only valid for Non-Hns accounts.
  const BlobInventoryPolicyDefinition({
    this.filters,
    required this.format,
    required this.objectType,
    required this.schedule,
    required this.schemaFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<BlobInventoryPolicyFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'format': format,
      'objectType': objectType,
      'schedule': schedule,
      'schemaFields': schemaFields,
    };
  }

  factory BlobInventoryPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyDefinition(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlobInventoryPolicyFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      schemaFields: pulumi.Input.fromValue((map['schemaFields'] as List).cast<String>()),
    );
  }
}

