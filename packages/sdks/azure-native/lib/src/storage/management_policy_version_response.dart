// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_after_creation_response.dart';

/// Management policy action for blob version.
class ManagementPolicyVersionResponse {
  /// The function to delete the blob version
  final pulumi.Input<DateAfterCreationResponse>? delete;
  /// The function to tier blob version to archive storage.
  final pulumi.Input<DateAfterCreationResponse>? tierToArchive;
  /// The function to tier blobs to cold storage.
  final pulumi.Input<DateAfterCreationResponse>? tierToCold;
  /// The function to tier blob version to cool storage.
  final pulumi.Input<DateAfterCreationResponse>? tierToCool;
  /// The function to tier blobs to hot storage. This action can only be used with Premium Block Blob Storage Accounts
  final pulumi.Input<DateAfterCreationResponse>? tierToHot;

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
      'delete': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'tierToArchive': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToArchive, (value) => value.toMap()),
      'tierToCold': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToCold, (value) => value.toMap()),
      'tierToCool': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToCool, (value) => value.toMap()),
      'tierToHot': ?pulumi.Input.mapOptionalInputValue<DateAfterCreationResponse, Map<String, dynamic>>(tierToHot, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyVersionResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyVersionResponse(
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterCreationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToArchive: (() { final guardedValue = map['tierToArchive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterCreationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToCold: (() { final guardedValue = map['tierToCold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterCreationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToCool: (() { final guardedValue = map['tierToCool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterCreationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tierToHot: (() { final guardedValue = map['tierToHot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateAfterCreationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

