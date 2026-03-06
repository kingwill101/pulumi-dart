// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_tcp_scale_rule_authentication.dart';

class GetAppTemplateTcpScaleRule {
  final pulumi.Input<List<GetAppTemplateTcpScaleRuleAuthentication>> authentications;
  final pulumi.Input<String> concurrentRequests;
  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// Creates a new [GetAppTemplateTcpScaleRule].
  /// [authentications] Required.
  /// [concurrentRequests] Required.
  /// [name] The name of the Container App.
  const GetAppTemplateTcpScaleRule({
    required this.authentications,
    required this.concurrentRequests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.mapInputValue<List<GetAppTemplateTcpScaleRuleAuthentication>, List<Map<String, dynamic>>>(authentications, (value) => pulumi.Input.encodeList<GetAppTemplateTcpScaleRuleAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'concurrentRequests': concurrentRequests,
      'name': name,
    };
  }

  factory GetAppTemplateTcpScaleRule.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateTcpScaleRule(
      authentications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppTemplateTcpScaleRuleAuthentication>(map['authentications']!, (value) => GetAppTemplateTcpScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>()))),
      concurrentRequests: pulumi.Input.fromValue(map['concurrentRequests'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

