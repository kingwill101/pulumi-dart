// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_radius_client_root_certificate.dart';
import 'vpn_server_configuration_radius_server.dart';
import 'vpn_server_configuration_radius_server_root_certificate.dart';

class VpnServerConfigurationRadius {
  /// One or more `clientRootCertificate` blocks as defined below.
  final pulumi.Input<List<VpnServerConfigurationRadiusClientRootCertificate>>? clientRootCertificates;
  /// One or more `serverRootCertificate` blocks as defined below.
  final pulumi.Input<List<VpnServerConfigurationRadiusServerRootCertificate>>? serverRootCertificates;
  /// One or more `server` blocks as defined below.
  final pulumi.Input<List<VpnServerConfigurationRadiusServer>>? servers;

  /// Creates a new [VpnServerConfigurationRadius].
  /// [clientRootCertificates] One or more `clientRootCertificate` blocks as defined below.
  /// [serverRootCertificates] One or more `serverRootCertificate` blocks as defined below.
  /// [servers] One or more `server` blocks as defined below.
  const VpnServerConfigurationRadius({
    this.clientRootCertificates,
    this.serverRootCertificates,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationRadiusClientRootCertificate>, List<Map<String, dynamic>>>(clientRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigurationRadiusClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationRadiusServerRootCertificate>, List<Map<String, dynamic>>>(serverRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigurationRadiusServerRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servers': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationRadiusServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<VpnServerConfigurationRadiusServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnServerConfigurationRadius.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationRadius(
      clientRootCertificates: (() { final guardedValue = map['clientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationRadiusClientRootCertificate>(guardedValue, (value) => VpnServerConfigurationRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serverRootCertificates: (() { final guardedValue = map['serverRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationRadiusServerRootCertificate>(guardedValue, (value) => VpnServerConfigurationRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationRadiusServer>(guardedValue, (value) => VpnServerConfigurationRadiusServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
