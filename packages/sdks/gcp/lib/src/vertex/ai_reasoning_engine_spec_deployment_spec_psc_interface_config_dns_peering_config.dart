// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig {
  /// Required. The DNS name suffix of the zone being peered
  /// to, e.g., "my-internal-domain.corp.".
  /// Must end with a dot.
  final pulumi.Input<String> domain;
  /// Required. The VPC network name in the targetProject
  /// where the DNS zone specified by 'domain' is visible.
  final pulumi.Input<String> targetNetwork;
  /// Required. The project id hosting the Cloud DNS managed
  /// zone that contains the 'domain'.
  /// The Vertex AI service Agent requires the dns.peer role
  /// on this project.
  final pulumi.Input<String> targetProject;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig].
  /// [domain] Required. The DNS name suffix of the zone being peered
  /// [targetNetwork] Required. The VPC network name in the targetProject
  /// [targetProject] Required. The project id hosting the Cloud DNS managed
  const AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig({
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

  factory AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      targetNetwork: pulumi.Input.fromValue(map['targetNetwork'] as String),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
    );
  }
}
