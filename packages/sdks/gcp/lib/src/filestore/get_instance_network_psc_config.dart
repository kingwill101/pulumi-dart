// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkPscConfig {
  /// Consumer service project in which the Private Service Connect endpoint
  /// would be set up. This is optional, and only relevant in case the network
  /// is a shared VPC. If this is not specified, the endpoint would be set up
  /// in the VPC host project.
  final pulumi.Input<String> endpointProject;

  /// Creates a new [GetInstanceNetworkPscConfig].
  /// [endpointProject] Consumer service project in which the Private Service Connect endpoint
  GetInstanceNetworkPscConfig({
    required this.endpointProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointProject': endpointProject,
    };
  }

  factory GetInstanceNetworkPscConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkPscConfig(
      endpointProject: (map['endpointProject'] as String).input(),
    );
  }
}

