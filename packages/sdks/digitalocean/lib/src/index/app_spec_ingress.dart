// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_ingress_rule.dart';
import 'app_spec_ingress_secure_header.dart';

class AppSpecIngress {
  /// Rules for configuring HTTP ingress for component routes, CORS, rewrites, and redirects.
  final pulumi.Input<List<AppSpecIngressRule>>? rules;
  final pulumi.Input<AppSpecIngressSecureHeader>? secureHeader;

  /// Creates a new [AppSpecIngress].
  /// [rules] Rules for configuring HTTP ingress for component routes, CORS, rewrites, and redirects.
  /// [secureHeader] Optional.
  AppSpecIngress({this.rules, this.secureHeader});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppSpecIngressRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  AppSpecIngressRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'secureHeader':
          ?pulumi.Input.mapOptionalInputValue<
            AppSpecIngressSecureHeader,
            Map<String, dynamic>
          >(secureHeader, (value) => value.toMap()),
    };
  }

  factory AppSpecIngress.fromMap(Map<String, dynamic> map) {
    return AppSpecIngress(
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppSpecIngressRule>(
            guardedValue,
            (value) => AppSpecIngressRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      secureHeader: (() {
        final guardedValue = map['secureHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpecIngressSecureHeader.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
