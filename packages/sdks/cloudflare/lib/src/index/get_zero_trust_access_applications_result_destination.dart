// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultDestination {
  /// The CIDR range of the destination. Single IPs will be computed as /32.
  final pulumi.Input<String> cidr;
  /// The hostname of the destination. Matches a valid SNI served by an HTTPS origin.
  final pulumi.Input<String> hostname;
  /// The L4 protocol of the destination. When omitted, both UDP and TCP traffic will match.
  /// Available values: "tcp", "udp".
  final pulumi.Input<String> l4Protocol;
  /// A MCP server id configured in ai-controls. Access will secure the MCP server if accessed through a MCP portal.
  final pulumi.Input<String?>? mcpServerId;
  /// The port range of the destination. Can be a single port or a range of ports. When omitted, all ports will match.
  final pulumi.Input<String> portRange;
  /// Available values: "public", "private", "via*mcp*server*portal", "worker", "preview*worker", "all*workers", "all*preview_workers".
  final pulumi.Input<String> type;
  /// The URI of the destination. Public destinations' URIs can include a domain and path with [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
  final pulumi.Input<String> uri;
  /// The VNET ID to match the destination. When omitted, all VNETs will match.
  final pulumi.Input<String> vnetId;
  /// The ID of the Cloudflare Worker to protect with Access. Required when type is `worker` or `previewWorker`.
  final pulumi.Input<String> workerId;

  /// Creates a new [GetZeroTrustAccessApplicationsResultDestination].
  /// [cidr] The CIDR range of the destination. Single IPs will be computed as /32.
  /// [hostname] The hostname of the destination. Matches a valid SNI served by an HTTPS origin.
  /// [l4Protocol] The L4 protocol of the destination. When omitted, both UDP and TCP traffic will match.
  /// [mcpServerId] A MCP server id configured in ai-controls. Access will secure the MCP server if accessed through a MCP portal.
  /// [portRange] The port range of the destination. Can be a single port or a range of ports. When omitted, all ports will match.
  /// [type] Available values: "public", "private", "via*mcp*server*portal", "worker", "preview*worker", "all*workers", "all*preview_workers".
  /// [uri] The URI of the destination. Public destinations' URIs can include a domain and path with [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
  /// [vnetId] The VNET ID to match the destination. When omitted, all VNETs will match.
  /// [workerId] The ID of the Cloudflare Worker to protect with Access. Required when type is `worker` or `previewWorker`.
  const GetZeroTrustAccessApplicationsResultDestination({
    required this.cidr,
    required this.hostname,
    required this.l4Protocol,
    this.mcpServerId,
    required this.portRange,
    required this.type,
    required this.uri,
    required this.vnetId,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'hostname': hostname,
      'l4Protocol': l4Protocol,
      'mcpServerId': ?mcpServerId,
      'portRange': portRange,
      'type': type,
      'uri': uri,
      'vnetId': vnetId,
      'workerId': workerId,
    };
  }

  factory GetZeroTrustAccessApplicationsResultDestination.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultDestination(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      l4Protocol: pulumi.Input.fromValue(map['l4Protocol'] as String),
      mcpServerId: (() { final guardedValue = map['mcpServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRange: pulumi.Input.fromValue(map['portRange'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      vnetId: pulumi.Input.fromValue(map['vnetId'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
