// ignore_for_file: unused_element, unnecessary_cast

import 'date_after_creation_response.dart';

/// Management policy action for blob version.
class ManagementPolicyVersionResponse {
  /// The function to delete the blob version
  final DateAfterCreationResponse? delete;
  /// The function to tier blob version to archive storage.
  final DateAfterCreationResponse? tierToArchive;
  /// The function to tier blobs to cold storage.
  final DateAfterCreationResponse? tierToCold;
  /// The function to tier blob version to cool storage.
  final DateAfterCreationResponse? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final DateAfterCreationResponse? tierToHot;

  /// Creates a new [ManagementPolicyVersionResponse].
  /// [delete] The function to delete the blob version
  /// [tierToArchive] The function to tier blob version to archive storage.
  /// [tierToCold] The function to tier blobs to cold storage.
  /// [tierToCool] The function to tier blob version to cool storage.
  /// [tierToHot] The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  ManagementPolicyVersionResponse({
    this.delete,
    this.tierToArchive,
    this.tierToCold,
    this.tierToCool,
    this.tierToHot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?delete == null ? null : delete!.toMap(),
      'tierToArchive': ?tierToArchive == null ? null : tierToArchive!.toMap(),
      'tierToCold': ?tierToCold == null ? null : tierToCold!.toMap(),
      'tierToCool': ?tierToCool == null ? null : tierToCool!.toMap(),
      'tierToHot': ?tierToHot == null ? null : tierToHot!.toMap(),
    };
  }

  factory ManagementPolicyVersionResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyVersionResponse(
      delete: map['delete'] == null ? null : DateAfterCreationResponse.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      tierToArchive: map['tierToArchive'] == null ? null : DateAfterCreationResponse.fromMap((map['tierToArchive'] as Map).cast<String, dynamic>()),
      tierToCold: map['tierToCold'] == null ? null : DateAfterCreationResponse.fromMap((map['tierToCold'] as Map).cast<String, dynamic>()),
      tierToCool: map['tierToCool'] == null ? null : DateAfterCreationResponse.fromMap((map['tierToCool'] as Map).cast<String, dynamic>()),
      tierToHot: map['tierToHot'] == null ? null : DateAfterCreationResponse.fromMap((map['tierToHot'] as Map).cast<String, dynamic>()),
    );
  }
}

