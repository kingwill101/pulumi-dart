// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImageOsDisk {
  /// the URI in Azure storage of the blob used to create the image.
  final pulumi.Input<String> blobUri;
  /// the caching mode for the Data Disk.
  final pulumi.Input<String> caching;
  /// the ID of the Disk Encryption Set used to encrypt this image.
  final pulumi.Input<String> diskEncryptionSetId;
  /// the ID of the Managed Disk used as the Data Disk Image.
  final pulumi.Input<String> managedDiskId;
  /// the State of the OS used in the Image.
  final pulumi.Input<String> osState;
  /// the type of Operating System used on the OS Disk.
  final pulumi.Input<String> osType;
  /// the size of this Data Disk in GB.
  final pulumi.Input<int> sizeGb;

  /// Creates a new [GetImagesImageOsDisk].
  /// [blobUri] the URI in Azure storage of the blob used to create the image.
  /// [caching] the caching mode for the Data Disk.
  /// [diskEncryptionSetId] the ID of the Disk Encryption Set used to encrypt this image.
  /// [managedDiskId] the ID of the Managed Disk used as the Data Disk Image.
  /// [osState] the State of the OS used in the Image.
  /// [osType] the type of Operating System used on the OS Disk.
  /// [sizeGb] the size of this Data Disk in GB.
  GetImagesImageOsDisk({
    required this.blobUri,
    required this.caching,
    required this.diskEncryptionSetId,
    required this.managedDiskId,
    required this.osState,
    required this.osType,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': blobUri,
      'caching': caching,
      'diskEncryptionSetId': diskEncryptionSetId,
      'managedDiskId': managedDiskId,
      'osState': osState,
      'osType': osType,
      'sizeGb': sizeGb,
    };
  }

  factory GetImagesImageOsDisk.fromMap(Map<String, dynamic> map) {
    return GetImagesImageOsDisk(
      blobUri: (map['blobUri'] as String).input(),
      caching: (map['caching'] as String).input(),
      diskEncryptionSetId: (map['diskEncryptionSetId'] as String).input(),
      managedDiskId: (map['managedDiskId'] as String).input(),
      osState: (map['osState'] as String).input(),
      osType: (map['osType'] as String).input(),
      sizeGb: (map['sizeGb'] as int).input(),
    );
  }
}

