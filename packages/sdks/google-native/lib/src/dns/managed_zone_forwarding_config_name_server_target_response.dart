// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneForwardingConfigNameServerTargetResponse {
  /// Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  final pulumi.Input<String> forwardingPath;

  /// IPv4 address of a target name server.
  final pulumi.Input<String> ipv4Address;

  /// IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  final pulumi.Input<String> ipv6Address;
  final pulumi.Input<String> kind;

  /// Creates a new [ManagedZoneForwardingConfigNameServerTargetResponse].
  /// [forwardingPath] Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  /// [ipv4Address] IPv4 address of a target name server.
  /// [ipv6Address] IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  /// [kind] Required.
  ManagedZoneForwardingConfigNameServerTargetResponse({
    required this.forwardingPath,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingPath': forwardingPath,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'kind': kind,
    };
  }

  factory ManagedZoneForwardingConfigNameServerTargetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneForwardingConfigNameServerTargetResponse(
      forwardingPath: pulumi.Input.fromValue(map['forwardingPath'] as String),
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
