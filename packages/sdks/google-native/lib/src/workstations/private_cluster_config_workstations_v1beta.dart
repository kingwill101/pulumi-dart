// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for private workstation clusters.
class PrivateClusterConfigWorkstationsV1beta {
  /// Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  final pulumi.Input<List<String>>? allowedProjects;
  /// Immutable. Whether Workstations endpoint is private.
  final pulumi.Input<bool>? enablePrivateEndpoint;

  /// Creates a new [PrivateClusterConfigWorkstationsV1beta].
  /// [allowedProjects] Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  /// [enablePrivateEndpoint] Immutable. Whether Workstations endpoint is private.
  const PrivateClusterConfigWorkstationsV1beta({
    this.allowedProjects,
    this.enablePrivateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedProjects': ?allowedProjects,
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
    };
  }

  factory PrivateClusterConfigWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigWorkstationsV1beta(
      allowedProjects: (() { final guardedValue = map['allowedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enablePrivateEndpoint: (() { final guardedValue = map['enablePrivateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
