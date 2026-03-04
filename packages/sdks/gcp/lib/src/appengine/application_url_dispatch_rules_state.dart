// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_url_dispatch_rules_dispatch_rule.dart';

/// Input properties used for looking up and filtering ApplicationUrlDispatchRules resources.
class ApplicationUrlDispatchRulesState {
  /// Rules to match an HTTP request and dispatch that request to a service.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationUrlDispatchRulesDispatchRule>>?
  dispatchRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ApplicationUrlDispatchRulesState].
  /// [dispatchRules] Rules to match an HTTP request and dispatch that request to a service.
  /// [project] The ID of the project in which the resource belongs.
  ApplicationUrlDispatchRulesState({this.dispatchRules, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationUrlDispatchRulesDispatchRule>,
            List<Map<String, dynamic>>
          >(
            dispatchRules,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationUrlDispatchRulesDispatchRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
    };
  }

  factory ApplicationUrlDispatchRulesState.fromMap(Map<String, dynamic> map) {
    return ApplicationUrlDispatchRulesState(
      dispatchRules: (() {
        final guardedValue = map['dispatchRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationUrlDispatchRulesDispatchRule>(
            guardedValue,
            (value) => ApplicationUrlDispatchRulesDispatchRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
