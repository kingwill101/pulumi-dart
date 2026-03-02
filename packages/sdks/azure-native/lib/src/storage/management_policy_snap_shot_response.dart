// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_after_creation_response.dart';

/// Management policy action for snapshot.
class ManagementPolicySnapShotResponse {
  /// The function to delete the blob snapshot
  final pulumi.Input<DateAfterCreationResponse>? delete;
  /// The function to tier blob snapshot to archive storage.
  final pulumi.Input<DateAfterCreationResponse>? tierToArchive;
  /// The function to tier blobs to cold storage.
  final pulumi.Input<DateAfterCreationResponse>? tierToCold;
  /// The function to tier blob snapshot to cool storage.
  final pulumi.Input<DateAfterCreationResponse>? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final pulumi.Input<DateAfterCreationResponse>? tierToHot;

  /// Creates a new [ManagementPolicySnapShotResponse].
  /// [delete] The function to delete the blob snapshot
  /// [tierToArchive] The function to tier blob snapshot to archive storage.
  /// [tierToCold] The function to tier blobs to cold storage.
  /// [tierToCool] The function to tier blob snapshot to cool storage.
  /// [tierToHot] The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  ManagementPolicySnapShotResponse({
    this.delete,
    this.tierToArchive,
    this.tierToCold,
    this.tierToCool,
    this.tierToHot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'tierToArchive': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToArchive, (value) => value.toMap()),
      'tierToCold': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToCold, (value) => value.toMap()),
      'tierToCool': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToCool, (value) => value.toMap()),
      'tierToHot': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToHot, (value) => value.toMap()),
    };
  }

  factory ManagementPolicySnapShotResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicySnapShotResponse(
      delete: map['delete'] == null ? null : (DateAfterCreationResponse.fromMap((map['delete'] as Map).cast<String, dynamic>())).input(),
      tierToArchive: map['tierToArchive'] == null ? null : (DateAfterCreationResponse.fromMap((map['tierToArchive'] as Map).cast<String, dynamic>())).input(),
      tierToCold: map['tierToCold'] == null ? null : (DateAfterCreationResponse.fromMap((map['tierToCold'] as Map).cast<String, dynamic>())).input(),
      tierToCool: map['tierToCool'] == null ? null : (DateAfterCreationResponse.fromMap((map['tierToCool'] as Map).cast<String, dynamic>())).input(),
      tierToHot: map['tierToHot'] == null ? null : (DateAfterCreationResponse.fromMap((map['tierToHot'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

