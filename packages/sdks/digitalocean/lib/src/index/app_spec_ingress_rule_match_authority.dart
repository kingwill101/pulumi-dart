// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecIngressRuleMatchAuthority {
  /// Exact match.
  final pulumi.Input<String>? exact;

  /// Creates a new [AppSpecIngressRuleMatchAuthority].
  /// [exact] Exact match.
  AppSpecIngressRuleMatchAuthority({this.exact});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exact': ?exact};
  }

  factory AppSpecIngressRuleMatchAuthority.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleMatchAuthority(
      exact: (() {
        final guardedValue = map['exact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
