// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeviceManagedNetworksConfig {
  /// The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate.
  final pulumi.Input<String?>? sha256;
  /// A network address of the form "host:port" that the WARP client will use to detect the presence of a TLS host.
  final pulumi.Input<String> tlsSockaddr;

  /// Creates a new [DeviceManagedNetworksConfig].
  /// [sha256] The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate.
  /// [tlsSockaddr] A network address of the form "host:port" that the WARP client will use to detect the presence of a TLS host.
  const DeviceManagedNetworksConfig({
    this.sha256,
    required this.tlsSockaddr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256': ?sha256,
      'tlsSockaddr': tlsSockaddr,
    };
  }

  factory DeviceManagedNetworksConfig.fromMap(Map<String, dynamic> map) {
    return DeviceManagedNetworksConfig(
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsSockaddr: pulumi.Input.fromValue(map['tlsSockaddr'] as String),
    );
  }
}
