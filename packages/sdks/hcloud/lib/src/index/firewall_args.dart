// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_apply_to.dart';
import 'firewall_rule.dart';

/// {@template pulumi_index_firewall_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_firewall_args_doc}
class FirewallArgs {
  /// Resources the firewall should be assigned to
  final pulumi.Input<List<FirewallApplyTo>>? applyTos;

  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the Firewall.
  final pulumi.Input<String>? name;

  /// Configuration of a Rule from this Firewall.
  final pulumi.Input<List<FirewallRule>>? rules;

  /// Creates a new [FirewallArgs].
  /// [applyTos] Resources the firewall should be assigned to
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Firewall.
  /// [rules] Configuration of a Rule from this Firewall.
  FirewallArgs({this.applyTos, this.labels, this.name, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyTos':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallApplyTo>,
            List<Map<String, dynamic>>
          >(
            applyTos,
            (value) =>
                pulumi.Input.encodeList<FirewallApplyTo, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'labels': ?labels,
      'name': ?name,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<FirewallRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      applyTos: (() {
        final guardedValue = map['applyTos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FirewallApplyTo>(
            guardedValue,
            (value) =>
                FirewallApplyTo.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FirewallRule>(
            guardedValue,
            (value) =>
                FirewallRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
