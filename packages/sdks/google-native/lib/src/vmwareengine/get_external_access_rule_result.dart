// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_range_response.dart';

/// Result data returned by getExternalAccessRule.
class GetExternalAccessRuleResult {
  /// The action that the external access rule performs.
  final String? action;
  /// Creation time of this resource.
  final String? createTime;
  /// User-provided description for this external access rule.
  final String? description;
  /// If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  final List<IpRangeResponse>? destinationIpRanges;
  /// A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  final List<String>? destinationPorts;
  /// The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  final String? ipProtocol;
  /// The resource name of this external access rule. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  final String? name;
  /// External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  final int? priority;
  /// If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  final List<IpRangeResponse>? sourceIpRanges;
  /// A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  final List<String>? sourcePorts;
  /// The state of the resource.
  final String? state;
  /// System-generated unique identifier for the resource.
  final String? uid;
  /// Last update time of this resource.
  final String? updateTime;

  /// Creates a new [GetExternalAccessRuleResult].
  /// [action] The action that the external access rule performs.
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this external access rule.
  /// [destinationIpRanges] If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  /// [destinationPorts] A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  /// [ipProtocol] The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  /// [name] The resource name of this external access rule. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  /// [priority] External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  /// [sourceIpRanges] If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  /// [sourcePorts] A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  /// [state] The state of the resource.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  const GetExternalAccessRuleResult({
    this.action,
    this.createTime,
    this.description,
    this.destinationIpRanges,
    this.destinationPorts,
    this.ipProtocol,
    this.name,
    this.priority,
    this.sourceIpRanges,
    this.sourcePorts,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'destinationIpRanges': ?(() { final guardedValue = destinationIpRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpRangeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'destinationPorts': ?destinationPorts,
      'ipProtocol': ?ipProtocol,
      'name': ?name,
      'priority': ?priority,
      'sourceIpRanges': ?(() { final guardedValue = sourceIpRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpRangeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourcePorts': ?sourcePorts,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetExternalAccessRuleResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationIpRanges: (() { final guardedValue = map['destinationIpRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpRangeResponse>(guardedValue, (value) => IpRangeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpRangeResponse>(guardedValue, (value) => IpRangeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourcePorts: (() { final guardedValue = map['sourcePorts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
