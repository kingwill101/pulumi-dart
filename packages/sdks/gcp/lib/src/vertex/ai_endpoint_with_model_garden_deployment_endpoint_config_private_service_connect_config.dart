// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_endpoint_config_private_service_connect_config_psc_automation_configs.dart';

class AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig {
  /// Required. If true, expose the IndexEndpoint via private service connect.
  final pulumi.Input<bool> enablePrivateServiceConnect;
  /// A list of Projects from which the forwarding rule will target the service attachment.
  final pulumi.Input<List<String>>? projectAllowlists;
  /// PSC config that is used to automatically create PSC endpoints in the user projects.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs>? pscAutomationConfigs;
  /// (Output)
  /// Output only. The name of the generated service attachment resource.
  /// This is only populated if the endpoint is deployed with PrivateServiceConnect.
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] Required. If true, expose the IndexEndpoint via private service connect.
  /// [projectAllowlists] A list of Projects from which the forwarding rule will target the service attachment.
  /// [pscAutomationConfigs] PSC config that is used to automatically create PSC endpoints in the user projects.
  /// [serviceAttachment] (Output)
  AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
    this.pscAutomationConfigs,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'projectAllowlists': ?projectAllowlists,
      'pscAutomationConfigs': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs, Map<String, dynamic>>(pscAutomationConfigs, (value) => value.toMap()),
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig(
      enablePrivateServiceConnect: (map['enablePrivateServiceConnect'] as bool).input(),
      projectAllowlists: map['projectAllowlists'] == null ? null : ((map['projectAllowlists']! as List).cast<String>()).input(),
      pscAutomationConfigs: map['pscAutomationConfigs'] == null ? null : (AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs.fromMap((map['pscAutomationConfigs']! as Map).cast<String, dynamic>())).input(),
      serviceAttachment: map['serviceAttachment'] == null ? null : (map['serviceAttachment']! as String).input(),
    );
  }
}

