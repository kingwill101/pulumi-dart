// ignore_for_file: unused_element, unnecessary_cast


class GetImageOsDisk {
  /// the URI in Azure storage of the blob used to create the image.
  final String blobUri;
  /// the caching mode for the Data Disk, such as `ReadWrite`, `ReadOnly`, or `None`.
  final String caching;
  /// the ID of the Managed Disk used as the Data Disk Image.
  final String managedDiskId;
  /// the State of the OS used in the Image, such as `Generalized`.
  final String osState;
  /// the type of Operating System used on the OS Disk. such as `Linux` or `Windows`.
  final String osType;
  /// the size of this Data Disk in GB.
  final int sizeGb;

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
      blobUri: map['blobUri'] as String,
      caching: map['caching'] as String,
      managedDiskId: map['managedDiskId'] as String,
      osState: map['osState'] as String,
      osType: map['osType'] as String,
      sizeGb: map['sizeGb'] as int,
    );
  }
}

