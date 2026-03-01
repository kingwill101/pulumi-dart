// ignore_for_file: unused_element, unnecessary_cast


/// Message to capture settings for a BrowserDlpRule
class GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting {
  /// Immutable. The type of the Setting. .
  final String type;
  /// The value of the Setting.
  final Map<String, String> value;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting].
  /// [type] Immutable. The type of the Setting. .
  /// [value] The value of the Setting.
  GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting({
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
      type: map['type'] as String,
      value: (map['value'] as Map).cast<String, String>(),
    );
  }
}

