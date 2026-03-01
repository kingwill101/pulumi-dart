// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final String size;

  /// Creates a new [DomainOsNvRamSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  DomainOsNvRamSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainOsNvRamSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReadahead(
      size: map['size'] as String,
    );
  }
}

