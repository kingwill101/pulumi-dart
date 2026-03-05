// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final pulumi.Input<String> size;

  /// Creates a new [DomainDevicesDiskMirrorSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  DomainDevicesDiskMirrorSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskMirrorSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReadahead(
      size: pulumi.Input.fromValue(map['size'] as String),
    );
  }
}

