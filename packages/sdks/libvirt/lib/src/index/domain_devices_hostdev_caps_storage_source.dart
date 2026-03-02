// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevCapsStorageSource {
  /// Configures the block storage specific attributes for the host device's storage capabilities.
  final pulumi.Input<String> block;

  /// Creates a new [DomainDevicesHostdevCapsStorageSource].
  /// [block] Configures the block storage specific attributes for the host device's storage capabilities.
  DomainDevicesHostdevCapsStorageSource({
    required this.block,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'block': block,
    };
  }

  factory DomainDevicesHostdevCapsStorageSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsStorageSource(
      block: (map['block'] as String).input(),
    );
  }
}

