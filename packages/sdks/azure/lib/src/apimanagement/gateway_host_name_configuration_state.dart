// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayHostNameConfiguration resources.
class GatewayHostNameConfigurationState {
  /// The ID of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The certificate ID to be used for TLS connection establishment.
  final pulumi.Input<String>? certificateId;
  /// The name of the API Management Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gatewayName;
  /// The host name to use for the API Management Gateway Host Name Configuration.
  final pulumi.Input<String>? hostName;
  /// Whether HTTP/2.0 is supported. Defaults to `true`.
  final pulumi.Input<bool>? http2Enabled;
  /// The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether the API Management Gateway requests a client certificate.
  final pulumi.Input<bool>? requestClientCertificateEnabled;
  /// Whether TLS 1.0 is supported.
  final pulumi.Input<bool>? tls10Enabled;
  /// Whether TLS 1.1 is supported.
  final pulumi.Input<bool>? tls11Enabled;

  /// Creates a new [GatewayHostNameConfigurationState].
  /// [apiManagementId] The ID of the API Management Service. Changing this forces a new resource to be created.
  /// [certificateId] The certificate ID to be used for TLS connection establishment.
  /// [gatewayName] The name of the API Management Gateway. Changing this forces a new resource to be created.
  /// [hostName] The host name to use for the API Management Gateway Host Name Configuration.
  /// [http2Enabled] Whether HTTP/2.0 is supported. Defaults to `true`.
  /// [name] The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created.
  /// [requestClientCertificateEnabled] Whether the API Management Gateway requests a client certificate.
  /// [tls10Enabled] Whether TLS 1.0 is supported.
  /// [tls11Enabled] Whether TLS 1.1 is supported.
  GatewayHostNameConfigurationState({
    this.apiManagementId,
    this.certificateId,
    this.gatewayName,
    this.hostName,
    this.http2Enabled,
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
      'name': ?name,
      'requestClientCertificateEnabled': ?requestClientCertificateEnabled,
      'tls10Enabled': ?tls10Enabled,
      'tls11Enabled': ?tls11Enabled,
    };
  }

  factory GatewayHostNameConfigurationState.fromMap(Map<String, dynamic> map) {
    return GatewayHostNameConfigurationState(
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestClientCertificateEnabled: (() { final guardedValue = map['requestClientCertificateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tls10Enabled: (() { final guardedValue = map['tls10Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tls11Enabled: (() { final guardedValue = map['tls11Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

