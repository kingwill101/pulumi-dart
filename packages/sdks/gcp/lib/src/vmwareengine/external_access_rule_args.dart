// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_access_rule_destination_ip_range.dart';
import 'external_access_rule_source_ip_range.dart';

/// {@template pulumi_vmwareengine_external_access_rule_external_access_rule_args_doc}
/// The set of arguments for ExternalAccessRule.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_external_access_rule_external_access_rule_args_doc}
class ExternalAccessRuleArgs {
  /// The action that the external access rule performs.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String> action;
  /// User-provided description for the external access rule.
  final pulumi.Input<String>? description;
  /// If destination ranges are specified, the external access rule applies only to
  /// traffic that has a destination IP address in these ranges.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalAccessRuleDestinationIpRange>> destinationIpRanges;
  /// A list of destination ports to which the external access rule applies.
  final pulumi.Input<List<String>> destinationPorts;
  /// The IP protocol to which the external access rule applies.
  final pulumi.Input<String> ipProtocol;
  /// The ID of the external access rule.
  final pulumi.Input<String>? name;
  /// The resource name of the network policy.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  final pulumi.Input<String> parent;
  /// External access rule priority, which determines the external access rule to use when multiple rules apply.
  final pulumi.Input<int> priority;
  /// If source ranges are specified, the external access rule applies only to
  /// traffic that has a source IP address in these ranges.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalAccessRuleSourceIpRange>> sourceIpRanges;
  /// A list of source ports to which the external access rule applies.
  final pulumi.Input<List<String>> sourcePorts;

  /// Creates a new [ExternalAccessRuleArgs].
  /// [action] The action that the external access rule performs.
  /// [description] User-provided description for the external access rule.
  /// [destinationIpRanges] If destination ranges are specified, the external access rule applies only to
  /// [destinationPorts] A list of destination ports to which the external access rule applies.
  /// [ipProtocol] The IP protocol to which the external access rule applies.
  /// [name] The ID of the external access rule.
  /// [parent] The resource name of the network policy.
  /// [priority] External access rule priority, which determines the external access rule to use when multiple rules apply.
  /// [sourceIpRanges] If source ranges are specified, the external access rule applies only to
  /// [sourcePorts] A list of source ports to which the external access rule applies.
  ExternalAccessRuleArgs({
    required this.action,
    this.description,
    required this.destinationIpRanges,
    required this.destinationPorts,
    required this.ipProtocol,
    this.name,
    required this.parent,
    required this.priority,
    required this.sourceIpRanges,
    required this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'destinationIpRanges': pulumi.Input.mapInputValue<List<ExternalAccessRuleDestinationIpRange>, List<Map<String, dynamic>>>(destinationIpRanges, (value) => pulumi.Input.encodeList<ExternalAccessRuleDestinationIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPorts': destinationPorts,
      'ipProtocol': ipProtocol,
      'name': ?name,
      'parent': parent,
      'priority': priority,
      'sourceIpRanges': pulumi.Input.mapInputValue<List<ExternalAccessRuleSourceIpRange>, List<Map<String, dynamic>>>(sourceIpRanges, (value) => pulumi.Input.encodeList<ExternalAccessRuleSourceIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePorts': sourcePorts,
    };
  }

  factory ExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleArgs(
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationIpRanges: (pulumi.Input.decodeList<ExternalAccessRuleDestinationIpRange>(map['destinationIpRanges'], (value) => ExternalAccessRuleDestinationIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationPorts: ((map['destinationPorts'] as List).cast<String>()).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: (map['parent'] as String).input(),
      priority: (map['priority'] as int).input(),
      sourceIpRanges: (pulumi.Input.decodeList<ExternalAccessRuleSourceIpRange>(map['sourceIpRanges'], (value) => ExternalAccessRuleSourceIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourcePorts: ((map['sourcePorts'] as List).cast<String>()).input(),
    );
  }
}

