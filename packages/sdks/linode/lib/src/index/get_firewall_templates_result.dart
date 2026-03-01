// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_templates_filter.dart';
import 'get_firewall_templates_firewall_template.dart';

/// Result data returned by getFirewallTemplates.
class GetFirewallTemplatesResult {
  final List<GetFirewallTemplatesFilter>? filters;
  final List<GetFirewallTemplatesFirewallTemplate> firewallTemplates;
  final String id;

  /// Creates a new [GetFirewallTemplatesResult].
  /// [filters] Optional.
  /// [firewallTemplates] Required.
  /// [id] Required.
  GetFirewallTemplatesResult({
    this.filters,
    required this.firewallTemplates,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetFirewallTemplatesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'firewallTemplates': pulumi.Input.encodeList<GetFirewallTemplatesFirewallTemplate, Map<String, dynamic>>(firewallTemplates, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetFirewallTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplatesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetFirewallTemplatesFilter>(map['filters'], (value) => GetFirewallTemplatesFilter.fromMap((value as Map).cast<String, dynamic>())),
      firewallTemplates: pulumi.Input.decodeList<GetFirewallTemplatesFirewallTemplate>(map['firewallTemplates'], (value) => GetFirewallTemplatesFirewallTemplate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

