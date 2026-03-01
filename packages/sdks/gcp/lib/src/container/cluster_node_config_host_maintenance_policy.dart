// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  /// Creates a new [ClusterNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  ClusterNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
    };
  }

  factory ClusterNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}

