// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_waf_settings_waf_feature.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings_waf_service.dart';

/// Settings specific to keys that can be used for WAF (Web Application Firewall).
class GoogleCloudRecaptchaenterpriseV1WafSettings {
  /// The WAF feature for which this key is enabled.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature> wafFeature;
  /// The WAF service that uses this key.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1WafSettingsWafService> wafService;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1WafSettings].
  /// [wafFeature] The WAF feature for which this key is enabled.
  /// [wafService] The WAF service that uses this key.
  GoogleCloudRecaptchaenterpriseV1WafSettings({
    required this.wafFeature,
    required this.wafService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafFeature': pulumi.Input.mapInputValue<GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature, String>(wafFeature, (value) => value.value),
      'wafService': pulumi.Input.mapInputValue<GoogleCloudRecaptchaenterpriseV1WafSettingsWafService, String>(wafService, (value) => value.value),
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1WafSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1WafSettings(
      wafFeature: (GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature.fromValue(map['wafFeature'] as String)).input(),
      wafService: (GoogleCloudRecaptchaenterpriseV1WafSettingsWafService.fromValue(map['wafService'] as String)).input(),
    );
  }
}

