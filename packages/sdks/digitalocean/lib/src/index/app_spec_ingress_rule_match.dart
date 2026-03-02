// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_ingress_rule_match_authority.dart';
import 'app_spec_ingress_rule_match_path.dart';

class AppSpecIngressRuleMatch {
  /// The authority (domain) to match on.
  final pulumi.Input<AppSpecIngressRuleMatchAuthority>? authority;
  /// The path to match on.
  final pulumi.Input<AppSpecIngressRuleMatchPath>? path;

  /// Creates a new [AppSpecIngressRuleMatch].
  /// [authority] The authority (domain) to match on.
  /// [path] The path to match on.
  AppSpecIngressRuleMatch({
    this.authority,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?pulumi.Input.mapOptionalInputValue<AppSpecIngressRuleMatchAuthority, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<AppSpecIngressRuleMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
    };
  }

  factory AppSpecIngressRuleMatch.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleMatch(
      authority: map['authority'] == null ? null : (AppSpecIngressRuleMatchAuthority.fromMap((map['authority'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (AppSpecIngressRuleMatchPath.fromMap((map['path'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

