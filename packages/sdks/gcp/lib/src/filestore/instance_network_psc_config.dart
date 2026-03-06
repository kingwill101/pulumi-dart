// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetworkPscConfig {
  /// Consumer service project in which the Private Service Connect endpoint
  /// would be set up. This is optional, and only relevant in case the network
  /// is a shared VPC. If this is not specified, the endpoint would be set up
  /// in the VPC host project.
  final pulumi.Input<String>? endpointProject;

  /// Creates a new [InstanceNetworkPscConfig].
  /// [endpointProject] Consumer service project in which the Private Service Connect endpoint
  const InstanceNetworkPscConfig({
    this.endpointProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointProject': ?endpointProject,
    };
  }

  factory InstanceNetworkPscConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkPscConfig(
      endpointProject: (() { final guardedValue = map['endpointProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

