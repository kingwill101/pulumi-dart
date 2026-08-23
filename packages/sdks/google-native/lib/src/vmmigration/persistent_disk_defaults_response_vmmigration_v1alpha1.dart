// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response_vmmigration_v1alpha1.dart';
import 'vm_attachment_details_response_vmmigration_v1alpha1.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsResponseVmmigrationV1alpha1 {
  /// A map of labels to associate with the Persistent Disk.
  final pulumi.Input<Map<String, String>> additionalLabels;
  /// Optional. The name of the Persistent Disk to create.
  final pulumi.Input<String> diskName;
  /// The disk type to use.
  final pulumi.Input<String> diskType;
  /// Optional. The encryption to apply to the disk.
  final pulumi.Input<EncryptionResponseVmmigrationV1alpha1> encryption;
  /// The ordinal number of the source VM disk.
  final pulumi.Input<int> sourceDiskNumber;
  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final pulumi.Input<VmAttachmentDetailsResponseVmmigrationV1alpha1> vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaultsResponseVmmigrationV1alpha1].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  const PersistentDiskDefaultsResponseVmmigrationV1alpha1({
    required this.additionalLabels,
    required this.diskName,
    required this.diskType,
    required this.encryption,
    required this.sourceDiskNumber,
    required this.vmAttachmentDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLabels': additionalLabels,
      'diskName': diskName,
      'diskType': diskType,
      'encryption': pulumi.Input.mapInputValue<EncryptionResponseVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': pulumi.Input.mapInputValue<VmAttachmentDetailsResponseVmmigrationV1alpha1, Map<String, dynamic>>(vmAttachmentDetails, (value) => value.toMap()),
    };
  }

  factory PersistentDiskDefaultsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaultsResponseVmmigrationV1alpha1(
      additionalLabels: pulumi.Input.fromValue((map['additionalLabels'] as Map).cast<String, String>()),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      encryption: pulumi.Input.fromValue(EncryptionResponseVmmigrationV1alpha1.fromMap((map['encryption']! as Map).cast<String, dynamic>())),
      sourceDiskNumber: pulumi.Input.fromValue(map['sourceDiskNumber'] as int),
      vmAttachmentDetails: pulumi.Input.fromValue(VmAttachmentDetailsResponseVmmigrationV1alpha1.fromMap((map['vmAttachmentDetails']! as Map).cast<String, dynamic>())),
    );
  }
}
