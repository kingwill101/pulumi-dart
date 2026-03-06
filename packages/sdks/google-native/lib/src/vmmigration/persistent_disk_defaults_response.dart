// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'vm_attachment_details_response.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsResponse {
  /// A map of labels to associate with the Persistent Disk.
  final pulumi.Input<Map<String, String>> additionalLabels;
  /// Optional. The name of the Persistent Disk to create.
  final pulumi.Input<String> diskName;
  /// The disk type to use.
  final pulumi.Input<String> diskType;
  /// Optional. The encryption to apply to the disk.
  final pulumi.Input<EncryptionResponse> encryption;
  /// The ordinal number of the source VM disk.
  final pulumi.Input<int> sourceDiskNumber;
  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final pulumi.Input<VmAttachmentDetailsResponse> vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaultsResponse].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  const PersistentDiskDefaultsResponse({
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
      'encryption': pulumi.Input.mapInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': pulumi.Input.mapInputValue<VmAttachmentDetailsResponse, Map<String, dynamic>>(vmAttachmentDetails, (value) => value.toMap()),
    };
  }

  factory PersistentDiskDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaultsResponse(
      additionalLabels: pulumi.Input.fromValue((map['additionalLabels'] as Map).cast<String, String>()),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      encryption: pulumi.Input.fromValue(EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>())),
      sourceDiskNumber: pulumi.Input.fromValue(map['sourceDiskNumber'] as int),
      vmAttachmentDetails: pulumi.Input.fromValue(VmAttachmentDetailsResponse.fromMap((map['vmAttachmentDetails']! as Map).cast<String, dynamic>())),
    );
  }
}

