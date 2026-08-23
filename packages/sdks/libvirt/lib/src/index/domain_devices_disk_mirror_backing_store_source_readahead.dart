// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final pulumi.Input<String> size;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  const DomainDevicesDiskMirrorBackingStoreSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReadahead(
      size: pulumi.Input.fromValue(map['size'] as String),
    );
  }
}
