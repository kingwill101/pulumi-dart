// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkGatewayConnectionIkeSas.
class GetVirtualNetworkGatewayConnectionIkeSasResult {
  final String? value;

  /// Creates a new [GetVirtualNetworkGatewayConnectionIkeSasResult].
  /// [value] Optional.
  const GetVirtualNetworkGatewayConnectionIkeSasResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetVirtualNetworkGatewayConnectionIkeSasResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayConnectionIkeSasResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

