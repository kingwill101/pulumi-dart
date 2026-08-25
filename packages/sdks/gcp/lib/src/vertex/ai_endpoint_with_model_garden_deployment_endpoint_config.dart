// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_endpoint_config_private_service_connect_config.dart';

class AiEndpointWithModelGardenDeploymentEndpointConfig {
  /// If true, the endpoint will be exposed through a dedicated
  /// DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS
  /// will be isolated from other users' traffic and will have better
  /// performance and reliability. Note: Once you enabled dedicated endpoint,
  /// you won't be able to send request to the shared DNS
  /// {region}-aiplatform.googleapis.com. The limitations will be removed soon.
  final pulumi.Input<bool?>? dedicatedEndpointEnabled;
  /// The user-specified display name of the endpoint. If not set, a
  /// default name will be used.
  final pulumi.Input<String?>? endpointDisplayName;
  /// The configuration for Private Service Connect (PSC).
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig?>? privateServiceConnectConfig;

  /// Creates a new [AiEndpointWithModelGardenDeploymentEndpointConfig].
  /// [dedicatedEndpointEnabled] If true, the endpoint will be exposed through a dedicated
  /// [endpointDisplayName] The user-specified display name of the endpoint. If not set, a
  /// [privateServiceConnectConfig] The configuration for Private Service Connect (PSC).
  const AiEndpointWithModelGardenDeploymentEndpointConfig({
    this.dedicatedEndpointEnabled,
    this.endpointDisplayName,
    this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedEndpointEnabled': ?dedicatedEndpointEnabled,
      'endpointDisplayName': ?endpointDisplayName,
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
    };
  }

  factory AiEndpointWithModelGardenDeploymentEndpointConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentEndpointConfig(
      dedicatedEndpointEnabled: (() { final guardedValue = map['dedicatedEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointDisplayName: (() { final guardedValue = map['endpointDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateServiceConnectConfig: (() { final guardedValue = map['privateServiceConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
