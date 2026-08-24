// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceManagedNetworksListResultConfig {
  /// The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate.
  final pulumi.Input<String> sha256;
  /// A network address of the form "host:port" that the WARP client will use to detect the presence of a TLS host.
  final pulumi.Input<String> tlsSockaddr;

  /// Creates a new [GetZeroTrustDeviceManagedNetworksListResultConfig].
  /// [sha256] The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate.
  /// [tlsSockaddr] A network address of the form "host:port" that the WARP client will use to detect the presence of a TLS host.
  const GetZeroTrustDeviceManagedNetworksListResultConfig({
    required this.sha256,
    required this.tlsSockaddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256': sha256,
      'tlsSockaddr': tlsSockaddr,
    };
  }

  factory GetZeroTrustDeviceManagedNetworksListResultConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceManagedNetworksListResultConfig(
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
      tlsSockaddr: pulumi.Input.fromValue(map['tlsSockaddr'] as String),
    );
  }
}
