// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigHostMaintenancePolicy {
  /// .
  final pulumi.Input<String> maintenanceInterval;

  /// Creates a new [GetClusterNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  const GetClusterNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
    };
  }

  factory GetClusterNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigHostMaintenancePolicy(
      maintenanceInterval: pulumi.Input.fromValue(map['maintenanceInterval'] as String),
    );
  }
}

