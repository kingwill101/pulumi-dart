// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_after_modification_response.dart';

/// Management policy action for base blob.
class ManagementPolicyBaseBlobResponse {
  /// The function to delete the blob
  final pulumi.Input<DateAfterModificationResponse>? delete;
  /// This property enables auto tiering of a blob from cool to hot on a blob access. This property requires tierToCool.daysAfterLastAccessTimeGreaterThan.
  final pulumi.Input<bool>? enableAutoTierToHotFromCool;
  /// The function to tier blobs to archive storage.
  final pulumi.Input<DateAfterModificationResponse>? tierToArchive;
  /// The function to tier blobs to cold storage.
  final pulumi.Input<DateAfterModificationResponse>? tierToCold;
  /// The function to tier blobs to cool storage.
  final pulumi.Input<DateAfterModificationResponse>? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final pulumi.Input<DateAfterModificationResponse>? tierToHot;

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
      'delete': ?pulumi.Input.mapOptionalInputValue<DateAfterModificationResponse, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'enableAutoTierToHotFromCool': ?enableAutoTierToHotFromCool,
      'tierToArchive': ?pulumi.Input.mapOptionalInputValue<DateAfterModificationResponse, Map<String, dynamic>>(tierToArchive, (value) => value.toMap()),
      'tierToCold': ?pulumi.Input.mapOptionalInputValue<DateAfterModificationResponse, Map<String, dynamic>>(tierToCold, (value) => value.toMap()),
      'tierToCool': ?pulumi.Input.mapOptionalInputValue<DateAfterModificationResponse, Map<String, dynamic>>(tierToCool, (value) => value.toMap()),
      'tierToHot': ?pulumi.Input.mapOptionalInputValue<DateAfterModificationResponse, Map<String, dynamic>>(tierToHot, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyBaseBlobResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyBaseBlobResponse(
      delete: map['delete'] == null ? null : (DateAfterModificationResponse.fromMap((map['delete'] as Map).cast<String, dynamic>())).input(),
      enableAutoTierToHotFromCool: map['enableAutoTierToHotFromCool'] == null ? null : (map['enableAutoTierToHotFromCool'] as bool).input(),
      tierToArchive: map['tierToArchive'] == null ? null : (DateAfterModificationResponse.fromMap((map['tierToArchive'] as Map).cast<String, dynamic>())).input(),
      tierToCold: map['tierToCold'] == null ? null : (DateAfterModificationResponse.fromMap((map['tierToCold'] as Map).cast<String, dynamic>())).input(),
      tierToCool: map['tierToCool'] == null ? null : (DateAfterModificationResponse.fromMap((map['tierToCool'] as Map).cast<String, dynamic>())).input(),
      tierToHot: map['tierToHot'] == null ? null : (DateAfterModificationResponse.fromMap((map['tierToHot'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

