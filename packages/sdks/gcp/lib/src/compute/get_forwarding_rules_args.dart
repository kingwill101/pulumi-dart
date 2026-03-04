// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_forwarding_rules_get_forwarding_rules_args_doc}
/// Arguments for getForwardingRules.
/// {@endtemplate}
/// {@macro pulumi_compute_get_forwarding_rules_get_forwarding_rules_args_doc}
class GetForwardingRulesArgs {
  /// The name of the project.
  final pulumi.Input<String>? project;

  /// The region you want to get the forwarding rules from.
  ///
  /// These arguments must be set in either the provider or the resource in order for the information to be queried.
  final pulumi.Input<String>? region;

  /// Creates a new [GetForwardingRulesArgs].
  /// [project] The name of the project.
  /// [region] The region you want to get the forwarding rules from.
  GetForwardingRulesArgs({this.project, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'region': ?region};
  }

  factory GetForwardingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
