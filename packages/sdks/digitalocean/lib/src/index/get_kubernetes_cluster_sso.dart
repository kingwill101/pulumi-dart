// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterSso {
  final pulumi.Input<String> clientId;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> issuerUrl;
  final pulumi.Input<bool> required;

  /// Creates a new [GetKubernetesClusterSso].
  /// [clientId] Required.
  /// [enabled] Required.
  /// [issuerUrl] Required.
  /// [required] Required.
  const GetKubernetesClusterSso({
    required this.clientId,
    required this.enabled,
    required this.issuerUrl,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'enabled': enabled,
      'issuerUrl': issuerUrl,
      'required': required,
    };
  }

  factory GetKubernetesClusterSso.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterSso(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      issuerUrl: pulumi.Input.fromValue(map['issuerUrl'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
    );
  }
}
