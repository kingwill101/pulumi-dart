// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_key_restrictions.dart';
import 'api_target.dart';
import 'browser_key_restrictions.dart';
import 'ios_key_restrictions.dart';
import 'server_key_restrictions.dart';

/// Describes the restrictions on the key.
class Restrictions {
  /// The Android apps that are allowed to use the key.
  final pulumi.Input<AndroidKeyRestrictions>? androidKeyRestrictions;
  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final pulumi.Input<List<ApiTarget>>? apiTargets;
  /// The HTTP referrers (websites) that are allowed to use the key.
  final pulumi.Input<BrowserKeyRestrictions>? browserKeyRestrictions;
  /// The iOS apps that are allowed to use the key.
  final pulumi.Input<IosKeyRestrictions>? iosKeyRestrictions;
  /// The IP addresses of callers that are allowed to use the key.
  final pulumi.Input<ServerKeyRestrictions>? serverKeyRestrictions;

  /// Creates a new [Restrictions].
  /// [androidKeyRestrictions] The Android apps that are allowed to use the key.
  /// [apiTargets] A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  /// [browserKeyRestrictions] The HTTP referrers (websites) that are allowed to use the key.
  /// [iosKeyRestrictions] The iOS apps that are allowed to use the key.
  /// [serverKeyRestrictions] The IP addresses of callers that are allowed to use the key.
  Restrictions({
    this.androidKeyRestrictions,
    this.apiTargets,
    this.browserKeyRestrictions,
    this.iosKeyRestrictions,
    this.serverKeyRestrictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<AndroidKeyRestrictions, Map<String, dynamic>>(androidKeyRestrictions, (value) => value.toMap()),
      'apiTargets': ?pulumi.Input.mapOptionalInputValue<List<ApiTarget>, List<Map<String, dynamic>>>(apiTargets, (value) => pulumi.Input.encodeList<ApiTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browserKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<BrowserKeyRestrictions, Map<String, dynamic>>(browserKeyRestrictions, (value) => value.toMap()),
      'iosKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<IosKeyRestrictions, Map<String, dynamic>>(iosKeyRestrictions, (value) => value.toMap()),
      'serverKeyRestrictions': ?pulumi.Input.mapOptionalInputValue<ServerKeyRestrictions, Map<String, dynamic>>(serverKeyRestrictions, (value) => value.toMap()),
    };
  }

  factory Restrictions.fromMap(Map<String, dynamic> map) {
    return Restrictions(
      androidKeyRestrictions: (() { final guardedValue = map['androidKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AndroidKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiTargets: (() { final guardedValue = map['apiTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiTarget>(guardedValue, (value) => ApiTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      browserKeyRestrictions: (() { final guardedValue = map['browserKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrowserKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iosKeyRestrictions: (() { final guardedValue = map['iosKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IosKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverKeyRestrictions: (() { final guardedValue = map['serverKeyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerKeyRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

