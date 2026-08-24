// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationDestination {
  /// The CIDR range of the destination. Single IPs will be computed as /32.
  final pulumi.Input<String?>? cidr;
  /// The hostname of the destination. Matches a valid SNI served by an HTTPS origin.
  final pulumi.Input<String?>? hostname;
  /// The L4 protocol of the destination. When omitted, both UDP and TCP traffic will match.
  /// Available values: "tcp", "udp".
  final pulumi.Input<String?>? l4Protocol;
  /// A MCP server id configured in ai-controls. Access will secure the MCP server if accessed through a MCP portal.
  final pulumi.Input<String?>? mcpServerId;
  /// The port range of the destination. Can be a single port or a range of ports. When omitted, all ports will match.
  final pulumi.Input<String?>? portRange;
  /// Available values: "public", "private".
  final pulumi.Input<String?>? type;
  /// The URI of the destination. Public destinations' URIs can include a domain and path with [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
  final pulumi.Input<String?>? uri;
  /// The VNET ID to match the destination. When omitted, all VNETs will match.
  final pulumi.Input<String?>? vnetId;

  /// Creates a new [AccessApplicationDestination].
  /// [cidr] The CIDR range of the destination. Single IPs will be computed as /32.
  /// [hostname] The hostname of the destination. Matches a valid SNI served by an HTTPS origin.
  /// [l4Protocol] The L4 protocol of the destination. When omitted, both UDP and TCP traffic will match.
  /// [mcpServerId] A MCP server id configured in ai-controls. Access will secure the MCP server if accessed through a MCP portal.
  /// [portRange] The port range of the destination. Can be a single port or a range of ports. When omitted, all ports will match.
  /// [type] Available values: "public", "private".
  /// [uri] The URI of the destination. Public destinations' URIs can include a domain and path with [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
  /// [vnetId] The VNET ID to match the destination. When omitted, all VNETs will match.
  const AccessApplicationDestination({
    this.cidr,
    this.hostname,
    this.l4Protocol,
    this.mcpServerId,
    this.portRange,
    this.type,
    this.uri,
    this.vnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'hostname': ?hostname,
      'l4Protocol': ?l4Protocol,
      'mcpServerId': ?mcpServerId,
      'portRange': ?portRange,
      'type': ?type,
      'uri': ?uri,
      'vnetId': ?vnetId,
    };
  }

  factory AccessApplicationDestination.fromMap(Map<String, dynamic> map) {
    return AccessApplicationDestination(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      l4Protocol: (() { final guardedValue = map['l4Protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mcpServerId: (() { final guardedValue = map['mcpServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetId: (() { final guardedValue = map['vnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
