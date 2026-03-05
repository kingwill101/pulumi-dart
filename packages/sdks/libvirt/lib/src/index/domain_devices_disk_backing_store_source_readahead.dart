// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final pulumi.Input<String> size;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  DomainDevicesDiskBackingStoreSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReadahead(
      size: pulumi.Input.fromValue(map['size'] as String),
    );
  }
}

