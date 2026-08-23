// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourcePscInterfaceConfigDnsPeeringConfig {
  /// The DNS name suffix of the zone being peered to, e.g.,
  /// "my-internal-domain.corp.". Must end with a dot.
  final pulumi.Input<String> domain;
  /// The VPC network name
  /// in the targetProject where the DNS zone specified by 'domain' is
  /// visible.
  final pulumi.Input<String> targetNetwork;
  /// The project ID hosting the Cloud DNS managed zone that
  /// contains the 'domain'. The Vertex AI Service Agent requires the
  /// dns.peer role on this project.
  final pulumi.Input<String> targetProject;

  /// Creates a new [AiPersistentResourcePscInterfaceConfigDnsPeeringConfig].
  /// [domain] The DNS name suffix of the zone being peered to, e.g.,
  /// [targetNetwork] The VPC network name
  /// [targetProject] The project ID hosting the Cloud DNS managed zone that
  const AiPersistentResourcePscInterfaceConfigDnsPeeringConfig({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'targetNetwork': targetNetwork,
      'targetProject': targetProject,
    };
  }

  factory AiPersistentResourcePscInterfaceConfigDnsPeeringConfig.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourcePscInterfaceConfigDnsPeeringConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      targetNetwork: pulumi.Input.fromValue(map['targetNetwork'] as String),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
    );
  }
}
