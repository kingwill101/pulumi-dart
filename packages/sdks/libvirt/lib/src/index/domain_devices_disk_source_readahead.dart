// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final pulumi.Input<String> size;

  /// Creates a new [DomainDevicesDiskSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  const DomainDevicesDiskSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReadahead(
      size: pulumi.Input.fromValue(map['size'] as String),
    );
  }
}
