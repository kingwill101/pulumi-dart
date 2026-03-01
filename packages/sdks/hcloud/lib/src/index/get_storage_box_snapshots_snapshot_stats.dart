// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBoxSnapshotsSnapshotStats {
  /// Current storage requirements of the Snapshot in bytes.
  final int size;
  /// Size of the compressed file system contained in the Snapshot in bytes.
  final int sizeFilesystem;

  /// Creates a new [GetStorageBoxSnapshotsSnapshotStats].
  /// [size] Current storage requirements of the Snapshot in bytes.
  /// [sizeFilesystem] Size of the compressed file system contained in the Snapshot in bytes.
  GetStorageBoxSnapshotsSnapshotStats({
    required this.size,
    required this.sizeFilesystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
      'sizeFilesystem': sizeFilesystem,
    };
  }

  factory GetStorageBoxSnapshotsSnapshotStats.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotsSnapshotStats(
      size: map['size'] as int,
      sizeFilesystem: map['sizeFilesystem'] as int,
    );
  }
}

