// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_restrictions_android_key_restrictions.dart';
import 'api_key_restrictions_api_target.dart';
import 'api_key_restrictions_browser_key_restrictions.dart';
import 'api_key_restrictions_ios_key_restrictions.dart';
import 'api_key_restrictions_server_key_restrictions.dart';

class ApiKeyRestrictions {
  /// The Android apps that are allowed to use the key.
  final pulumi.Input<ApiKeyRestrictionsAndroidKeyRestrictions?>? androidKeyRestrictions;
  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final pulumi.Input<List<ApiKeyRestrictionsApiTarget>?>? apiTargets;
  /// The HTTP referrers (websites) that are allowed to use the key.
  final pulumi.Input<ApiKeyRestrictionsBrowserKeyRestrictions?>? browserKeyRestrictions;
  /// The iOS apps that are allowed to use the key.
  final pulumi.Input<ApiKeyRestrictionsIosKeyRestrictions?>? iosKeyRestrictions;
  /// The IP addresses of callers that are allowed to use the key.
  final pulumi.Input<ApiKeyRestrictionsServerKeyRestrictions?>? serverKeyRestrictions;

  /// Creates a new [ApiKeyRestrictions].
  /// [androidKeyRestrictions] The Android apps that are allowed to use the key.
  /// [apiTargets] A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  /// [browserKeyRestrictions] The HTTP referrers (websites) that are allowed to use the key.
  /// [iosKeyRestrictions] The iOS apps that are allowed to use the key.
  /// [serverKeyRestrictions] The IP addresses of callers that are allowed to use the key.
  const ApiKeyRestrictions({
    this.androidKeyRestrictions,
    this.apiTargets,
    this.browserKeyRestrictions,
    this.iosKeyRestrictions,
    this.serverKeyRestrictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<ApiKeyRestrictionsAndroidKeyRestrictions, Map<String, dynamic>>(androidKeyRestrictions, (value) => value.toMap()),
      'apiTargets': ?pulumi.Input.mapOptionalInputValue<List<ApiKeyRestrictionsApiTarget>, List<Map<String, dynamic>>>(apiTargets, (value) => pulumi.Input.encodeList<ApiKeyRestrictionsApiTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browserKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<ApiKeyRestrictionsBrowserKeyRestrictions, Map<String, dynamic>>(browserKeyRestrictions, (value) => value.toMap()),
      'iosKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<ApiKeyRestrictionsIosKeyRestrictions, Map<String, dynamic>>(iosKeyRestrictions, (value) => value.toMap()),
      'serverKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<ApiKeyRestrictionsServerKeyRestrictions, Map<String, dynamic>>(serverKeyRestrictions, (value) => value.toMap()),
    };
  }

  factory ApiKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictions(
      androidKeyRestrictions: (() { final guardedValue = map['androidKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiKeyRestrictionsAndroidKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiTargets: (() { final guardedValue = map['apiTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiKeyRestrictionsApiTarget>(guardedValue, (value) => ApiKeyRestrictionsApiTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      browserKeyRestrictions: (() { final guardedValue = map['browserKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiKeyRestrictionsBrowserKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iosKeyRestrictions: (() { final guardedValue = map['iosKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiKeyRestrictionsIosKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverKeyRestrictions: (() { final guardedValue = map['serverKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiKeyRestrictionsServerKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
