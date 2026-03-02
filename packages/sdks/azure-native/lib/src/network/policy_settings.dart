// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_settings_log_scrubbing.dart';

/// Defines contents of a web application firewall global configuration.
class PolicySettings {
  /// If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? customBlockResponseBody;
  /// If the action type is block, customer can override the response status code.
  final pulumi.Input<int>? customBlockResponseStatusCode;
  /// Whether allow WAF to enforce file upload limits.
  final pulumi.Input<bool>? fileUploadEnforcement;
  /// Maximum file upload size in Mb for WAF.
  final pulumi.Input<int>? fileUploadLimitInMb;
  /// Web Application Firewall JavaScript Challenge Cookie Expiration time in minutes.
  final pulumi.Input<int>? jsChallengeCookieExpirationInMins;
  /// To scrub sensitive log fields
  final pulumi.Input<PolicySettingsLogScrubbing>? logScrubbing;
  /// Maximum request body size in Kb for WAF.
  final pulumi.Input<int>? maxRequestBodySizeInKb;
  /// The mode of the policy.
  final pulumi.Input<String>? mode;
  /// Whether to allow WAF to check request Body.
  final pulumi.Input<bool>? requestBodyCheck;
  /// Whether allow WAF to enforce request body limits.
  final pulumi.Input<bool>? requestBodyEnforcement;
  /// Max inspection limit in KB for request body inspection for WAF.
  final pulumi.Input<int>? requestBodyInspectLimitInKB;
  /// The state of the policy.
  final pulumi.Input<String>? state;

  /// Creates a new [PolicySettings].
  /// [customBlockResponseBody] If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If the action type is block, customer can override the response status code.
  /// [fileUploadEnforcement] Whether allow WAF to enforce file upload limits.
  /// [fileUploadLimitInMb] Maximum file upload size in Mb for WAF.
  /// [jsChallengeCookieExpirationInMins] Web Application Firewall JavaScript Challenge Cookie Expiration time in minutes.
  /// [logScrubbing] To scrub sensitive log fields
  /// [maxRequestBodySizeInKb] Maximum request body size in Kb for WAF.
  /// [mode] The mode of the policy.
  /// [requestBodyCheck] Whether to allow WAF to check request Body.
  /// [requestBodyEnforcement] Whether allow WAF to enforce request body limits.
  /// [requestBodyInspectLimitInKB] Max inspection limit in KB for request body inspection for WAF.
  /// [state] The state of the policy.
  PolicySettings({
    this.customBlockResponseBody,
    this.customBlockResponseStatusCode,
    this.fileUploadEnforcement,
    this.fileUploadLimitInMb,
    this.jsChallengeCookieExpirationInMins,
    this.logScrubbing,
    this.maxRequestBodySizeInKb,
    this.mode,
    this.requestBodyCheck,
    this.requestBodyEnforcement,
    this.requestBodyInspectLimitInKB,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'fileUploadEnforcement': ?fileUploadEnforcement,
      'fileUploadLimitInMb': ?fileUploadLimitInMb,
      'jsChallengeCookieExpirationInMins': ?jsChallengeCookieExpirationInMins,
      'logScrubbing': ?pulumi.Input.mapOptionalInputValue<PolicySettingsLogScrubbing, Map<String, dynamic>>(logScrubbing, (value) => value.toMap()),
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'mode': ?mode,
      'requestBodyCheck': ?requestBodyCheck,
      'requestBodyEnforcement': ?requestBodyEnforcement,
      'requestBodyInspectLimitInKB': ?requestBodyInspectLimitInKB,
      'state': ?state,
    };
  }

  factory PolicySettings.fromMap(Map<String, dynamic> map) {
    return PolicySettings(
      customBlockResponseBody: map['customBlockResponseBody'] == null ? null : (map['customBlockResponseBody']! as String).input(),
      customBlockResponseStatusCode: map['customBlockResponseStatusCode'] == null ? null : (map['customBlockResponseStatusCode']! as int).input(),
      fileUploadEnforcement: map['fileUploadEnforcement'] == null ? null : (map['fileUploadEnforcement']! as bool).input(),
      fileUploadLimitInMb: map['fileUploadLimitInMb'] == null ? null : (map['fileUploadLimitInMb']! as int).input(),
      jsChallengeCookieExpirationInMins: map['jsChallengeCookieExpirationInMins'] == null ? null : (map['jsChallengeCookieExpirationInMins']! as int).input(),
      logScrubbing: map['logScrubbing'] == null ? null : (PolicySettingsLogScrubbing.fromMap((map['logScrubbing']! as Map).cast<String, dynamic>())).input(),
      maxRequestBodySizeInKb: map['maxRequestBodySizeInKb'] == null ? null : (map['maxRequestBodySizeInKb']! as int).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      requestBodyCheck: map['requestBodyCheck'] == null ? null : (map['requestBodyCheck']! as bool).input(),
      requestBodyEnforcement: map['requestBodyEnforcement'] == null ? null : (map['requestBodyEnforcement']! as bool).input(),
      requestBodyInspectLimitInKB: map['requestBodyInspectLimitInKB'] == null ? null : (map['requestBodyInspectLimitInKB']! as int).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

