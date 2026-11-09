// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure configuration for Deployments OIDC. Pulumi ESC is the recommended way to supply cloud credentials to Pulumi Deployments. See [Supplying Cloud Credentials to Pulumi Deployments](https://www.pulumi.com/docs/deployments/guides/cloud-credentials/).
class AzureOIDCConfiguration {
  /// The client ID of the federated workload identity.
  final pulumi.Input<String> clientId;
  /// The subscription ID of the federated workload identity.
  final pulumi.Input<String> subscriptionId;
  /// The tenant ID of the federated workload identity.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AzureOIDCConfiguration].
  /// [clientId] The client ID of the federated workload identity.
  /// [subscriptionId] The subscription ID of the federated workload identity.
  /// [tenantId] The tenant ID of the federated workload identity.
  const AzureOIDCConfiguration({
    required this.clientId,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory AzureOIDCConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureOIDCConfiguration(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
