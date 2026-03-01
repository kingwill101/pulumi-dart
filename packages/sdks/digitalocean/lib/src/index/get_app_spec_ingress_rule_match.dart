// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_ingress_rule_match_authority.dart';
import 'get_app_spec_ingress_rule_match_path.dart';

class GetAppSpecIngressRuleMatch {
  final GetAppSpecIngressRuleMatchAuthority authority;
  /// Paths must start with `/` and must be unique within the app.
  final GetAppSpecIngressRuleMatchPath path;

  /// Creates a new [GetAppSpecIngressRuleMatch].
  /// [authority] Required.
  /// [path] Paths must start with `/` and must be unique within the app.
  GetAppSpecIngressRuleMatch({
    required this.authority,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': authority.toMap(),
      'path': path.toMap(),
    };
  }

  factory GetAppSpecIngressRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleMatch(
      authority: GetAppSpecIngressRuleMatchAuthority.fromMap((map['authority'] as Map).cast<String, dynamic>()),
      path: GetAppSpecIngressRuleMatchPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
    );
  }
}

