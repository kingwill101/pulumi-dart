// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final pulumi.Input<String> maintenanceInterval;

  /// Creates a new [NodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  NodePoolNodeConfigHostMaintenancePolicy({required this.maintenanceInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maintenanceInterval': maintenanceInterval};
  }

  factory NodePoolNodeConfigHostMaintenancePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: pulumi.Input.fromValue(
        map['maintenanceInterval'] as String,
      ),
    );
  }
}
