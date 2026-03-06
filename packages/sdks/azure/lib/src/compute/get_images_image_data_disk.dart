// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImageDataDisk {
  /// the URI in Azure storage of the blob used to create the image.
  final pulumi.Input<String> blobUri;
  /// the caching mode for the Data Disk.
  final pulumi.Input<String> caching;
  /// the logical unit number of the data disk.
  final pulumi.Input<int> lun;
  /// the ID of the Managed Disk used as the Data Disk Image.
  final pulumi.Input<String> managedDiskId;
  /// the size of this Data Disk in GB.
  final pulumi.Input<int> sizeGb;

  /// Creates a new [GetImagesImageDataDisk].
  /// [blobUri] the URI in Azure storage of the blob used to create the image.
  /// [caching] the caching mode for the Data Disk.
  /// [lun] the logical unit number of the data disk.
  /// [managedDiskId] the ID of the Managed Disk used as the Data Disk Image.
  /// [sizeGb] the size of this Data Disk in GB.
  const GetImagesImageDataDisk({
    required this.blobUri,
    required this.caching,
    required this.lun,
    required this.managedDiskId,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': blobUri,
      'caching': caching,
      'lun': lun,
      'managedDiskId': managedDiskId,
      'sizeGb': sizeGb,
    };
  }

  factory GetImagesImageDataDisk.fromMap(Map<String, dynamic> map) {
    return GetImagesImageDataDisk(
      blobUri: pulumi.Input.fromValue(map['blobUri'] as String),
      caching: pulumi.Input.fromValue(map['caching'] as String),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDiskId: pulumi.Input.fromValue(map['managedDiskId'] as String),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as int),
    );
  }
}

