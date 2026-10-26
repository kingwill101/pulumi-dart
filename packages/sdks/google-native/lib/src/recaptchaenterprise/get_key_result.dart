// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_android_key_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_ioskey_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_testing_options_response.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings_response.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings_response.dart';

/// Result data returned by getKey.
class GetKeyResult {
  /// Settings for keys that can be used by Android apps.
  final GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse? androidSettings;
  /// The timestamp corresponding to the creation of this key.
  final String? createTime;
  /// Human-readable display name of this key. Modifiable by user.
  final String? displayName;
  /// Settings for keys that can be used by iOS apps.
  final GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse? iosSettings;
  /// Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  final Map<String, String>? labels;
  /// Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  final String? name;
  /// Optional. Options for user acceptance testing.
  final GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse? testingOptions;
  /// Optional. Settings for WAF
  final GoogleCloudRecaptchaenterpriseV1WafSettingsResponse? wafSettings;
  /// Settings for keys that can be used by websites.
  final GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse? webSettings;

  /// Creates a new [GetKeyResult].
  /// [androidSettings] Settings for keys that can be used by Android apps.
  /// [createTime] The timestamp corresponding to the creation of this key.
  /// [displayName] Human-readable display name of this key. Modifiable by user.
  /// [iosSettings] Settings for keys that can be used by iOS apps.
  /// [labels] Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha-enterprise/docs/labels).
  /// [name] Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`.
  /// [testingOptions] Optional. Options for user acceptance testing.
  /// [wafSettings] Optional. Settings for WAF
  /// [webSettings] Settings for keys that can be used by websites.
  const GetKeyResult({
    this.androidSettings,
    this.createTime,
    this.displayName,
    this.iosSettings,
    this.labels,
    this.name,
    this.testingOptions,
    this.wafSettings,
    this.webSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidSettings': ?androidSettings?.toMap(),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'iosSettings': ?iosSettings?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'testingOptions': ?testingOptions?.toMap(),
      'wafSettings': ?wafSettings?.toMap(),
      'webSettings': ?webSettings?.toMap(),
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      androidSettings: (() { final guardedValue = map['androidSettings']; if (guardedValue == null) return null; return GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iosSettings: (() { final guardedValue = map['iosSettings']; if (guardedValue == null) return null; return GoogleCloudRecaptchaenterpriseV1IOSKeySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testingOptions: (() { final guardedValue = map['testingOptions']; if (guardedValue == null) return null; return GoogleCloudRecaptchaenterpriseV1TestingOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      wafSettings: (() { final guardedValue = map['wafSettings']; if (guardedValue == null) return null; return GoogleCloudRecaptchaenterpriseV1WafSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      webSettings: (() { final guardedValue = map['webSettings']; if (guardedValue == null) return null; return GoogleCloudRecaptchaenterpriseV1WebKeySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
