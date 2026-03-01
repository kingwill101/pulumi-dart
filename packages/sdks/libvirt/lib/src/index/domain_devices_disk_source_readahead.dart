// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final String size;

  /// Creates a new [DomainDevicesDiskSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  DomainDevicesDiskSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReadahead(
      size: map['size'] as String,
    );
  }
}

