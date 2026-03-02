// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecIngressRuleMatchPath {
  /// Prefix-based match.
  final pulumi.Input<String>? prefix;

  /// Creates a new [AppSpecIngressRuleMatchPath].
  /// [prefix] Prefix-based match.
  AppSpecIngressRuleMatchPath({
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
    };
  }

  factory AppSpecIngressRuleMatchPath.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleMatchPath(
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

