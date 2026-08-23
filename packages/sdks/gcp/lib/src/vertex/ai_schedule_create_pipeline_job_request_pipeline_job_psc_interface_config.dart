// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_pipeline_job_request_pipeline_job_psc_interface_config_dns_peering_config.dart';

class AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig {
  /// DNS peering configurations. When specified, Vertex AI will attempt to configure DNS peering zones in the tenant project VPC to resolve the specified domains using the target network's Cloud DNS. The user must grant the dns.peer role to the Vertex AI Service Agent on the target project.
  /// Structure is documented below.
  final pulumi.Input<List<AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig>>? dnsPeeringConfigs;
  /// The name of the Compute Engine [network attachment](https://cloud.google.com/vpc/docs/about-network-attachments) to attach to the resource within the region and user project. To specify this field, you must have already [created a network attachment] (https://cloud.google.com/vpc/docs/create-manage-network-attachments#create-network-attachments). This field is only used for resources using PSC-I.
  final pulumi.Input<String>? networkAttachment;

  /// Creates a new [AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig].
  /// [dnsPeeringConfigs] DNS peering configurations. When specified, Vertex AI will attempt to configure DNS peering zones in the tenant project VPC to resolve the specified domains using the target network's Cloud DNS. The user must grant the dns.peer role to the Vertex AI Service Agent on the target project.
  /// [networkAttachment] The name of the Compute Engine [network attachment](https://cloud.google.com/vpc/docs/about-network-attachments) to attach to the resource within the region and user project. To specify this field, you must have already [created a network attachment] (https://cloud.google.com/vpc/docs/create-manage-network-attachments#create-network-attachments). This field is only used for resources using PSC-I.
  const AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig({
    this.dnsPeeringConfigs,
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPeeringConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig>, List<Map<String, dynamic>>>(dnsPeeringConfigs, (value) => pulumi.Input.encodeList<AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkAttachment': ?networkAttachment,
    };
  }

  factory AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig(
      dnsPeeringConfigs: (() { final guardedValue = map['dnsPeeringConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig>(guardedValue, (value) => AiScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
