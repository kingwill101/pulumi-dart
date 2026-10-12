// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformCustomModelsCustomModelActiveDeploymentEndpoint {
  /// Private endpoint FQDN.
  final pulumi.Input<String> privateEndpointFqdn;
  /// Public endpoint FQDN, if enabled.
  final pulumi.Input<String> publicEndpointFqdn;

  /// Creates a new [GetAgentPlatformCustomModelsCustomModelActiveDeploymentEndpoint].
  /// [privateEndpointFqdn] Private endpoint FQDN.
  /// [publicEndpointFqdn] Public endpoint FQDN, if enabled.
  const GetAgentPlatformCustomModelsCustomModelActiveDeploymentEndpoint({
    required this.privateEndpointFqdn,
    required this.publicEndpointFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointFqdn': privateEndpointFqdn,
      'publicEndpointFqdn': publicEndpointFqdn,
    };
  }

  factory GetAgentPlatformCustomModelsCustomModelActiveDeploymentEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformCustomModelsCustomModelActiveDeploymentEndpoint(
      privateEndpointFqdn: pulumi.Input.fromValue(map['privateEndpointFqdn'] as String),
      publicEndpointFqdn: pulumi.Input.fromValue(map['publicEndpointFqdn'] as String),
    );
  }
}
