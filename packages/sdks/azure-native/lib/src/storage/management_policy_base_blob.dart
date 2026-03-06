// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_after_modification.dart';

/// Management policy action for base blob.
class ManagementPolicyBaseBlob {
  /// The function to delete the blob
  final pulumi.Input<DateAfterModification>? delete;
  /// This property enables auto tiering of a blob from cool to hot on a blob access. This property requires tierToCool.daysAfterLastAccessTimeGreaterThan.
  final pulumi.Input<bool>? enableAutoTierToHotFromCool;
  /// The function to tier blobs to archive storage.
  final pulumi.Input<DateAfterModification>? tierToArchive;
  /// The function to tier blobs to cold storage.
  final pulumi.Input<DateAfterModification>? tierToCold;
  /// The function to tier blobs to cool storage.
  final pulumi.Input<DateAfterModification>? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final pulumi.Input<DateAfterModification>? tierToHot;

  /// Creates a new [ManagementPolicyBaseBlob].
  /// [delete] The function to delete the blob
  /// [enableAutoTierToHotFromCool] This property enables auto tiering of a blob from cool to hot on a blob access. This property requires tierToCool.daysAfterLastAccessTimeGreaterThan.
  /// [tierToArchive] The function to tier blobs to archive storage.
  /// [tierToCold] The function to tier blobs to cold storage.
  /// [tierToCool] The function to tier blobs to cool storage.
  /// [tierToHot] The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  const ManagementPolicyBaseBlob({
    this.delete,
    this.enableAutoTierToHotFromCool,
    this.tierToArchive,
    this.tierToCold,
    this.tierToCool,
    this.tierToHot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?pulumi.Input.mapOptionalInputValue<DateAfterModification, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'enableAutoTierToHotFromCool': ?enableAutoTierToHotFromCool,
      'tierToArchive': ?pulumi.Input.mapOptionalInputValue<DateAfterModification, Map<String, dynamic>>(tierToArchive, (value) => value.toMap()),
      'tierToCold': ?pulumi.Input.mapOptionalInputValue<DateAfterModification, Map<String, dynamic>>(tierToCold, (value) => value.toMap()),
      'tierToCool': ?pulumi.Input.mapOptionalInputValue<DateAfterModification, Map<String, dynamic>>(tierToCool, (value) => value.toMap()),
      'tierToHot': ?pulumi.Input.mapOptionalInputValue<DateAfterModification, Map<String, dynamic>>(tierToHot, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyBaseBlob.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyBaseBlob(
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterModification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAutoTierToHotFromCool: (() { final guardedValue = map['enableAutoTierToHotFromCool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tierToArchive: (() { final guardedValue = map['tierToArchive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterModification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToCold: (() { final guardedValue = map['tierToCold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterModification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToCool: (() { final guardedValue = map['tierToCool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterModification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToHot: (() { final guardedValue = map['tierToHot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterModification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

