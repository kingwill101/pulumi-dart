// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_key_restrictions_response.dart';
import 'api_target_response.dart';
import 'browser_key_restrictions_response.dart';
import 'ios_key_restrictions_response.dart';
import 'server_key_restrictions_response.dart';

/// Describes the restrictions on the key.
class RestrictionsResponse {
  /// The Android apps that are allowed to use the key.
  final AndroidKeyRestrictionsResponse androidKeyRestrictions;
  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final List<ApiTargetResponse> apiTargets;
  /// The HTTP referrers (websites) that are allowed to use the key.
  final BrowserKeyRestrictionsResponse browserKeyRestrictions;
  /// The iOS apps that are allowed to use the key.
  final IosKeyRestrictionsResponse iosKeyRestrictions;
  /// The IP addresses of callers that are allowed to use the key.
  final ServerKeyRestrictionsResponse serverKeyRestrictions;

  /// Creates a new [RestrictionsResponse].
  /// [androidKeyRestrictions] The Android apps that are allowed to use the key.
  /// [apiTargets] A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  /// [browserKeyRestrictions] The HTTP referrers (websites) that are allowed to use the key.
  /// [iosKeyRestrictions] The iOS apps that are allowed to use the key.
  /// [serverKeyRestrictions] The IP addresses of callers that are allowed to use the key.
  RestrictionsResponse({
    required this.androidKeyRestrictions,
    required this.apiTargets,
    required this.browserKeyRestrictions,
    required this.iosKeyRestrictions,
    required this.serverKeyRestrictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidKeyRestrictions': androidKeyRestrictions.toMap(),
      'apiTargets': pulumi.Input.encodeList<ApiTargetResponse, Map<String, dynamic>>(apiTargets, (value) => value.toMap()),
      'browserKeyRestrictions': browserKeyRestrictions.toMap(),
      'iosKeyRestrictions': iosKeyRestrictions.toMap(),
      'serverKeyRestrictions': serverKeyRestrictions.toMap(),
    };
  }

  factory RestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return RestrictionsResponse(
      androidKeyRestrictions: AndroidKeyRestrictionsResponse.fromMap((map['androidKeyRestrictions'] as Map).cast<String, dynamic>()),
      apiTargets: pulumi.Input.decodeList<ApiTargetResponse>(map['apiTargets'], (value) => ApiTargetResponse.fromMap((value as Map).cast<String, dynamic>())),
      browserKeyRestrictions: BrowserKeyRestrictionsResponse.fromMap((map['browserKeyRestrictions'] as Map).cast<String, dynamic>()),
      iosKeyRestrictions: IosKeyRestrictionsResponse.fromMap((map['iosKeyRestrictions'] as Map).cast<String, dynamic>()),
      serverKeyRestrictions: ServerKeyRestrictionsResponse.fromMap((map['serverKeyRestrictions'] as Map).cast<String, dynamic>()),
    );
  }
}

