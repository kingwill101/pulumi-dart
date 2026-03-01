// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceSlicesSlice {
  /// Sets the offset for the specific slice in the mirror source configuration.
  final double offset;
  /// Configures the size of the slice in the mirror source.
  final double size;
  /// Specifies the type of the slice in the mirror source configuration.
  final String type;

  /// Creates a new [DomainOsNvRamSourceSlicesSlice].
  /// [offset] Sets the offset for the specific slice in the mirror source configuration.
  /// [size] Configures the size of the slice in the mirror source.
  /// [type] Specifies the type of the slice in the mirror source configuration.
  DomainOsNvRamSourceSlicesSlice({
    required this.offset,
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': offset,
      'size': size,
      'type': type,
    };
  }

  factory DomainOsNvRamSourceSlicesSlice.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceSlicesSlice(
      offset: map['offset'] as double,
      size: map['size'] as double,
      type: map['type'] as String,
    );
  }
}

