// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server_forwarding_path_dns_v1beta2.dart';

class PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2 {
  /// Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  final pulumi.Input<
    PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2
  >?
  forwardingPath;

  /// IPv4 address to forward queries to.
  final pulumi.Input<String>? ipv4Address;

  /// IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  final pulumi.Input<String>? ipv6Address;
  final pulumi.Input<String>? kind;

  /// Creates a new [PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2].
  /// [forwardingPath] Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  /// [ipv4Address] IPv4 address to forward queries to.
  /// [ipv6Address] IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  /// [kind] Optional.
  PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2({
    this.forwardingPath,
    this.ipv4Address,
    this.ipv6Address,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingPath':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2,
            String
          >(forwardingPath, (value) => value.wireValue),
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'kind': ?kind,
    };
  }

  factory PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2(
      forwardingPath: (() {
        final guardedValue = map['forwardingPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      ipv4Address: (() {
        final guardedValue = map['ipv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
