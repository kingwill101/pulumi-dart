// ignore_for_file: unused_element, unnecessary_cast


class GetImageDataDisk {
  /// the URI in Azure storage of the blob used to create the image.
  final String blobUri;
  /// the caching mode for the Data Disk, such as `ReadWrite`, `ReadOnly`, or `None`.
  final String caching;
  /// the logical unit number of the data disk.
  final int lun;
  /// the ID of the Managed Disk used as the Data Disk Image.
  final String managedDiskId;
  /// the size of this Data Disk in GB.
  final int sizeGb;

  /// Creates a new [GetImageDataDisk].
  /// [blobUri] the URI in Azure storage of the blob used to create the image.
  /// [caching] the caching mode for the Data Disk, such as `ReadWrite`, `ReadOnly`, or `None`.
  /// [lun] the logical unit number of the data disk.
  /// [managedDiskId] the ID of the Managed Disk used as the Data Disk Image.
  /// [sizeGb] the size of this Data Disk in GB.
  GetImageDataDisk({
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

  factory GetImageDataDisk.fromMap(Map<String, dynamic> map) {
    return GetImageDataDisk(
      blobUri: map['blobUri'] as String,
      caching: map['caching'] as String,
      lun: map['lun'] as int,
      managedDiskId: map['managedDiskId'] as String,
      sizeGb: map['sizeGb'] as int,
    );
  }
}

