// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemBinaryThreadPool {
  /// Specifies the number of threads in the thread pool for the binary filesystem.
  final double? size;

  /// Creates a new [DomainDevicesFilesystemBinaryThreadPool].
  /// [size] Specifies the number of threads in the thread pool for the binary filesystem.
  DomainDevicesFilesystemBinaryThreadPool({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory DomainDevicesFilesystemBinaryThreadPool.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryThreadPool(
      size: map['size'] == null ? null : map['size'] as double,
    );
  }
}

