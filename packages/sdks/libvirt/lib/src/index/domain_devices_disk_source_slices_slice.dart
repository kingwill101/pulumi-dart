// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceSlicesSlice {
  /// Sets the offset for the specific slice in the mirror source configuration.
  final double offset;
  /// Configures the size of the slice in the mirror source.
  final double size;
  /// Specifies the type of the slice in the mirror source configuration.
  final String type;

  /// Creates a new [DomainDevicesDiskSourceSlicesSlice].
  /// [offset] Sets the offset for the specific slice in the mirror source configuration.
  /// [size] Configures the size of the slice in the mirror source.
  /// [type] Specifies the type of the slice in the mirror source configuration.
  DomainDevicesDiskSourceSlicesSlice({
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

  factory DomainDevicesDiskSourceSlicesSlice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceSlicesSlice(
      offset: map['offset'] as double,
      size: map['size'] as double,
      type: map['type'] as String,
    );
  }
}

