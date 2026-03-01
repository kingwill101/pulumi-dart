// ignore_for_file: unused_element, unnecessary_cast

import 'date_after_creation.dart';

/// Management policy action for blob version.
class ManagementPolicyVersion {
  /// The function to delete the blob version
  final DateAfterCreation? delete;
  /// The function to tier blob version to archive storage.
  final DateAfterCreation? tierToArchive;
  /// The function to tier blobs to cold storage.
  final DateAfterCreation? tierToCold;
  /// The function to tier blob version to cool storage.
  final DateAfterCreation? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final DateAfterCreation? tierToHot;

  /// Creates a new [ManagementPolicyVersion].
  /// [delete] The function to delete the blob version
  /// [tierToArchive] The function to tier blob version to archive storage.
  /// [tierToCold] The function to tier blobs to cold storage.
  /// [tierToCool] The function to tier blob version to cool storage.
  /// [tierToHot] The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  ManagementPolicyVersion({
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

  factory ManagementPolicyVersion.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyVersion(
      delete: map['delete'] == null ? null : DateAfterCreation.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      tierToArchive: map['tierToArchive'] == null ? null : DateAfterCreation.fromMap((map['tierToArchive'] as Map).cast<String, dynamic>()),
      tierToCold: map['tierToCold'] == null ? null : DateAfterCreation.fromMap((map['tierToCold'] as Map).cast<String, dynamic>()),
      tierToCool: map['tierToCool'] == null ? null : DateAfterCreation.fromMap((map['tierToCool'] as Map).cast<String, dynamic>()),
      tierToHot: map['tierToHot'] == null ? null : DateAfterCreation.fromMap((map['tierToHot'] as Map).cast<String, dynamic>()),
    );
  }
}

