// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_url_dispatch_rules_dispatch_rule.dart';

/// {@template pulumi_appengine_application_url_dispatch_rules_application_url_dispatch_rules_args_doc}
/// The set of arguments for ApplicationUrlDispatchRules.
/// {@endtemplate}
/// {@macro pulumi_appengine_application_url_dispatch_rules_application_url_dispatch_rules_args_doc}
class ApplicationUrlDispatchRulesArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Rules to match an HTTP request and dispatch that request to a service.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationUrlDispatchRulesDispatchRule>> dispatchRules;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ApplicationUrlDispatchRulesArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dispatchRules] Rules to match an HTTP request and dispatch that request to a service.
  /// [project] The ID of the project in which the resource belongs.
  const ApplicationUrlDispatchRulesArgs({
    this.deletionPolicy,
    required this.dispatchRules,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'dispatchRules': pulumi.Input.mapInputValue<List<ApplicationUrlDispatchRulesDispatchRule>, List<Map<String, dynamic>>>(dispatchRules, (value) => pulumi.Input.encodeList<ApplicationUrlDispatchRulesDispatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory ApplicationUrlDispatchRulesArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationUrlDispatchRulesArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dispatchRules: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationUrlDispatchRulesDispatchRule>(map['dispatchRules']!, (value) => ApplicationUrlDispatchRulesDispatchRule.fromMap((value as Map).cast<String, dynamic>()))),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
