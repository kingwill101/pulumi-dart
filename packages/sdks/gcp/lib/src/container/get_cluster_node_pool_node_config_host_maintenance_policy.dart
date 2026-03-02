// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final pulumi.Input<String> maintenanceInterval;

  /// Creates a new [GetClusterNodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  GetClusterNodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
    };
  }

  factory GetClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
    );
  }
}

