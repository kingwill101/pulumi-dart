// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_psc_interface_config_dns_peering_config.dart';

class AiPipelineJobPscInterfaceConfig {
  /// DNS peering configurations. When specified, Vertex AI will attempt to configure DNS peering zones in the tenant project VPC to resolve the specified domains using the target network's Cloud DNS. The user must grant the dns.peer role to the Vertex AI Service Agent on the target project.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobPscInterfaceConfigDnsPeeringConfig>?>? dnsPeeringConfigs;
  /// The name of the Compute Engine network attachment to attach to the resource within the region and user project. To specify this field, you must have already created a network attachment. This field is only used for resources using PSC-I.
  final pulumi.Input<String?>? networkAttachment;

  /// Creates a new [AiPipelineJobPscInterfaceConfig].
  /// [dnsPeeringConfigs] DNS peering configurations. When specified, Vertex AI will attempt to configure DNS peering zones in the tenant project VPC to resolve the specified domains using the target network's Cloud DNS. The user must grant the dns.peer role to the Vertex AI Service Agent on the target project.
  /// [networkAttachment] The name of the Compute Engine network attachment to attach to the resource within the region and user project. To specify this field, you must have already created a network attachment. This field is only used for resources using PSC-I.
  const AiPipelineJobPscInterfaceConfig({
    this.dnsPeeringConfigs,
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPeeringConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobPscInterfaceConfigDnsPeeringConfig>, List<Map<String, dynamic>>>(dnsPeeringConfigs, (value) => pulumi.Input.encodeList<AiPipelineJobPscInterfaceConfigDnsPeeringConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkAttachment': ?networkAttachment,
    };
  }

  factory AiPipelineJobPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobPscInterfaceConfig(
      dnsPeeringConfigs: (() { final guardedValue = map['dnsPeeringConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobPscInterfaceConfigDnsPeeringConfig>(guardedValue, (value) => AiPipelineJobPscInterfaceConfigDnsPeeringConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
