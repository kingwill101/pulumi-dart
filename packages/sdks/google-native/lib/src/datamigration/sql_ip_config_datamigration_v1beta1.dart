// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_acl_entry_datamigration_v1beta1.dart';

/// IP Management configuration.
class SqlIpConfigDatamigrationV1beta1 {
  /// The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  final pulumi.Input<List<SqlAclEntryDatamigrationV1beta1>>? authorizedNetworks;
  /// Whether the instance is assigned a public IP address or not.
  final pulumi.Input<bool>? enableIpv4;
  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final pulumi.Input<String>? privateNetwork;
  /// Whether SSL connections over IP should be enforced or not.
  final pulumi.Input<bool>? requireSsl;

  /// Creates a new [SqlIpConfigDatamigrationV1beta1].
  /// [authorizedNetworks] The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  /// [enableIpv4] Whether the instance is assigned a public IP address or not.
  /// [privateNetwork] The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  /// [requireSsl] Whether SSL connections over IP should be enforced or not.
  const SqlIpConfigDatamigrationV1beta1({
    this.authorizedNetworks,
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetworks': ?pulumi.Input.mapOptionalInputValue<List<SqlAclEntryDatamigrationV1beta1>, List<Map<String, dynamic>>>(authorizedNetworks, (value) => pulumi.Input.encodeList<SqlAclEntryDatamigrationV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableIpv4': ?enableIpv4,
      'privateNetwork': ?privateNetwork,
      'requireSsl': ?requireSsl,
    };
  }

  factory SqlIpConfigDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return SqlIpConfigDatamigrationV1beta1(
      authorizedNetworks: (() { final guardedValue = map['authorizedNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlAclEntryDatamigrationV1beta1>(guardedValue, (value) => SqlAclEntryDatamigrationV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableIpv4: (() { final guardedValue = map['enableIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateNetwork: (() { final guardedValue = map['privateNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireSsl: (() { final guardedValue = map['requireSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

