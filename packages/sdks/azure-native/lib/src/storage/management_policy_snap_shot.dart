// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_after_creation.dart';

/// Management policy action for snapshot.
class ManagementPolicySnapShot {
  /// The function to delete the blob snapshot
  final pulumi.Input<DateAfterCreation>? delete;
  /// The function to tier blob snapshot to archive storage.
  final pulumi.Input<DateAfterCreation>? tierToArchive;
  /// The function to tier blobs to cold storage.
  final pulumi.Input<DateAfterCreation>? tierToCold;
  /// The function to tier blob snapshot to cool storage.
  final pulumi.Input<DateAfterCreation>? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final pulumi.Input<DateAfterCreation>? tierToHot;

  /// Creates a new [ManagementPolicySnapShot].
  /// [delete] The function to delete the blob snapshot
  /// [tierToArchive] The function to tier blob snapshot to archive storage.
  /// [tierToCold] The function to tier blobs to cold storage.
  /// [tierToCool] The function to tier blob snapshot to cool storage.
  /// [tierToHot] The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  ManagementPolicySnapShot({
    this.delete,
    this.tierToArchive,
    this.tierToCold,
    this.tierToCool,
    this.tierToHot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?pulumi.Input.mapOptionalInputValue<DateAfterCreation, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'tierToArchive': ?pulumi.Input.mapOptionalInputValue<DateAfterCreation, Map<String, dynamic>>(tierToArchive, (value) => value.toMap()),
      'tierToCold': ?pulumi.Input.mapOptionalInputValue<DateAfterCreation, Map<String, dynamic>>(tierToCold, (value) => value.toMap()),
      'tierToCool': ?pulumi.Input.mapOptionalInputValue<DateAfterCreation, Map<String, dynamic>>(tierToCool, (value) => value.toMap()),
      'tierToHot': ?pulumi.Input.mapOptionalInputValue<DateAfterCreation, Map<String, dynamic>>(tierToHot, (value) => value.toMap()),
    };
  }

  factory ManagementPolicySnapShot.fromMap(Map<String, dynamic> map) {
    return ManagementPolicySnapShot(
      delete: map['delete'] == null ? null : (DateAfterCreation.fromMap((map['delete'] as Map).cast<String, dynamic>())).input(),
      tierToArchive: map['tierToArchive'] == null ? null : (DateAfterCreation.fromMap((map['tierToArchive'] as Map).cast<String, dynamic>())).input(),
      tierToCold: map['tierToCold'] == null ? null : (DateAfterCreation.fromMap((map['tierToCold'] as Map).cast<String, dynamic>())).input(),
      tierToCool: map['tierToCool'] == null ? null : (DateAfterCreation.fromMap((map['tierToCool'] as Map).cast<String, dynamic>())).input(),
      tierToHot: map['tierToHot'] == null ? null : (DateAfterCreation.fromMap((map['tierToHot'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

