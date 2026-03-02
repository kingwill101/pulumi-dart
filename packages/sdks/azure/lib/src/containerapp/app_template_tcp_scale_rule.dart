// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_tcp_scale_rule_authentication.dart';

class AppTemplateTcpScaleRule {
  /// Zero or more `authentication` blocks as defined below.
  final pulumi.Input<List<AppTemplateTcpScaleRuleAuthentication>>? authentications;
  /// The number of concurrent requests to trigger scaling.
  final pulumi.Input<String> concurrentRequests;
  /// The name of the Scaling Rule
  final pulumi.Input<String> name;

  /// Creates a new [AppTemplateTcpScaleRule].
  /// [authentications] Zero or more `authentication` blocks as defined below.
  /// [concurrentRequests] The number of concurrent requests to trigger scaling.
  /// [name] The name of the Scaling Rule
  AppTemplateTcpScaleRule({
    this.authentications,
    required this.concurrentRequests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateTcpScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<AppTemplateTcpScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'concurrentRequests': concurrentRequests,
      'name': name,
    };
  }

  factory AppTemplateTcpScaleRule.fromMap(Map<String, dynamic> map) {
    return AppTemplateTcpScaleRule(
      authentications: map['authentications'] == null ? null : (pulumi.Input.decodeList<AppTemplateTcpScaleRuleAuthentication>(map['authentications'], (value) => AppTemplateTcpScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      concurrentRequests: (map['concurrentRequests'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

