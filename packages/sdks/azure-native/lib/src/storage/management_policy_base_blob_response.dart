// ignore_for_file: unused_element, unnecessary_cast

import 'date_after_modification_response.dart';

/// Management policy action for base blob.
class ManagementPolicyBaseBlobResponse {
  /// The function to delete the blob
  final DateAfterModificationResponse? delete;
  /// This property enables auto tiering of a blob from cool to hot on a blob access. This property requires tierToCool.daysAfterLastAccessTimeGreaterThan.
  final bool? enableAutoTierToHotFromCool;
  /// The function to tier blobs to archive storage.
  final DateAfterModificationResponse? tierToArchive;
  /// The function to tier blobs to cold storage.
  final DateAfterModificationResponse? tierToCold;
  /// The function to tier blobs to cool storage.
  final DateAfterModificationResponse? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final DateAfterModificationResponse? tierToHot;

  /// Creates a new [ManagementPolicyBaseBlobResponse].
  /// [delete] The function to delete the blob
  /// [enableAutoTierToHotFromCool] This property enables auto tiering of a blob from cool to hot on a blob access. This property requires tierToCool.daysAfterLastAccessTimeGreaterThan.
  /// [tierToArchive] The function to tier blobs to archive storage.
  /// [tierToCold] The function to tier blobs to cold storage.
  /// [tierToCool] The function to tier blobs to cool storage.
  /// [tierToHot] The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  ManagementPolicyBaseBlobResponse({
    this.delete,
    this.enableAutoTierToHotFromCool,
    this.tierToArchive,
    this.tierToCold,
    this.tierToCool,
    this.tierToHot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?delete == null ? null : delete!.toMap(),
      'enableAutoTierToHotFromCool': ?enableAutoTierToHotFromCool,
      'tierToArchive': ?tierToArchive == null ? null : tierToArchive!.toMap(),
      'tierToCold': ?tierToCold == null ? null : tierToCold!.toMap(),
      'tierToCool': ?tierToCool == null ? null : tierToCool!.toMap(),
      'tierToHot': ?tierToHot == null ? null : tierToHot!.toMap(),
    };
  }

  factory ManagementPolicyBaseBlobResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyBaseBlobResponse(
      delete: map['delete'] == null ? null : DateAfterModificationResponse.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      enableAutoTierToHotFromCool: map['enableAutoTierToHotFromCool'] == null ? null : map['enableAutoTierToHotFromCool'] as bool,
      tierToArchive: map['tierToArchive'] == null ? null : DateAfterModificationResponse.fromMap((map['tierToArchive'] as Map).cast<String, dynamic>()),
      tierToCold: map['tierToCold'] == null ? null : DateAfterModificationResponse.fromMap((map['tierToCold'] as Map).cast<String, dynamic>()),
      tierToCool: map['tierToCool'] == null ? null : DateAfterModificationResponse.fromMap((map['tierToCool'] as Map).cast<String, dynamic>()),
      tierToHot: map['tierToHot'] == null ? null : DateAfterModificationResponse.fromMap((map['tierToHot'] as Map).cast<String, dynamic>()),
    );
  }
}

