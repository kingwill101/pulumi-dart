// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiCustomModelActiveDeploymentEndpoint {
  /// Private endpoint FQDN.
  final pulumi.Input<String>? privateEndpointFqdn;
  /// Public endpoint FQDN, if enabled.
  final pulumi.Input<String>? publicEndpointFqdn;

  /// Creates a new [GradientaiCustomModelActiveDeploymentEndpoint].
  /// [privateEndpointFqdn] Private endpoint FQDN.
  /// [publicEndpointFqdn] Public endpoint FQDN, if enabled.
  const GradientaiCustomModelActiveDeploymentEndpoint({
    this.privateEndpointFqdn,
    this.publicEndpointFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointFqdn': ?privateEndpointFqdn,
      'publicEndpointFqdn': ?publicEndpointFqdn,
    };
  }

  factory GradientaiCustomModelActiveDeploymentEndpoint.fromMap(Map<String, dynamic> map) {
    return GradientaiCustomModelActiveDeploymentEndpoint(
      privateEndpointFqdn: (() { final guardedValue = map['privateEndpointFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicEndpointFqdn: (() { final guardedValue = map['publicEndpointFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
