// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBoxSnapshotStats {
  /// Current storage requirements of the Snapshot in bytes.
  final int size;
  /// Size of the compressed file system contained in the Snapshot in bytes.
  final int sizeFilesystem;

  /// Creates a new [GetStorageBoxSnapshotStats].
  /// [size] Current storage requirements of the Snapshot in bytes.
  /// [sizeFilesystem] Size of the compressed file system contained in the Snapshot in bytes.
  GetStorageBoxSnapshotStats({
    required this.size,
    required this.sizeFilesystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
      'sizeFilesystem': sizeFilesystem,
    };
  }

  factory GetStorageBoxSnapshotStats.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotStats(
      size: map['size'] as int,
      sizeFilesystem: map['sizeFilesystem'] as int,
    );
  }
}

