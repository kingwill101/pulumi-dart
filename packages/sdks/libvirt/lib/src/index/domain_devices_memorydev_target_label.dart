// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesMemorydevTargetLabel {
  /// Defines the size of the memory device label.
  final double? size;
  /// Specifies the unit of measurement for the size of the memory device label.
  final String? sizeUnit;

  /// Creates a new [DomainDevicesMemorydevTargetLabel].
  /// [size] Defines the size of the memory device label.
  /// [sizeUnit] Specifies the unit of measurement for the size of the memory device label.
  DomainDevicesMemorydevTargetLabel({
    this.size,
    this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesMemorydevTargetLabel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevTargetLabel(
      size: map['size'] == null ? null : map['size'] as double,
      sizeUnit: map['sizeUnit'] == null ? null : map['sizeUnit'] as String,
    );
  }
}

