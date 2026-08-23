// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final pulumi.Input<String> size;

  /// Creates a new [DomainOsNvRamSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  const DomainOsNvRamSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainOsNvRamSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReadahead(
      size: pulumi.Input.fromValue(map['size'] as String),
    );
  }
}
