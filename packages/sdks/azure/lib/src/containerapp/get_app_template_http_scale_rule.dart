// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_http_scale_rule_authentication.dart';

class GetAppTemplateHttpScaleRule {
  final List<GetAppTemplateHttpScaleRuleAuthentication> authentications;
  final String concurrentRequests;
  /// The name of the Container App.
  final String name;

  /// Creates a new [GetAppTemplateHttpScaleRule].
  /// [authentications] Required.
  /// [concurrentRequests] Required.
  /// [name] The name of the Container App.
  GetAppTemplateHttpScaleRule({
    required this.authentications,
    required this.concurrentRequests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.encodeList<GetAppTemplateHttpScaleRuleAuthentication, Map<String, dynamic>>(authentications, (value) => value.toMap()),
      'concurrentRequests': concurrentRequests,
      'name': name,
    };
  }

  factory GetAppTemplateHttpScaleRule.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateHttpScaleRule(
      authentications: pulumi.Input.decodeList<GetAppTemplateHttpScaleRuleAuthentication>(map['authentications'], (value) => GetAppTemplateHttpScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      concurrentRequests: map['concurrentRequests'] as String,
      name: map['name'] as String,
    );
  }
}

