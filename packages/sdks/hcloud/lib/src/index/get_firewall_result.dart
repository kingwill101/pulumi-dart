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
  const GetFirewallResult({
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
      'applyTos': ?(() { final guardedValue = applyTos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallApplyTo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': name,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      applyTos: (() { final guardedValue = map['applyTos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallApplyTo>(guardedValue, (value) => GetFirewallApplyTo.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as int; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallRule>(guardedValue, (value) => GetFirewallRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
