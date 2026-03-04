// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getP2sVpnGatewayP2sVpnConnectionHealthDetailed.
class GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult {
  /// Returned sas url of the blob to which the p2s vpn connection detailed health will be written.
  final String? sasUrl;

  /// Creates a new [GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult].
  /// [sasUrl] Returned sas url of the blob to which the p2s vpn connection detailed health will be written.
  GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult({this.sasUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sasUrl': ?sasUrl};
  }

  factory GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult(
      sasUrl: (() {
        final guardedValue = map['sasUrl'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
