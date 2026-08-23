// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_access_rule_action.dart';
import 'ip_range.dart';

/// {@template pulumi_vmwareengine_v1_external_access_rule_args_doc}
/// The set of arguments for ExternalAccessRule.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_external_access_rule_args_doc}
class ExternalAccessRuleArgs {
  /// The action that the external access rule performs.
  final pulumi.Input<ExternalAccessRuleAction>? action;
  /// User-provided description for this external access rule.
  final pulumi.Input<String>? description;
  /// If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  final pulumi.Input<List<IpRange>>? destinationIpRanges;
  /// A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  final pulumi.Input<List<String>>? destinationPorts;
  /// Required. The user-provided identifier of the `ExternalAccessRule` to be created. This identifier must be unique among `ExternalAccessRule` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> externalAccessRuleId;
  /// The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  final pulumi.Input<String>? ipProtocol;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> networkPolicyId;
  /// External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  final pulumi.Input<List<IpRange>>? sourceIpRanges;
  /// A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  final pulumi.Input<List<String>>? sourcePorts;

  /// Creates a new [ExternalAccessRuleArgs].
  /// [action] The action that the external access rule performs.
  /// [description] User-provided description for this external access rule.
  /// [destinationIpRanges] If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  /// [destinationPorts] A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  /// [externalAccessRuleId] Required. The user-provided identifier of the `ExternalAccessRule` to be created. This identifier must be unique among `ExternalAccessRule` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [ipProtocol] The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  /// [location] Optional.
  /// [networkPolicyId] Required.
  /// [priority] External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceIpRanges] If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  /// [sourcePorts] A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  const ExternalAccessRuleArgs({
    this.action,
    this.description,
    this.destinationIpRanges,
    this.destinationPorts,
    required this.externalAccessRuleId,
    this.ipProtocol,
    this.location,
    required this.networkPolicyId,
    this.priority,
    this.project,
    this.requestId,
    this.sourceIpRanges,
    this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ExternalAccessRuleAction, String>(action, (value) => value.wireValue),
      'description': ?description,
      'destinationIpRanges': ?pulumi.Input.mapOptionalInputValue<List<IpRange>, List<Map<String, dynamic>>>(destinationIpRanges, (value) => pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPorts': ?destinationPorts,
      'externalAccessRuleId': externalAccessRuleId,
      'ipProtocol': ?ipProtocol,
      'location': ?location,
      'networkPolicyId': networkPolicyId,
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'sourceIpRanges': ?pulumi.Input.mapOptionalInputValue<List<IpRange>, List<Map<String, dynamic>>>(sourceIpRanges, (value) => pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePorts': ?sourcePorts,
    };
  }

  factory ExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalAccessRuleAction.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationIpRanges: (() { final guardedValue = map['destinationIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpRange>(guardedValue, (value) => IpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      externalAccessRuleId: pulumi.Input.fromValue(map['externalAccessRuleId'] as String),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPolicyId: pulumi.Input.fromValue(map['networkPolicyId'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpRange>(guardedValue, (value) => IpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourcePorts: (() { final guardedValue = map['sourcePorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
