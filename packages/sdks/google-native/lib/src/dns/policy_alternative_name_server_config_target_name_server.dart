// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server_forwarding_path.dart';

class PolicyAlternativeNameServerConfigTargetNameServer {
  /// Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  final pulumi.Input<PolicyAlternativeNameServerConfigTargetNameServerForwardingPath>? forwardingPath;
  /// IPv4 address to forward queries to.
  final pulumi.Input<String>? ipv4Address;
  /// IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  final pulumi.Input<String>? ipv6Address;
  final pulumi.Input<String>? kind;

  /// Creates a new [PolicyAlternativeNameServerConfigTargetNameServer].
  /// [forwardingPath] Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  /// [ipv4Address] IPv4 address to forward queries to.
  /// [ipv6Address] IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  /// [kind] Optional.
  PolicyAlternativeNameServerConfigTargetNameServer({
    this.forwardingPath,
    this.ipv4Address,
    this.ipv6Address,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingPath': ?pulumi.Input.mapOptionalInputValue<PolicyAlternativeNameServerConfigTargetNameServerForwardingPath, String>(forwardingPath, (value) => value.value),
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'kind': ?kind,
    };
  }

  factory PolicyAlternativeNameServerConfigTargetNameServer.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigTargetNameServer(
      forwardingPath: map['forwardingPath'] == null ? null : (PolicyAlternativeNameServerConfigTargetNameServerForwardingPath.fromValue(map['forwardingPath'] as String)).input(),
      ipv4Address: map['ipv4Address'] == null ? null : (map['ipv4Address'] as String).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}

