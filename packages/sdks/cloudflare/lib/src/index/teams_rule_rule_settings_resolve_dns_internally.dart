// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsResolveDnsInternally {
  /// Specify the fallback behavior to apply when the internal DNS response code differs from 'NOERROR' or when the response data contains only CNAME records for 'A' or 'AAAA' queries.
  /// Available values: "none", "publicDns".
  final pulumi.Input<String?>? fallback;
  /// Specify the internal DNS view identifier to pass to the internal DNS service.
  final pulumi.Input<String?>? viewId;

  /// Creates a new [TeamsRuleRuleSettingsResolveDnsInternally].
  /// [fallback] Specify the fallback behavior to apply when the internal DNS response code differs from 'NOERROR' or when the response data contains only CNAME records for 'A' or 'AAAA' queries.
  /// [viewId] Specify the internal DNS view identifier to pass to the internal DNS service.
  const TeamsRuleRuleSettingsResolveDnsInternally({
    this.fallback,
    this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallback': ?fallback,
      'viewId': ?viewId,
    };
  }

  factory TeamsRuleRuleSettingsResolveDnsInternally.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsResolveDnsInternally(
      fallback: (() { final guardedValue = map['fallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewId: (() { final guardedValue = map['viewId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
