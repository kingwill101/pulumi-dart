// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerVersioningLegacy {
  /// Container in which versions will be stored.
  final pulumi.Input<String> location;
  /// Versioning type which can be `versions` or `history`
  /// according to [OpenStack
  /// documentation](https://docs.openstack.org/swift/latest/api/object_versioning.html).
  final pulumi.Input<String> type;

  /// Creates a new [ContainerVersioningLegacy].
  /// [location] Container in which versions will be stored.
  /// [type] Versioning type which can be `versions` or `history`
  ContainerVersioningLegacy({
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'type': type,
    };
  }

  factory ContainerVersioningLegacy.fromMap(Map<String, dynamic> map) {
    return ContainerVersioningLegacy(
      location: (map['location'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

