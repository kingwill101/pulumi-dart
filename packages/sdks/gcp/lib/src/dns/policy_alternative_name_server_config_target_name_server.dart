// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyAlternativeNameServerConfigTargetNameServer {
  /// Forwarding path for this TargetNameServer. If unset or `default` Cloud DNS will make forwarding
  /// decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
  /// to the Internet. When set to `private`, Cloud DNS will always send queries through VPC for this target
  /// Possible values are: `default`, `private`.
  ///
  /// &lt;a name="nestedDns64Config"&gt;&lt;/a&gt;The `dns64Config` block supports:
  final pulumi.Input<String?>? forwardingPath;
  /// IPv4 address to forward to.
  final pulumi.Input<String> ipv4Address;

  /// Creates a new [PolicyAlternativeNameServerConfigTargetNameServer].
  /// [forwardingPath] Forwarding path for this TargetNameServer. If unset or `default` Cloud DNS will make forwarding
  /// [ipv4Address] IPv4 address to forward to.
  const PolicyAlternativeNameServerConfigTargetNameServer({
    this.forwardingPath,
    required this.ipv4Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingPath': ?forwardingPath,
      'ipv4Address': ipv4Address,
    };
  }

  factory PolicyAlternativeNameServerConfigTargetNameServer.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigTargetNameServer(
      forwardingPath: (() { final guardedValue = map['forwardingPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
    );
  }
}
