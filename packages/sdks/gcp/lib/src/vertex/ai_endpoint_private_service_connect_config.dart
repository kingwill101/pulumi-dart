// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_private_service_connect_config_psc_automation_config.dart';

class AiEndpointPrivateServiceConnectConfig {
  /// Required. If true, expose the IndexEndpoint via private service connect.
  final pulumi.Input<bool> enablePrivateServiceConnect;
  /// (Optional, Beta)
  /// If set to true, enable secure private service connect with IAM authorization. Otherwise, private service connect will be done without authorization. Note latency will be slightly increased if authorization is enabled.
  final pulumi.Input<bool>? enableSecurePrivateServiceConnect;
  /// A list of Projects from which the forwarding rule will target the service attachment.
  final pulumi.Input<List<String>>? projectAllowlists;
  /// List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  /// Structure is documented below.
  final pulumi.Input<List<AiEndpointPrivateServiceConnectConfigPscAutomationConfig>>? pscAutomationConfigs;

  /// Creates a new [AiEndpointPrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] Required. If true, expose the IndexEndpoint via private service connect.
  /// [enableSecurePrivateServiceConnect] (Optional, Beta)
  /// [projectAllowlists] A list of Projects from which the forwarding rule will target the service attachment.
  /// [pscAutomationConfigs] List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  const AiEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.enableSecurePrivateServiceConnect,
    this.projectAllowlists,
    this.pscAutomationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'enableSecurePrivateServiceConnect': ?enableSecurePrivateServiceConnect,
      'projectAllowlists': ?projectAllowlists,
      'pscAutomationConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiEndpointPrivateServiceConnectConfigPscAutomationConfig>, List<Map<String, dynamic>>>(pscAutomationConfigs, (value) => pulumi.Input.encodeList<AiEndpointPrivateServiceConnectConfigPscAutomationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiEndpointPrivateServiceConnectConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: pulumi.Input.fromValue(map['enablePrivateServiceConnect'] as bool),
      enableSecurePrivateServiceConnect: (() { final guardedValue = map['enableSecurePrivateServiceConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectAllowlists: (() { final guardedValue = map['projectAllowlists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pscAutomationConfigs: (() { final guardedValue = map['pscAutomationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEndpointPrivateServiceConnectConfigPscAutomationConfig>(guardedValue, (value) => AiEndpointPrivateServiceConnectConfigPscAutomationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
