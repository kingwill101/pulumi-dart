// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsInspection {
  /// Define the proxy inspection mode.   1. static: Gateway applies static inspection to HTTP on TCP(80). With TLS decryption on, Gateway inspects HTTPS traffic on TCP(443) and UDP(443).   2. dynamic: Gateway applies protocol detection to inspect HTTP and HTTPS traffic on any port. TLS decryption must remain on to inspect HTTPS traffic.
  /// Available values: "static", "dynamic".
  final pulumi.Input<String> mode;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsInspection].
  /// [mode] Define the proxy inspection mode.   1. static: Gateway applies static inspection to HTTP on TCP(80). With TLS decryption on, Gateway inspects HTTPS traffic on TCP(443) and UDP(443).   2. dynamic: Gateway applies protocol detection to inspect HTTP and HTTPS traffic on any port. TLS decryption must remain on to inspect HTTPS traffic.
  const GetZeroTrustGatewaySettingsSettingsInspection({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsInspection.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsInspection(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
