// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyWafSettings {
  /// Supported WAF features. For more information, see https://cloud.google.com/recaptcha-enterprise/docs/usecase#comparison_of_features. Possible values: CHALLENGE_PAGE, SESSION_TOKEN, ACTION_TOKEN, EXPRESS
  final pulumi.Input<String> wafFeature;
  /// The WAF service that uses this key. Possible values: CA, FASTLY
  final pulumi.Input<String> wafService;

  /// Creates a new [EnterpriseKeyWafSettings].
  /// [wafFeature] Supported WAF features. For more information, see https://cloud.google.com/recaptcha-enterprise/docs/usecase#comparison_of_features. Possible values: CHALLENGE_PAGE, SESSION_TOKEN, ACTION_TOKEN, EXPRESS
  /// [wafService] The WAF service that uses this key. Possible values: CA, FASTLY
  EnterpriseKeyWafSettings({
    required this.wafFeature,
    required this.wafService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafFeature': wafFeature,
      'wafService': wafService,
    };
  }

  factory EnterpriseKeyWafSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWafSettings(
      wafFeature: (map['wafFeature'] as String).input(),
      wafService: (map['wafService'] as String).input(),
    );
  }
}

