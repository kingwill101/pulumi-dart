// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of domain controller to which SCOM and SQL servers join for AuthN/AuthZ.
class DomainControllerPropertiesResponse {
  /// IP address of DNS server
  final pulumi.Input<String>? dnsServer;
  /// Fully qualified domain name
  final pulumi.Input<String>? domainName;
  /// Organizational Unit path in which the SCOM servers will be present
  final pulumi.Input<String>? ouPath;

  /// Creates a new [DomainControllerPropertiesResponse].
  /// [dnsServer] IP address of DNS server
  /// [domainName] Fully qualified domain name
  /// [ouPath] Organizational Unit path in which the SCOM servers will be present
  DomainControllerPropertiesResponse({
    this.dnsServer,
    this.domainName,
    this.ouPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServer': ?dnsServer,
      'domainName': ?domainName,
      'ouPath': ?ouPath,
    };
  }

  factory DomainControllerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DomainControllerPropertiesResponse(
      dnsServer: map['dnsServer'] == null ? null : (map['dnsServer'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      ouPath: map['ouPath'] == null ? null : (map['ouPath'] as String).input(),
    );
  }
}

