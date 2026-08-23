// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterSso {
  /// The OIDC client ID for the cluster SSO configuration.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final pulumi.Input<String>? clientId;
  /// Boolean flag indicating whether SSO is enabled as an authentication method for the cluster.
  final pulumi.Input<bool> enabled;
  /// The OIDC issuer URL for the cluster SSO configuration.
  final pulumi.Input<String>? issuerUrl;
  /// Boolean flag indicating whether SSO is required as the only authentication method for the cluster. Default: `false`
  final pulumi.Input<bool>? required;

  /// Creates a new [KubernetesClusterSso].
  /// [clientId] The OIDC client ID for the cluster SSO configuration.
  /// [enabled] Boolean flag indicating whether SSO is enabled as an authentication method for the cluster.
  /// [issuerUrl] The OIDC issuer URL for the cluster SSO configuration.
  /// [required] Boolean flag indicating whether SSO is required as the only authentication method for the cluster. Default: `false`
  const KubernetesClusterSso({
    this.clientId,
    required this.enabled,
    this.issuerUrl,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'enabled': enabled,
      'issuerUrl': ?issuerUrl,
      'required': ?required,
    };
  }

  factory KubernetesClusterSso.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterSso(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      issuerUrl: (() { final guardedValue = map['issuerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
