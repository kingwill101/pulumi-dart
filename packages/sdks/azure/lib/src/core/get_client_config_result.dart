// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// is set to the Azure Client ID (Application Object ID).
  final String clientId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// is set to the Azure Object ID.
  final String objectId;

  /// is set to the Azure Subscription ID.
  final String subscriptionId;

  /// is set to the Azure Tenant ID.
  final String tenantId;

  /// Creates a new [GetClientConfigResult].
  /// [clientId] is set to the Azure Client ID (Application Object ID).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] is set to the Azure Object ID.
  /// [subscriptionId] is set to the Azure Subscription ID.
  /// [tenantId] is set to the Azure Tenant ID.
  GetClientConfigResult({
    required this.clientId,
    required this.id,
    required this.objectId,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'id': id,
      'objectId': objectId,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      clientId: map['clientId'] as String,
      id: map['id'] as String,
      objectId: map['objectId'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
