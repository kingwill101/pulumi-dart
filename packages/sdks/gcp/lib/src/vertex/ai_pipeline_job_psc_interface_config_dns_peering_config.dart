// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPipelineJobPscInterfaceConfigDnsPeeringConfig {
  /// The DNS name suffix of the zone being peered to, e.g., "my-internal-domain.corp.". Must end with a dot.
  final pulumi.Input<String> domain;
  /// The VPC network name in the targetProject where the DNS zone specified by domain is visible.
  final pulumi.Input<String> targetNetwork;
  /// The project ID hosting the Cloud DNS managed zone that contains the above domain. The Vertex AI Service Agent must be granted the dns.peer role on this project.
  final pulumi.Input<String> targetProject;

  /// Creates a new [AiPipelineJobPscInterfaceConfigDnsPeeringConfig].
  /// [domain] The DNS name suffix of the zone being peered to, e.g., "my-internal-domain.corp.". Must end with a dot.
  /// [targetNetwork] The VPC network name in the targetProject where the DNS zone specified by domain is visible.
  /// [targetProject] The project ID hosting the Cloud DNS managed zone that contains the above domain. The Vertex AI Service Agent must be granted the dns.peer role on this project.
  const AiPipelineJobPscInterfaceConfigDnsPeeringConfig({
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

  factory AiPipelineJobPscInterfaceConfigDnsPeeringConfig.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobPscInterfaceConfigDnsPeeringConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      targetNetwork: pulumi.Input.fromValue(map['targetNetwork'] as String),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
    );
  }
}
