// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigGvnic {
  /// Whether or not the Google Virtual NIC (gVNIC) is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodeConfigGvnic].
  /// [enabled] Whether or not the Google Virtual NIC (gVNIC) is enabled
  ClusterNodeConfigGvnic({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGvnic(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
