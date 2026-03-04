// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointCustomDomainCdnManagedHttps {
  /// The type of HTTPS certificate. Possible values are `Shared` and `Dedicated`.
  final pulumi.Input<String> certificateType;

  /// The type of protocol. Possible values are `ServerNameIndication` and `IPBased`.
  final pulumi.Input<String> protocolType;

  /// The minimum TLS protocol version that is used for HTTPS. Possible values are `TLS10` (representing TLS 1.0/1.1), `TLS12` (representing TLS 1.2) and `None` (representing no minimums). Defaults to `TLS12`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? tlsVersion;

  /// Creates a new [EndpointCustomDomainCdnManagedHttps].
  /// [certificateType] The type of HTTPS certificate. Possible values are `Shared` and `Dedicated`.
  /// [protocolType] The type of protocol. Possible values are `ServerNameIndication` and `IPBased`.
  /// [tlsVersion] The minimum TLS protocol version that is used for HTTPS. Possible values are `TLS10` (representing TLS 1.0/1.1), `TLS12` (representing TLS 1.2) and `None` (representing no minimums). Defaults to `TLS12`.
  EndpointCustomDomainCdnManagedHttps({
    required this.certificateType,
    required this.protocolType,
    this.tlsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateType': certificateType,
      'protocolType': protocolType,
      'tlsVersion': ?tlsVersion,
    };
  }

  factory EndpointCustomDomainCdnManagedHttps.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointCustomDomainCdnManagedHttps(
      certificateType: pulumi.Input.fromValue(map['certificateType'] as String),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      tlsVersion: (() {
        final guardedValue = map['tlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
