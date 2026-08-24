// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_action.dart';
import 'firewall_rule_filter.dart';

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final pulumi.Input<FirewallRuleAction?>? action;
  /// An informative summary of the firewall rule.
  final pulumi.Input<String?>? description;
  final pulumi.Input<FirewallRuleFilter?>? filter;
  /// When true, indicates that the firewall rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  final pulumi.Input<double?>? priority;
  final pulumi.Input<List<String>?>? products;
  /// A short reference tag. Allows you to select related firewall rules.
  final pulumi.Input<String?>? ref;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [FirewallRuleState].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [description] An informative summary of the firewall rule.
  /// [filter] Optional.
  /// [paused] When true, indicates that the firewall rule is currently paused.
  /// [priority] The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  /// [products] Optional.
  /// [ref] A short reference tag. Allows you to select related firewall rules.
  /// [zoneId] Defines an identifier.
  const FirewallRuleState({
    this.action,
    this.description,
    this.filter,
    this.paused,
    this.priority,
    this.products,
    this.ref,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<FirewallRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'description': ?description,
      'filter': ?pulumi.Input.mapOptionalInputValue<FirewallRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'paused': ?paused,
      'priority': ?priority,
      'products': ?products,
      'ref': ?ref,
      'zoneId': ?zoneId,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      products: (() { final guardedValue = map['products']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
