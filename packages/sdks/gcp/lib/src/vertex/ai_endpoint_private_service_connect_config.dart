// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_private_service_connect_config_psc_automation_config.dart';

class AiEndpointPrivateServiceConnectConfig {
  /// Required. If true, expose the IndexEndpoint via private service connect.
  final bool enablePrivateServiceConnect;
  /// If set to true, enable secure private service connect with IAM authorization. Otherwise, private service connect will be done without authorization. Note latency will be slightly increased if authorization is enabled.
  final bool? enableSecurePrivateServiceConnect;
  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String>? projectAllowlists;
  /// List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  /// Structure is documented below.
  final List<AiEndpointPrivateServiceConnectConfigPscAutomationConfig>? pscAutomationConfigs;

  /// Creates a new [AiEndpointPrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] Required. If true, expose the IndexEndpoint via private service connect.
  /// [enableSecurePrivateServiceConnect] If set to true, enable secure private service connect with IAM authorization. Otherwise, private service connect will be done without authorization. Note latency will be slightly increased if authorization is enabled.
  /// [projectAllowlists] A list of Projects from which the forwarding rule will target the service attachment.
  /// [pscAutomationConfigs] List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  AiEndpointPrivateServiceConnectConfig({
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
      'pscAutomationConfigs': ?pscAutomationConfigs == null ? null : pulumi.Input.encodeList<AiEndpointPrivateServiceConnectConfigPscAutomationConfig, Map<String, dynamic>>(pscAutomationConfigs!, (value) => value.toMap()),
    };
  }

  factory AiEndpointPrivateServiceConnectConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      enableSecurePrivateServiceConnect: map['enableSecurePrivateServiceConnect'] == null ? null : map['enableSecurePrivateServiceConnect'] as bool,
      projectAllowlists: map['projectAllowlists'] == null ? null : (map['projectAllowlists'] as List).cast<String>(),
      pscAutomationConfigs: map['pscAutomationConfigs'] == null ? null : pulumi.Input.decodeList<AiEndpointPrivateServiceConnectConfigPscAutomationConfig>(map['pscAutomationConfigs'], (value) => AiEndpointPrivateServiceConnectConfigPscAutomationConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

