// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message to capture settings for a BrowserDlpRule
class GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting {
  /// Immutable. The type of the Setting. .
  final pulumi.Input<String> type;
  /// The value of the Setting.
  final pulumi.Input<Map<String, String>> value;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting].
  /// [type] Immutable. The type of the Setting. .
  /// [value] The value of the Setting.
  const GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue((map['value'] as Map).cast<String, String>()),
    );
  }
}
