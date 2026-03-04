// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigGvnic {
  /// Whether or not gvnic is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodeConfigGvnic].
  /// [enabled] Whether or not gvnic is enabled
  GetClusterNodeConfigGvnic({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGvnic(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
