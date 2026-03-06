// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_acl_entry_response.dart';

/// IP Management configuration.
class SqlIpConfigResponse {
  /// Optional. The name of the allocated IP address range for the private IP Cloud SQL instance. This name refers to an already allocated IP range address. If set, the instance IP address will be created in the allocated range. Note that this IP address range can't be modified after the instance is created. If you change the VPC when configuring connectivity settings for the migration job, this field is not relevant.
  final pulumi.Input<String> allocatedIpRange;
  /// The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  final pulumi.Input<List<SqlAclEntryResponse>> authorizedNetworks;
  /// Whether the instance should be assigned an IPv4 address or not.
  final pulumi.Input<bool> enableIpv4;
  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final pulumi.Input<String> privateNetwork;
  /// Whether SSL connections over IP should be enforced or not.
  final pulumi.Input<bool> requireSsl;

  /// Creates a new [SqlIpConfigResponse].
  /// [allocatedIpRange] Optional. The name of the allocated IP address range for the private IP Cloud SQL instance. This name refers to an already allocated IP range address. If set, the instance IP address will be created in the allocated range. Note that this IP address range can't be modified after the instance is created. If you change the VPC when configuring connectivity settings for the migration job, this field is not relevant.
  /// [authorizedNetworks] The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  /// [enableIpv4] Whether the instance should be assigned an IPv4 address or not.
  /// [privateNetwork] The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  /// [requireSsl] Whether SSL connections over IP should be enforced or not.
  const SqlIpConfigResponse({
    required this.allocatedIpRange,
    required this.authorizedNetworks,
    required this.enableIpv4,
    required this.privateNetwork,
    required this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'authorizedNetworks': pulumi.Input.mapInputValue<List<SqlAclEntryResponse>, List<Map<String, dynamic>>>(authorizedNetworks, (value) => pulumi.Input.encodeList<SqlAclEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableIpv4': enableIpv4,
      'privateNetwork': privateNetwork,
      'requireSsl': requireSsl,
    };
  }

  factory SqlIpConfigResponse.fromMap(Map<String, dynamic> map) {
    return SqlIpConfigResponse(
      allocatedIpRange: pulumi.Input.fromValue(map['allocatedIpRange'] as String),
      authorizedNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<SqlAclEntryResponse>(map['authorizedNetworks']!, (value) => SqlAclEntryResponse.fromMap((value as Map).cast<String, dynamic>()))),
      enableIpv4: pulumi.Input.fromValue(map['enableIpv4'] as bool),
      privateNetwork: pulumi.Input.fromValue(map['privateNetwork'] as String),
      requireSsl: pulumi.Input.fromValue(map['requireSsl'] as bool),
    );
  }
}

