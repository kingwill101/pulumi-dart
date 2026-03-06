// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_ingress_rule_match_authority.dart';
import 'get_app_spec_ingress_rule_match_path.dart';

class GetAppSpecIngressRuleMatch {
  final pulumi.Input<GetAppSpecIngressRuleMatchAuthority> authority;
  /// Paths must start with `/` and must be unique within the app.
  final pulumi.Input<GetAppSpecIngressRuleMatchPath> path;

  /// Creates a new [GetAppSpecIngressRuleMatch].
  /// [authority] Required.
  /// [path] Paths must start with `/` and must be unique within the app.
  const GetAppSpecIngressRuleMatch({
    required this.authority,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': pulumi.Input.mapInputValue<GetAppSpecIngressRuleMatchAuthority, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'path': pulumi.Input.mapInputValue<GetAppSpecIngressRuleMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
    };
  }

  factory GetAppSpecIngressRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleMatch(
      authority: pulumi.Input.fromValue(GetAppSpecIngressRuleMatchAuthority.fromMap((map['authority']! as Map).cast<String, dynamic>())),
      path: pulumi.Input.fromValue(GetAppSpecIngressRuleMatchPath.fromMap((map['path']! as Map).cast<String, dynamic>())),
    );
  }
}

