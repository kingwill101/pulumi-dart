// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_job_spec_psc_interface_config_dns_peering_config.dart';

class AiCustomJobJobSpecPscInterfaceConfig {
  /// DNS peering config for the PSC interface.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfig>?>? dnsPeeringConfigs;
  /// The name of the attachment to connect to.
  final pulumi.Input<String?>? networkAttachment;

  /// Creates a new [AiCustomJobJobSpecPscInterfaceConfig].
  /// [dnsPeeringConfigs] DNS peering config for the PSC interface.
  /// [networkAttachment] The name of the attachment to connect to.
  const AiCustomJobJobSpecPscInterfaceConfig({
    this.dnsPeeringConfigs,
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPeeringConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfig>, List<Map<String, dynamic>>>(dnsPeeringConfigs, (value) => pulumi.Input.encodeList<AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkAttachment': ?networkAttachment,
    };
  }

  factory AiCustomJobJobSpecPscInterfaceConfig.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecPscInterfaceConfig(
      dnsPeeringConfigs: (() { final guardedValue = map['dnsPeeringConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfig>(guardedValue, (value) => AiCustomJobJobSpecPscInterfaceConfigDnsPeeringConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
