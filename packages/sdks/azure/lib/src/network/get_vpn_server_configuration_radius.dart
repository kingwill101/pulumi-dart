// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_server_configuration_radius_client_root_certificate.dart';
import 'get_vpn_server_configuration_radius_server.dart';
import 'get_vpn_server_configuration_radius_server_root_certificate.dart';

class GetVpnServerConfigurationRadius {
  /// One or more `clientRootCertificate` blocks as defined below.
  final pulumi.Input<List<GetVpnServerConfigurationRadiusClientRootCertificate>> clientRootCertificates;
  /// One or more `serverRootCertificate` blocks as defined below.
  final pulumi.Input<List<GetVpnServerConfigurationRadiusServerRootCertificate>> serverRootCertificates;
  /// One or more `server` blocks as defined below.
  final pulumi.Input<List<GetVpnServerConfigurationRadiusServer>> servers;

  /// Creates a new [GetVpnServerConfigurationRadius].
  /// [clientRootCertificates] One or more `clientRootCertificate` blocks as defined below.
  /// [serverRootCertificates] One or more `serverRootCertificate` blocks as defined below.
  /// [servers] One or more `server` blocks as defined below.
  const GetVpnServerConfigurationRadius({
    required this.clientRootCertificates,
    required this.serverRootCertificates,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRootCertificates': pulumi.Input.mapInputValue<List<GetVpnServerConfigurationRadiusClientRootCertificate>, List<Map<String, dynamic>>>(clientRootCertificates, (value) => pulumi.Input.encodeList<GetVpnServerConfigurationRadiusClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverRootCertificates': pulumi.Input.mapInputValue<List<GetVpnServerConfigurationRadiusServerRootCertificate>, List<Map<String, dynamic>>>(serverRootCertificates, (value) => pulumi.Input.encodeList<GetVpnServerConfigurationRadiusServerRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servers': pulumi.Input.mapInputValue<List<GetVpnServerConfigurationRadiusServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<GetVpnServerConfigurationRadiusServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVpnServerConfigurationRadius.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationRadius(
      clientRootCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpnServerConfigurationRadiusClientRootCertificate>(map['clientRootCertificates']!, (value) => GetVpnServerConfigurationRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      serverRootCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpnServerConfigurationRadiusServerRootCertificate>(map['serverRootCertificates']!, (value) => GetVpnServerConfigurationRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      servers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpnServerConfigurationRadiusServer>(map['servers']!, (value) => GetVpnServerConfigurationRadiusServer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
