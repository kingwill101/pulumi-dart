// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_policy_settings_log_scrubbing.dart';

class PolicyPolicySettings {
  /// Describes if the policy is in enabled state or disabled state. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Whether the firewall should block a request with upload size greater then `file_upload_limit_in_mb`.
  final pulumi.Input<bool>? fileUploadEnforcement;
  /// The File Upload Limit in MB. Accepted values are in the range `1` to `4000`. Defaults to `100`.
  final pulumi.Input<int>? fileUploadLimitInMb;
  /// Specifies the JavaScript challenge cookie validity lifetime in minutes. The user is challenged after the lifetime expires. Accepted values are in the range `5` to `1440`. Defaults to `30`.
  final pulumi.Input<int>? jsChallengeCookieExpirationInMinutes;
  /// One `log_scrubbing` block as defined below.
  final pulumi.Input<PolicyPolicySettingsLogScrubbing>? logScrubbing;
  /// The Maximum Request Body Size in KB. Accepted values are in the range `8` to `2000`. Defaults to `128`.
  final pulumi.Input<int>? maxRequestBodySizeInKb;
  /// Describes if it is in detection mode or prevention mode at the policy level. Valid values are `Detection` and `Prevention`. Defaults to `Prevention`.
  final pulumi.Input<String>? mode;
  /// Is Request Body Inspection enabled? Defaults to `true`.
  final pulumi.Input<bool>? requestBodyCheck;
  /// Whether the firewall should block a request with body size greater then `max_request_body_size_in_kb`. Defaults to `true`.
  final pulumi.Input<bool>? requestBodyEnforcement;
  /// Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to `128`.
  final pulumi.Input<int>? requestBodyInspectLimitInKb;

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
  const PolicyPolicySettings({
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
      'logScrubbing': ?pulumi.Input.mapOptionalInputValue<PolicyPolicySettingsLogScrubbing, Map<String, dynamic>>(logScrubbing, (value) => value.toMap()),
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'mode': ?mode,
      'requestBodyCheck': ?requestBodyCheck,
      'requestBodyEnforcement': ?requestBodyEnforcement,
      'requestBodyInspectLimitInKb': ?requestBodyInspectLimitInKb,
    };
  }

  factory PolicyPolicySettings.fromMap(Map<String, dynamic> map) {
    return PolicyPolicySettings(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileUploadEnforcement: (() { final guardedValue = map['fileUploadEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileUploadLimitInMb: (() { final guardedValue = map['fileUploadLimitInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jsChallengeCookieExpirationInMinutes: (() { final guardedValue = map['jsChallengeCookieExpirationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logScrubbing: (() { final guardedValue = map['logScrubbing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPolicySettingsLogScrubbing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxRequestBodySizeInKb: (() { final guardedValue = map['maxRequestBodySizeInKb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBodyCheck: (() { final guardedValue = map['requestBodyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBodyEnforcement: (() { final guardedValue = map['requestBodyEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBodyInspectLimitInKb: (() { final guardedValue = map['requestBodyInspectLimitInKb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

