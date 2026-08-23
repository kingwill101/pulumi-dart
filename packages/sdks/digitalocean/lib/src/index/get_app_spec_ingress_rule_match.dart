// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_ingress_rule_match_authority.dart';
import 'get_app_spec_ingress_rule_match_path.dart';

class GetAppSpecIngressRuleMatch {
  final pulumi.Input<GetAppSpecIngressRuleMatchAuthority>? authority;
  /// Paths must start with `/` and must be unique within the app.
  final pulumi.Input<GetAppSpecIngressRuleMatchPath>? path;

  /// Creates a new [GetAppSpecIngressRuleMatch].
  /// [authority] Optional.
  /// [path] Paths must start with `/` and must be unique within the app.
  const GetAppSpecIngressRuleMatch({
    this.authority,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleMatchAuthority, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
    };
  }

  factory GetAppSpecIngressRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleMatch(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressRuleMatchAuthority.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressRuleMatchPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
