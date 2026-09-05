// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_http_scale_rule_authentication.dart';

class AppTemplateHttpScaleRule {
  /// Zero or more `authentication` blocks as defined below.
  final pulumi.Input<List<AppTemplateHttpScaleRuleAuthentication>?>? authentications;
  /// The number of concurrent requests to trigger scaling.
  final pulumi.Input<String> concurrentRequests;
  /// The name of the Scaling Rule
  final pulumi.Input<String> name;

  /// Creates a new [AppTemplateHttpScaleRule].
  /// [authentications] Zero or more `authentication` blocks as defined below.
  /// [concurrentRequests] The number of concurrent requests to trigger scaling.
  /// [name] The name of the Scaling Rule
  const AppTemplateHttpScaleRule({
    this.authentications,
    required this.concurrentRequests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateHttpScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<AppTemplateHttpScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'concurrentRequests': concurrentRequests,
      'name': name,
    };
  }

  factory AppTemplateHttpScaleRule.fromMap(Map<String, dynamic> map) {
    return AppTemplateHttpScaleRule(
      authentications: (() { final guardedValue = map['authentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppTemplateHttpScaleRuleAuthentication>(guardedValue, (value) => AppTemplateHttpScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      concurrentRequests: pulumi.Input.fromValue(map['concurrentRequests'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
