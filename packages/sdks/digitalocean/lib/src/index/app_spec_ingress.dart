// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_ingress_rule.dart';
import 'app_spec_ingress_secure_header.dart';

class AppSpecIngress {
  /// Rules for configuring HTTP ingress for component routes, CORS, rewrites, and redirects.
  final List<AppSpecIngressRule>? rules;
  final AppSpecIngressSecureHeader? secureHeader;

  /// Creates a new [AppSpecIngress].
  /// [rules] Rules for configuring HTTP ingress for component routes, CORS, rewrites, and redirects.
  /// [secureHeader] Optional.
  AppSpecIngress({
    this.rules,
    this.secureHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AppSpecIngressRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'secureHeader': ?secureHeader == null ? null : secureHeader!.toMap(),
    };
  }

  factory AppSpecIngress.fromMap(Map<String, dynamic> map) {
    return AppSpecIngress(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AppSpecIngressRule>(map['rules'], (value) => AppSpecIngressRule.fromMap((value as Map).cast<String, dynamic>())),
      secureHeader: map['secureHeader'] == null ? null : AppSpecIngressSecureHeader.fromMap((map['secureHeader'] as Map).cast<String, dynamic>()),
    );
  }
}

