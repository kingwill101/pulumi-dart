// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'persistent_disk_defaults_disk_type.dart';
import 'vm_attachment_details.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaults {
  /// A map of labels to associate with the Persistent Disk.
  final pulumi.Input<Map<String, String>>? additionalLabels;
  /// Optional. The name of the Persistent Disk to create.
  final pulumi.Input<String>? diskName;
  /// The disk type to use.
  final pulumi.Input<PersistentDiskDefaultsDiskType>? diskType;
  /// Optional. The encryption to apply to the disk.
  final pulumi.Input<Encryption>? encryption;
  /// The ordinal number of the source VM disk.
  final pulumi.Input<int> sourceDiskNumber;
  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final pulumi.Input<VmAttachmentDetails>? vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaults].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  const PersistentDiskDefaults({
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
      'diskType': ?pulumi.Input.mapOptionalInputValue<PersistentDiskDefaultsDiskType, String>(diskType, (value) => value.wireValue),
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': ?pulumi.Input.mapOptionalInputValue<VmAttachmentDetails, Map<String, dynamic>>(vmAttachmentDetails, (value) => value.toMap()),
    };
  }

  factory PersistentDiskDefaults.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaults(
      additionalLabels: (() { final guardedValue = map['additionalLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersistentDiskDefaultsDiskType.fromValue(guardedValue as String)); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDiskNumber: pulumi.Input.fromValue(map['sourceDiskNumber'] as int),
      vmAttachmentDetails: (() { final guardedValue = map['vmAttachmentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmAttachmentDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
