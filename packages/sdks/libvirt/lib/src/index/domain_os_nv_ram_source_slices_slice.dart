// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceSlicesSlice {
  /// Sets the offset for the specific slice in the mirror source configuration.
  final pulumi.Input<double> offset;

  /// Configures the size of the slice in the mirror source.
  final pulumi.Input<double> size;

  /// Specifies the type of the slice in the mirror source configuration.
  final pulumi.Input<String> type;

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
    return <String, dynamic>{'offset': offset, 'size': size, 'type': type};
  }

  factory DomainOsNvRamSourceSlicesSlice.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceSlicesSlice(
      offset: pulumi.Input.fromValue(map['offset'] as double),
      size: pulumi.Input.fromValue(map['size'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
