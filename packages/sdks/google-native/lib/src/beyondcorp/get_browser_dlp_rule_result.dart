// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_rule_setting_response.dart';

/// Result data returned by getBrowserDlpRule.
class GetBrowserDlpRuleResult {
  /// The group to which this Rule should be applied to.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse? group;
  /// Unique resource name. The name is ignored when creating BrowserDlpRule.
  final String? name;
  /// The policy settings to apply.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse? ruleSetting;

  /// Creates a new [GetBrowserDlpRuleResult].
  /// [group] The group to which this Rule should be applied to.
  /// [name] Unique resource name. The name is ignored when creating BrowserDlpRule.
  /// [ruleSetting] The policy settings to apply.
  const GetBrowserDlpRuleResult({
    this.group,
    this.name,
    this.ruleSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group?.toMap(),
      'name': ?name,
      'ruleSetting': ?ruleSetting?.toMap(),
    };
  }

  factory GetBrowserDlpRuleResult.fromMap(Map<String, dynamic> map) {
    return GetBrowserDlpRuleResult(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleSetting: (() { final guardedValue = map['ruleSetting']; if (guardedValue == null) return null; return GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
