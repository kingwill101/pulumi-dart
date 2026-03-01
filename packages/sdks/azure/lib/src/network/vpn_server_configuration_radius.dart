// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_radius_client_root_certificate.dart';
import 'vpn_server_configuration_radius_server.dart';
import 'vpn_server_configuration_radius_server_root_certificate.dart';

class VpnServerConfigurationRadius {
  /// One or more `client_root_certificate` blocks as defined below.
  final List<VpnServerConfigurationRadiusClientRootCertificate>? clientRootCertificates;
  /// One or more `server_root_certificate` blocks as defined below.
  final List<VpnServerConfigurationRadiusServerRootCertificate>? serverRootCertificates;
  /// One or more `server` blocks as defined below.
  final List<VpnServerConfigurationRadiusServer>? servers;

  /// Creates a new [VpnServerConfigurationRadius].
  /// [clientRootCertificates] One or more `client_root_certificate` blocks as defined below.
  /// [serverRootCertificates] One or more `server_root_certificate` blocks as defined below.
  /// [servers] One or more `server` blocks as defined below.
  VpnServerConfigurationRadius({
    this.clientRootCertificates,
    this.serverRootCertificates,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRootCertificates': ?clientRootCertificates == null ? null : pulumi.Input.encodeList<VpnServerConfigurationRadiusClientRootCertificate, Map<String, dynamic>>(clientRootCertificates!, (value) => value.toMap()),
      'serverRootCertificates': ?serverRootCertificates == null ? null : pulumi.Input.encodeList<VpnServerConfigurationRadiusServerRootCertificate, Map<String, dynamic>>(serverRootCertificates!, (value) => value.toMap()),
      'servers': ?servers == null ? null : pulumi.Input.encodeList<VpnServerConfigurationRadiusServer, Map<String, dynamic>>(servers!, (value) => value.toMap()),
    };
  }

  factory VpnServerConfigurationRadius.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationRadius(
      clientRootCertificates: map['clientRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnServerConfigurationRadiusClientRootCertificate>(map['clientRootCertificates'], (value) => VpnServerConfigurationRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      serverRootCertificates: map['serverRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnServerConfigurationRadiusServerRootCertificate>(map['serverRootCertificates'], (value) => VpnServerConfigurationRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      servers: map['servers'] == null ? null : pulumi.Input.decodeList<VpnServerConfigurationRadiusServer>(map['servers'], (value) => VpnServerConfigurationRadiusServer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

