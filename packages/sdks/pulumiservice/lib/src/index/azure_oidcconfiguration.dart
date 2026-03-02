// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

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
  AzureOIDCConfiguration({
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
      clientId: (map['clientId'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

