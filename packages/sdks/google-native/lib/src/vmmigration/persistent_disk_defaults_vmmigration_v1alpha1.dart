// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_vmmigration_v1alpha1.dart';
import 'persistent_disk_defaults_disk_type_vmmigration_v1alpha1.dart';
import 'vm_attachment_details_vmmigration_v1alpha1.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsVmmigrationV1alpha1 {
  /// A map of labels to associate with the Persistent Disk.
  final pulumi.Input<Map<String, String>>? additionalLabels;
  /// Optional. The name of the Persistent Disk to create.
  final pulumi.Input<String>? diskName;
  /// The disk type to use.
  final pulumi.Input<PersistentDiskDefaultsDiskTypeVmmigrationV1alpha1>? diskType;
  /// Optional. The encryption to apply to the disk.
  final pulumi.Input<EncryptionVmmigrationV1alpha1>? encryption;
  /// The ordinal number of the source VM disk.
  final pulumi.Input<int> sourceDiskNumber;
  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final pulumi.Input<VmAttachmentDetailsVmmigrationV1alpha1>? vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaultsVmmigrationV1alpha1].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  PersistentDiskDefaultsVmmigrationV1alpha1({
    this.additionalLabels,
    this.diskName,
    this.diskType,
    this.encryption,
    required this.sourceDiskNumber,
    this.vmAttachmentDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLabels': ?additionalLabels,
      'diskName': ?diskName,
      'diskType': ?pulumi.Input.mapOptionalInputValue<PersistentDiskDefaultsDiskTypeVmmigrationV1alpha1, String>(diskType, (value) => value.wireValue),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': ?pulumi.Input.mapOptionalInputValue<VmAttachmentDetailsVmmigrationV1alpha1, Map<String, dynamic>>(vmAttachmentDetails, (value) => value.toMap()),
    };
  }

  factory PersistentDiskDefaultsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaultsVmmigrationV1alpha1(
      additionalLabels: (() { final guardedValue = map['additionalLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersistentDiskDefaultsDiskTypeVmmigrationV1alpha1.fromValue(guardedValue as String)); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDiskNumber: pulumi.Input.fromValue(map['sourceDiskNumber'] as int),
      vmAttachmentDetails: (() { final guardedValue = map['vmAttachmentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmAttachmentDetailsVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

