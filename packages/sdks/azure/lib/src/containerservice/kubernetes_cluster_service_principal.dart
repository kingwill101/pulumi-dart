// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterServicePrincipal {
  /// The Client ID for the Service Principal.
  final pulumi.Input<String> clientId;

  /// The Client Secret for the Service Principal.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [KubernetesClusterServicePrincipal].
  /// [clientId] The Client ID for the Service Principal.
  /// [clientSecret] The Client Secret for the Service Principal.
  KubernetesClusterServicePrincipal({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory KubernetesClusterServicePrincipal.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterServicePrincipal(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}
