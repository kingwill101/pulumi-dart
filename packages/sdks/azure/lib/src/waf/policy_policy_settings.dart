// ignore_for_file: unused_element, unnecessary_cast

import 'policy_policy_settings_log_scrubbing.dart';

class PolicyPolicySettings {
  /// Describes if the policy is in enabled state or disabled state. Defaults to `true`.
  final bool? enabled;
  /// Whether the firewall should block a request with upload size greater then `file_upload_limit_in_mb`.
  final bool? fileUploadEnforcement;
  /// The File Upload Limit in MB. Accepted values are in the range `1` to `4000`. Defaults to `100`.
  final int? fileUploadLimitInMb;
  /// Specifies the JavaScript challenge cookie validity lifetime in minutes. The user is challenged after the lifetime expires. Accepted values are in the range `5` to `1440`. Defaults to `30`.
  final int? jsChallengeCookieExpirationInMinutes;
  /// One `log_scrubbing` block as defined below.
  final PolicyPolicySettingsLogScrubbing? logScrubbing;
  /// The Maximum Request Body Size in KB. Accepted values are in the range `8` to `2000`. Defaults to `128`.
  final int? maxRequestBodySizeInKb;
  /// Describes if it is in detection mode or prevention mode at the policy level. Valid values are `Detection` and `Prevention`. Defaults to `Prevention`.
  final String? mode;
  /// Is Request Body Inspection enabled? Defaults to `true`.
  final bool? requestBodyCheck;
  /// Whether the firewall should block a request with body size greater then `max_request_body_size_in_kb`. Defaults to `true`.
  final bool? requestBodyEnforcement;
  /// Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to `128`.
  final int? requestBodyInspectLimitInKb;

  /// Creates a new [PolicyPolicySettings].
  /// [enabled] Describes if the policy is in enabled state or disabled state. Defaults to `true`.
  /// [fileUploadEnforcement] Whether the firewall should block a request with upload size greater then `file_upload_limit_in_mb`.
  /// [fileUploadLimitInMb] The File Upload Limit in MB. Accepted values are in the range `1` to `4000`. Defaults to `100`.
  /// [jsChallengeCookieExpirationInMinutes] Specifies the JavaScript challenge cookie validity lifetime in minutes. The user is challenged after the lifetime expires. Accepted values are in the range `5` to `1440`. Defaults to `30`.
  /// [logScrubbing] One `log_scrubbing` block as defined below.
  /// [maxRequestBodySizeInKb] The Maximum Request Body Size in KB. Accepted values are in the range `8` to `2000`. Defaults to `128`.
  /// [mode] Describes if it is in detection mode or prevention mode at the policy level. Valid values are `Detection` and `Prevention`. Defaults to `Prevention`.
  /// [requestBodyCheck] Is Request Body Inspection enabled? Defaults to `true`.
  /// [requestBodyEnforcement] Whether the firewall should block a request with body size greater then `max_request_body_size_in_kb`. Defaults to `true`.
  /// [requestBodyInspectLimitInKb] Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to `128`.
  PolicyPolicySettings({
    this.enabled,
    this.fileUploadEnforcement,
    this.fileUploadLimitInMb,
    this.jsChallengeCookieExpirationInMinutes,
    this.logScrubbing,
    this.maxRequestBodySizeInKb,
    this.mode,
    this.requestBodyCheck,
    this.requestBodyEnforcement,
    this.requestBodyInspectLimitInKb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'fileUploadEnforcement': ?fileUploadEnforcement,
      'fileUploadLimitInMb': ?fileUploadLimitInMb,
      'jsChallengeCookieExpirationInMinutes': ?jsChallengeCookieExpirationInMinutes,
      'logScrubbing': ?logScrubbing == null ? null : logScrubbing!.toMap(),
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'mode': ?mode,
      'requestBodyCheck': ?requestBodyCheck,
      'requestBodyEnforcement': ?requestBodyEnforcement,
      'requestBodyInspectLimitInKb': ?requestBodyInspectLimitInKb,
    };
  }

  factory PolicyPolicySettings.fromMap(Map<String, dynamic> map) {
    return PolicyPolicySettings(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      fileUploadEnforcement: map['fileUploadEnforcement'] == null ? null : map['fileUploadEnforcement'] as bool,
      fileUploadLimitInMb: map['fileUploadLimitInMb'] == null ? null : map['fileUploadLimitInMb'] as int,
      jsChallengeCookieExpirationInMinutes: map['jsChallengeCookieExpirationInMinutes'] == null ? null : map['jsChallengeCookieExpirationInMinutes'] as int,
      logScrubbing: map['logScrubbing'] == null ? null : PolicyPolicySettingsLogScrubbing.fromMap((map['logScrubbing'] as Map).cast<String, dynamic>()),
      maxRequestBodySizeInKb: map['maxRequestBodySizeInKb'] == null ? null : map['maxRequestBodySizeInKb'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      requestBodyCheck: map['requestBodyCheck'] == null ? null : map['requestBodyCheck'] as bool,
      requestBodyEnforcement: map['requestBodyEnforcement'] == null ? null : map['requestBodyEnforcement'] as bool,
      requestBodyInspectLimitInKb: map['requestBodyInspectLimitInKb'] == null ? null : map['requestBodyInspectLimitInKb'] as int,
    );
  }
}

