// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceSlicesSlice {
  /// Sets the offset for the specific slice in the mirror source configuration.
  final pulumi.Input<double> offset;
  /// Configures the size of the slice in the mirror source.
  final pulumi.Input<double> size;
  /// Specifies the type of the slice in the mirror source configuration.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesDiskSourceSlicesSlice].
  /// [offset] Sets the offset for the specific slice in the mirror source configuration.
  /// [size] Configures the size of the slice in the mirror source.
  /// [type] Specifies the type of the slice in the mirror source configuration.
  const DomainDevicesDiskSourceSlicesSlice({
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
      offset: pulumi.Input.fromValue((map['offset'] as num).toDouble()),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
