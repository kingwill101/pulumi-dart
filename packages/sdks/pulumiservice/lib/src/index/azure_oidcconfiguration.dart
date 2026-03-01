// ignore_for_file: unused_element, unnecessary_cast


class AzureOIDCConfiguration {
  /// The client ID of the federated workload identity.
  final String clientId;
  /// The subscription ID of the federated workload identity.
  final String subscriptionId;
  /// The tenant ID of the federated workload identity.
  final String tenantId;

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
      clientId: map['clientId'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

