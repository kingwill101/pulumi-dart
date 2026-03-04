// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegisteredAsn.
class GetRegisteredAsnResult {
  /// The customer's ASN from which traffic originates.
  final int? asn;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The ID of the resource.
  final String id;

  /// The name of the resource.
  final String name;

  /// The peering service prefix key that is to be shared with the customer.
  final String peeringServicePrefixKey;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// The type of the resource.
  final String type;

  /// Creates a new [GetRegisteredAsnResult].
  /// [asn] The customer's ASN from which traffic originates.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the resource.
  /// [name] The name of the resource.
  /// [peeringServicePrefixKey] The peering service prefix key that is to be shared with the customer.
  /// [provisioningState] The provisioning state of the resource.
  /// [type] The type of the resource.
  GetRegisteredAsnResult({
    this.asn,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.peeringServicePrefixKey,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'peeringServicePrefixKey': peeringServicePrefixKey,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetRegisteredAsnResult.fromMap(Map<String, dynamic> map) {
    return GetRegisteredAsnResult(
      asn: (() {
        final guardedValue = map['asn'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      peeringServicePrefixKey: map['peeringServicePrefixKey'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
