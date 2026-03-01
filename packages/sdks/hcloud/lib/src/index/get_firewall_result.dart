// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_apply_to.dart';
import 'get_firewall_rule.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// Configuration of the Applied Resources
  final List<GetFirewallApplyTo>? applyTos;
  /// (int) Unique ID of the Firewall.
  final int? id;
  /// (map) User-defined labels (key-value pairs)
  final Map<String, String>? labels;
  final bool? mostRecent;
  /// (string) Name of the Firewall.
  final String name;
  /// (string) Configuration of a Rule from this Firewall.
  final List<GetFirewallRule>? rules;
  final String? withSelector;

  /// Creates a new [GetFirewallResult].
  /// [applyTos] Configuration of the Applied Resources
  /// [id] (int) Unique ID of the Firewall.
  /// [labels] (map) User-defined labels (key-value pairs)
  /// [mostRecent] Optional.
  /// [name] (string) Name of the Firewall.
  /// [rules] (string) Configuration of a Rule from this Firewall.
  /// [withSelector] Optional.
  GetFirewallResult({
    this.applyTos,
    this.id,
    this.labels,
    this.mostRecent,
    required this.name,
    this.rules,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyTos': ?applyTos == null ? null : pulumi.Input.encodeList<GetFirewallApplyTo, Map<String, dynamic>>(applyTos!, (value) => value.toMap()),
      'id': ?id,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': name,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<GetFirewallRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      applyTos: map['applyTos'] == null ? null : pulumi.Input.decodeList<GetFirewallApplyTo>(map['applyTos'], (value) => GetFirewallApplyTo.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as int,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<GetFirewallRule>(map['rules'], (value) => GetFirewallRule.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

