// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_private_service_connect_config_psc_automation_config.dart';

class AiIndexEndpointPrivateServiceConnectConfig {
  /// If set to true, the IndexEndpoint is created without private service access.
  final pulumi.Input<bool> enablePrivateServiceConnect;
  /// A list of Projects from which the forwarding rule will target the service attachment.
  final pulumi.Input<List<String>>? projectAllowlists;
  /// List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  /// Structure is documented below.
  final pulumi.Input<List<AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig>>? pscAutomationConfigs;

  /// Creates a new [AiIndexEndpointPrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] If set to true, the IndexEndpoint is created without private service access.
  /// [projectAllowlists] A list of Projects from which the forwarding rule will target the service attachment.
  /// [pscAutomationConfigs] List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  const AiIndexEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
    this.pscAutomationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'projectAllowlists': ?projectAllowlists,
      'pscAutomationConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig>, List<Map<String, dynamic>>>(pscAutomationConfigs, (value) => pulumi.Input.encodeList<AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiIndexEndpointPrivateServiceConnectConfig.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: pulumi.Input.fromValue(map['enablePrivateServiceConnect'] as bool),
      projectAllowlists: (() { final guardedValue = map['projectAllowlists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pscAutomationConfigs: (() { final guardedValue = map['pscAutomationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig>(guardedValue, (value) => AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

