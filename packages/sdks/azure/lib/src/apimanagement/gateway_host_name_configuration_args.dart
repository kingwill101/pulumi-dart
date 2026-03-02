// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_gateway_host_name_configuration_gateway_host_name_configuration_args_doc}
/// The set of arguments for GatewayHostNameConfiguration.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_host_name_configuration_gateway_host_name_configuration_args_doc}
class GatewayHostNameConfigurationArgs {
  /// The ID of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementId;
  /// The certificate ID to be used for TLS connection establishment.
  final pulumi.Input<String> certificateId;
  /// The name of the API Management Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> gatewayName;
  /// The host name to use for the API Management Gateway Host Name Configuration.
  final pulumi.Input<String> hostName;
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

  /// Creates a new [GatewayHostNameConfigurationArgs].
  /// [apiManagementId] The ID of the API Management Service. Changing this forces a new resource to be created.
  /// [certificateId] The certificate ID to be used for TLS connection establishment.
  /// [gatewayName] The name of the API Management Gateway. Changing this forces a new resource to be created.
  /// [hostName] The host name to use for the API Management Gateway Host Name Configuration.
  /// [http2Enabled] Whether HTTP/2.0 is supported. Defaults to `true`.
  /// [name] The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created.
  /// [requestClientCertificateEnabled] Whether the API Management Gateway requests a client certificate.
  /// [tls10Enabled] Whether TLS 1.0 is supported.
  /// [tls11Enabled] Whether TLS 1.1 is supported.
  GatewayHostNameConfigurationArgs({
    required this.apiManagementId,
    required this.certificateId,
    required this.gatewayName,
    required this.hostName,
    this.http2Enabled,
    this.name,
    this.requestClientCertificateEnabled,
    this.tls10Enabled,
    this.tls11Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'certificateId': certificateId,
      'gatewayName': gatewayName,
      'hostName': hostName,
      'http2Enabled': ?http2Enabled,
      'name': ?name,
      'requestClientCertificateEnabled': ?requestClientCertificateEnabled,
      'tls10Enabled': ?tls10Enabled,
      'tls11Enabled': ?tls11Enabled,
    };
  }

  factory GatewayHostNameConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GatewayHostNameConfigurationArgs(
      apiManagementId: (map['apiManagementId'] as String).input(),
      certificateId: (map['certificateId'] as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      hostName: (map['hostName'] as String).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      requestClientCertificateEnabled: map['requestClientCertificateEnabled'] == null ? null : (map['requestClientCertificateEnabled']! as bool).input(),
      tls10Enabled: map['tls10Enabled'] == null ? null : (map['tls10Enabled']! as bool).input(),
      tls11Enabled: map['tls11Enabled'] == null ? null : (map['tls11Enabled']! as bool).input(),
    );
  }
}

