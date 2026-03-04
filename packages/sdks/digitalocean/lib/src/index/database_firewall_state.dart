// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_firewall_rule.dart';

/// Input properties used for looking up and filtering DatabaseFirewall resources.
class DatabaseFirewallState {
  /// The ID of the target database cluster.
  final pulumi.Input<String>? clusterId;

  /// A rule specifying a resource allowed to access the database cluster. The following arguments must be specified:
  final pulumi.Input<List<DatabaseFirewallRule>>? rules;

  /// Creates a new [DatabaseFirewallState].
  /// [clusterId] The ID of the target database cluster.
  /// [rules] A rule specifying a resource allowed to access the database cluster. The following arguments must be specified:
  DatabaseFirewallState({this.clusterId, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseFirewallRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseFirewallRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DatabaseFirewallState.fromMap(Map<String, dynamic> map) {
    return DatabaseFirewallState(
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatabaseFirewallRule>(
            guardedValue,
            (value) => DatabaseFirewallRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
