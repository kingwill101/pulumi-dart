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
  final pulumi.Input<AndroidKeyRestrictionsResponse> androidKeyRestrictions;

  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final pulumi.Input<List<ApiTargetResponse>> apiTargets;

  /// The HTTP referrers (websites) that are allowed to use the key.
  final pulumi.Input<BrowserKeyRestrictionsResponse> browserKeyRestrictions;

  /// The iOS apps that are allowed to use the key.
  final pulumi.Input<IosKeyRestrictionsResponse> iosKeyRestrictions;

  /// The IP addresses of callers that are allowed to use the key.
  final pulumi.Input<ServerKeyRestrictionsResponse> serverKeyRestrictions;

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
      'androidKeyRestrictions':
          pulumi.Input.mapInputValue<
            AndroidKeyRestrictionsResponse,
            Map<String, dynamic>
          >(androidKeyRestrictions, (value) => value.toMap()),
      'apiTargets':
          pulumi.Input.mapInputValue<
            List<ApiTargetResponse>,
            List<Map<String, dynamic>>
          >(
            apiTargets,
            (value) =>
                pulumi.Input.encodeList<
                  ApiTargetResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'browserKeyRestrictions':
          pulumi.Input.mapInputValue<
            BrowserKeyRestrictionsResponse,
            Map<String, dynamic>
          >(browserKeyRestrictions, (value) => value.toMap()),
      'iosKeyRestrictions':
          pulumi.Input.mapInputValue<
            IosKeyRestrictionsResponse,
            Map<String, dynamic>
          >(iosKeyRestrictions, (value) => value.toMap()),
      'serverKeyRestrictions':
          pulumi.Input.mapInputValue<
            ServerKeyRestrictionsResponse,
            Map<String, dynamic>
          >(serverKeyRestrictions, (value) => value.toMap()),
    };
  }

  factory RestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return RestrictionsResponse(
      androidKeyRestrictions: pulumi.Input.fromValue(
        AndroidKeyRestrictionsResponse.fromMap(
          (map['androidKeyRestrictions']! as Map).cast<String, dynamic>(),
        ),
      ),
      apiTargets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApiTargetResponse>(
          map['apiTargets']!,
          (value) =>
              ApiTargetResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      browserKeyRestrictions: pulumi.Input.fromValue(
        BrowserKeyRestrictionsResponse.fromMap(
          (map['browserKeyRestrictions']! as Map).cast<String, dynamic>(),
        ),
      ),
      iosKeyRestrictions: pulumi.Input.fromValue(
        IosKeyRestrictionsResponse.fromMap(
          (map['iosKeyRestrictions']! as Map).cast<String, dynamic>(),
        ),
      ),
      serverKeyRestrictions: pulumi.Input.fromValue(
        ServerKeyRestrictionsResponse.fromMap(
          (map['serverKeyRestrictions']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
