// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_pipeline_job_request_pipeline_job_psc_interface_config_dns_peering_config.dart';

class ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig {
  /// DNS peering configurations. When specified, Vertex AI will attempt to configure DNS peering zones in the tenant project VPC to resolve the specified domains using the target network's Cloud DNS. The user must grant the dns.peer role to the Vertex AI Service Agent on the target project.
  /// Structure is documented below.
  final pulumi.Input<List<ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig>>? dnsPeeringConfigs;
  /// The name of the Compute Engine [network attachment](https://cloud.google.com/vpc/docs/about-network-attachments) to attach to the resource within the region and user project. To specify this field, you must have already [created a network attachment] (https://cloud.google.com/vpc/docs/create-manage-network-attachments#create-network-attachments). This field is only used for resources using PSC-I.
  final pulumi.Input<String>? networkAttachment;

  /// Creates a new [ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig].
  /// [dnsPeeringConfigs] DNS peering configurations. When specified, Vertex AI will attempt to configure DNS peering zones in the tenant project VPC to resolve the specified domains using the target network's Cloud DNS. The user must grant the dns.peer role to the Vertex AI Service Agent on the target project.
  /// [networkAttachment] The name of the Compute Engine [network attachment](https://cloud.google.com/vpc/docs/about-network-attachments) to attach to the resource within the region and user project. To specify this field, you must have already [created a network attachment] (https://cloud.google.com/vpc/docs/create-manage-network-attachments#create-network-attachments). This field is only used for resources using PSC-I.
  const ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig({
    this.dnsPeeringConfigs,
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPeeringConfigs': ?pulumi.Input.mapOptionalInputValue<List<ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig>, List<Map<String, dynamic>>>(dnsPeeringConfigs, (value) => pulumi.Input.encodeList<ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkAttachment': ?networkAttachment,
    };
  }

  factory ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig(
      dnsPeeringConfigs: (() { final guardedValue = map['dnsPeeringConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig>(guardedValue, (value) => ScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
