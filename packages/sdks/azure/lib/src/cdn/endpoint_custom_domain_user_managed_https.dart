// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointCustomDomainUserManagedHttps {
  /// The ID of the Key Vault Secret that contains the HTTPS certificate.
  final pulumi.Input<String> keyVaultSecretId;
  /// The minimum TLS protocol version that is used for HTTPS. Possible values are `TLS10` (representing TLS 1.0/1.1), `TLS12` (representing TLS 1.2) and `None` (representing no minimums). Defaults to `TLS12`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? tlsVersion;

  /// Creates a new [EndpointCustomDomainUserManagedHttps].
  /// [keyVaultSecretId] The ID of the Key Vault Secret that contains the HTTPS certificate.
  /// [tlsVersion] The minimum TLS protocol version that is used for HTTPS. Possible values are `TLS10` (representing TLS 1.0/1.1), `TLS12` (representing TLS 1.2) and `None` (representing no minimums). Defaults to `TLS12`.
  const EndpointCustomDomainUserManagedHttps({
    required this.keyVaultSecretId,
    this.tlsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultSecretId': keyVaultSecretId,
      'tlsVersion': ?tlsVersion,
    };
  }

  factory EndpointCustomDomainUserManagedHttps.fromMap(Map<String, dynamic> map) {
    return EndpointCustomDomainUserManagedHttps(
      keyVaultSecretId: pulumi.Input.fromValue(map['keyVaultSecretId'] as String),
      tlsVersion: (() { final guardedValue = map['tlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

