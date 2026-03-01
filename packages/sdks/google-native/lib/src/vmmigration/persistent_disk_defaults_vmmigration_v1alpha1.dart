// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_vmmigration_v1alpha1.dart';
import 'persistent_disk_defaults_disk_type_vmmigration_v1alpha1.dart';
import 'vm_attachment_details_vmmigration_v1alpha1.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsVmmigrationV1alpha1 {
  /// A map of labels to associate with the Persistent Disk.
  final Map<String, String>? additionalLabels;
  /// Optional. The name of the Persistent Disk to create.
  final String? diskName;
  /// The disk type to use.
  final PersistentDiskDefaultsDiskTypeVmmigrationV1alpha1? diskType;
  /// Optional. The encryption to apply to the disk.
  final EncryptionVmmigrationV1alpha1? encryption;
  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;
  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final VmAttachmentDetailsVmmigrationV1alpha1? vmAttachmentDetails;

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
      'diskType': ?diskType == null ? null : diskType!.value,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': ?vmAttachmentDetails == null ? null : vmAttachmentDetails!.toMap(),
    };
  }

  factory PersistentDiskDefaultsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaultsVmmigrationV1alpha1(
      additionalLabels: map['additionalLabels'] == null ? null : (map['additionalLabels'] as Map).cast<String, String>(),
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskType: map['diskType'] == null ? null : PersistentDiskDefaultsDiskTypeVmmigrationV1alpha1.fromValue(map['diskType'] as String),
      encryption: map['encryption'] == null ? null : EncryptionVmmigrationV1alpha1.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      sourceDiskNumber: map['sourceDiskNumber'] as int,
      vmAttachmentDetails: map['vmAttachmentDetails'] == null ? null : VmAttachmentDetailsVmmigrationV1alpha1.fromMap((map['vmAttachmentDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

