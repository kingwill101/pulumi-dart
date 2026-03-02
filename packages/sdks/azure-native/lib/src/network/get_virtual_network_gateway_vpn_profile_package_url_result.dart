// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkGatewayVpnProfilePackageUrl.
class GetVirtualNetworkGatewayVpnProfilePackageUrlResult {
  final String? value;

  /// Creates a new [GetVirtualNetworkGatewayVpnProfilePackageUrlResult].
  /// [value] Optional.
  GetVirtualNetworkGatewayVpnProfilePackageUrlResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetVirtualNetworkGatewayVpnProfilePackageUrlResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnProfilePackageUrlResult(
      value: map['value'] == null ? null : map['value']! as String,
    );
  }
}

