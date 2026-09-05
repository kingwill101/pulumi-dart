// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGatewayHostNameConfiguration.
class GetGatewayHostNameConfigurationResult {
  final String? apiManagementId;
  /// The ID of the certificate used for TLS connection establishment.
  final String? certificateId;
  final String? gatewayName;
  /// The host name used for the API Management Gateway Host Name Configuration.
  final String? hostName;
  /// Whether HTTP/2.0 is supported.
  final bool? http2Enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Whether the API Management Gateway requests a client certificate.
  final bool? requestClientCertificateEnabled;
  /// Whether TLS 1.0 is supported.
  final bool? tls10Enabled;
  /// Whether TLS 1.1 is supported.
  final bool? tls11Enabled;

  /// Creates a new [GetGatewayHostNameConfigurationResult].
  /// [apiManagementId] Optional.
  /// [certificateId] The ID of the certificate used for TLS connection establishment.
  /// [gatewayName] Optional.
  /// [hostName] The host name used for the API Management Gateway Host Name Configuration.
  /// [http2Enabled] Whether HTTP/2.0 is supported.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [requestClientCertificateEnabled] Whether the API Management Gateway requests a client certificate.
  /// [tls10Enabled] Whether TLS 1.0 is supported.
  /// [tls11Enabled] Whether TLS 1.1 is supported.
  const GetGatewayHostNameConfigurationResult({
    this.apiManagementId,
    this.certificateId,
    this.gatewayName,
    this.hostName,
    this.http2Enabled,
    this.id,
    this.name,
    this.requestClientCertificateEnabled,
    this.tls10Enabled,
    this.tls11Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'certificateId': ?certificateId,
      'gatewayName': ?gatewayName,
      'hostName': ?hostName,
      'http2Enabled': ?http2Enabled,
      'id': ?id,
      'name': ?name,
      'requestClientCertificateEnabled': ?requestClientCertificateEnabled,
      'tls10Enabled': ?tls10Enabled,
      'tls11Enabled': ?tls11Enabled,
    };
  }

  factory GetGatewayHostNameConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayHostNameConfigurationResult(
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestClientCertificateEnabled: (() { final guardedValue = map['requestClientCertificateEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tls10Enabled: (() { final guardedValue = map['tls10Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tls11Enabled: (() { final guardedValue = map['tls11Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
