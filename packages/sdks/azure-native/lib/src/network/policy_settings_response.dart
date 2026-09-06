// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_settings_response_log_scrubbing.dart';

/// Defines contents of a web application firewall global configuration.
class PolicySettingsResponse {
  /// If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String?>? customBlockResponseBody;
  /// If the action type is block, customer can override the response status code.
  final pulumi.Input<int?>? customBlockResponseStatusCode;
  /// Whether allow WAF to enforce file upload limits.
  final pulumi.Input<bool?>? fileUploadEnforcement;
  /// Maximum file upload size in Mb for WAF.
  final pulumi.Input<int?>? fileUploadLimitInMb;
  /// Web Application Firewall JavaScript Challenge Cookie Expiration time in minutes.
  final pulumi.Input<int?>? jsChallengeCookieExpirationInMins;
  /// To scrub sensitive log fields
  final pulumi.Input<PolicySettingsResponseLogScrubbing?>? logScrubbing;
  /// Maximum request body size in Kb for WAF.
  final pulumi.Input<int?>? maxRequestBodySizeInKb;
  /// The mode of the policy.
  final pulumi.Input<String?>? mode;
  /// Whether to allow WAF to check request Body.
  final pulumi.Input<bool?>? requestBodyCheck;
  /// Whether allow WAF to enforce request body limits.
  final pulumi.Input<bool?>? requestBodyEnforcement;
  /// Max inspection limit in KB for request body inspection for WAF.
  final pulumi.Input<int?>? requestBodyInspectLimitInKB;
  /// The state of the policy.
  final pulumi.Input<String?>? state;

  /// Creates a new [PolicySettingsResponse].
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
  PolicySettingsResponse({
    this.customBlockResponseBody,
    this.customBlockResponseStatusCode,
    pulumi.Input<bool?>? fileUploadEnforcement,
    this.fileUploadLimitInMb,
    this.jsChallengeCookieExpirationInMins,
    this.logScrubbing,
    this.maxRequestBodySizeInKb,
    this.mode,
    this.requestBodyCheck,
    pulumi.Input<bool?>? requestBodyEnforcement,
    this.requestBodyInspectLimitInKB,
    this.state,
  }) : fileUploadEnforcement = fileUploadEnforcement ?? pulumi.Input.fromValue(true), requestBodyEnforcement = requestBodyEnforcement ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'fileUploadEnforcement': ?fileUploadEnforcement,
      'fileUploadLimitInMb': ?fileUploadLimitInMb,
      'jsChallengeCookieExpirationInMins': ?jsChallengeCookieExpirationInMins,
      'logScrubbing': ?pulumi.Input.mapOptionalInputValue<PolicySettingsResponseLogScrubbing, Map<String, dynamic>>(logScrubbing, (value) => value.toMap()),
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'mode': ?mode,
      'requestBodyCheck': ?requestBodyCheck,
      'requestBodyEnforcement': ?requestBodyEnforcement,
      'requestBodyInspectLimitInKB': ?requestBodyInspectLimitInKB,
      'state': ?state,
    };
  }

  factory PolicySettingsResponse.fromMap(Map<String, dynamic> map) {
    return PolicySettingsResponse(
      customBlockResponseBody: (() { final guardedValue = map['customBlockResponseBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customBlockResponseStatusCode: (() { final guardedValue = map['customBlockResponseStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      fileUploadEnforcement: (() { final guardedValue = map['fileUploadEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileUploadLimitInMb: (() { final guardedValue = map['fileUploadLimitInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      jsChallengeCookieExpirationInMins: (() { final guardedValue = map['jsChallengeCookieExpirationInMins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      logScrubbing: (() { final guardedValue = map['logScrubbing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySettingsResponseLogScrubbing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxRequestBodySizeInKb: (() { final guardedValue = map['maxRequestBodySizeInKb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBodyCheck: (() { final guardedValue = map['requestBodyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBodyEnforcement: (() { final guardedValue = map['requestBodyEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBodyInspectLimitInKB: (() { final guardedValue = map['requestBodyInspectLimitInKB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
