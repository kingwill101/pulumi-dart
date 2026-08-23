// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiCustomModelActiveDeploymentEndpoint {
  /// Private endpoint FQDN.
  final pulumi.Input<String> privateEndpointFqdn;
  /// Public endpoint FQDN, if enabled.
  final pulumi.Input<String> publicEndpointFqdn;

  /// Creates a new [GetGradientaiCustomModelActiveDeploymentEndpoint].
  /// [privateEndpointFqdn] Private endpoint FQDN.
  /// [publicEndpointFqdn] Public endpoint FQDN, if enabled.
  const GetGradientaiCustomModelActiveDeploymentEndpoint({
    required this.privateEndpointFqdn,
    required this.publicEndpointFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointFqdn': privateEndpointFqdn,
      'publicEndpointFqdn': publicEndpointFqdn,
    };
  }

  factory GetGradientaiCustomModelActiveDeploymentEndpoint.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelActiveDeploymentEndpoint(
      privateEndpointFqdn: pulumi.Input.fromValue(map['privateEndpointFqdn'] as String),
      publicEndpointFqdn: pulumi.Input.fromValue(map['publicEndpointFqdn'] as String),
    );
  }
}
