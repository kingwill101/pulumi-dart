// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// is set to the Azure Client ID (Application Object ID).
  final String? clientId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// is set to the Azure Object ID.
  final String? objectId;
  /// is set to the Azure Subscription ID.
  final String? subscriptionId;
  /// is set to the Azure Tenant ID.
  final String? tenantId;

  /// Creates a new [GetClientConfigResult].
  /// [clientId] is set to the Azure Client ID (Application Object ID).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] is set to the Azure Object ID.
  /// [subscriptionId] is set to the Azure Subscription ID.
  /// [tenantId] is set to the Azure Tenant ID.
  const GetClientConfigResult({
    this.clientId,
    this.id,
    this.objectId,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'id': ?id,
      'objectId': ?objectId,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
