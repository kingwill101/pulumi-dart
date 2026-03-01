// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_templates_filter.dart';

/// {@template pulumi_index_get_firewall_templates_get_firewall_templates_args_doc}
/// Arguments for getFirewallTemplates.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_templates_get_firewall_templates_args_doc}
class GetFirewallTemplatesArgs {
  final pulumi.Input<List<GetFirewallTemplatesFilter>>? filters;

  /// Creates a new [GetFirewallTemplatesArgs].
  /// [filters] Optional.
  GetFirewallTemplatesArgs({
    pulumi.Output<List<GetFirewallTemplatesFilter>>? filters,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetFirewallTemplatesFilter>>(filters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallTemplatesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetFirewallTemplatesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFirewallTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplatesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetFirewallTemplatesFilter>>(pulumi.Input.decodeList<GetFirewallTemplatesFilter>(map['filters'], (value) => GetFirewallTemplatesFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

