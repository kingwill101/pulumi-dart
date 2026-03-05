// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_rule.dart';

/// Result data returned by getForwardingRules.
class GetForwardingRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The project name being queried.
  final String? project;
  /// The region being queried.
  final String? region;
  /// This is a list of the forwarding rules in the project. Each forwarding rule will list the backend, description, ip address. name, network, self link, service label, service name, and subnet.
  final List<GetForwardingRulesRule> rules;

  /// Creates a new [GetForwardingRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] The project name being queried.
  /// [region] The region being queried.
  /// [rules] This is a list of the forwarding rules in the project. Each forwarding rule will list the backend, description, ip address. name, network, self link, service label, service name, and subnet.
  GetForwardingRulesResult({
    required this.id,
    this.project,
    this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'project': ?project,
      'region': ?region,
      'rules': pulumi.Input.encodeList<GetForwardingRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetForwardingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesResult(
      id: map['id'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetForwardingRulesRule>(map['rules']!, (value) => GetForwardingRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

