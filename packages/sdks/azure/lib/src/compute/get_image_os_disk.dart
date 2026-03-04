// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageOsDisk {
  /// the URI in Azure storage of the blob used to create the image.
  final pulumi.Input<String> blobUri;

  /// the caching mode for the Data Disk, such as `ReadWrite`, `ReadOnly`, or `None`.
  final pulumi.Input<String> caching;

  /// the ID of the Managed Disk used as the Data Disk Image.
  final pulumi.Input<String> managedDiskId;

  /// the State of the OS used in the Image, such as `Generalized`.
  final pulumi.Input<String> osState;

  /// the type of Operating System used on the OS Disk. such as `Linux` or `Windows`.
  final pulumi.Input<String> osType;

  /// the size of this Data Disk in GB.
  final pulumi.Input<int> sizeGb;

  /// Creates a new [GetImageOsDisk].
  /// [blobUri] the URI in Azure storage of the blob used to create the image.
  /// [caching] the caching mode for the Data Disk, such as `ReadWrite`, `ReadOnly`, or `None`.
  /// [managedDiskId] the ID of the Managed Disk used as the Data Disk Image.
  /// [osState] the State of the OS used in the Image, such as `Generalized`.
  /// [osType] the type of Operating System used on the OS Disk. such as `Linux` or `Windows`.
  /// [sizeGb] the size of this Data Disk in GB.
  GetImageOsDisk({
    required this.blobUri,
    required this.caching,
    required this.managedDiskId,
    required this.osState,
    required this.osType,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': blobUri,
      'caching': caching,
      'managedDiskId': managedDiskId,
      'osState': osState,
      'osType': osType,
      'sizeGb': sizeGb,
    };
  }

  factory GetImageOsDisk.fromMap(Map<String, dynamic> map) {
    return GetImageOsDisk(
      blobUri: pulumi.Input.fromValue(map['blobUri'] as String),
      caching: pulumi.Input.fromValue(map['caching'] as String),
      managedDiskId: pulumi.Input.fromValue(map['managedDiskId'] as String),
      osState: pulumi.Input.fromValue(map['osState'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as int),
    );
  }
}
