// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'twitter_registration_response.dart';

/// The configuration settings of the Twitter provider.
class TwitterResponse {
  /// <code>false</code> if the Twitter provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the app registration for the Twitter provider.
  final pulumi.Input<TwitterRegistrationResponse>? registration;

  /// Creates a new [TwitterResponse].
  /// [enabled] <code>false</code> if the Twitter provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [registration] The configuration settings of the app registration for the Twitter provider.
  TwitterResponse({
    this.enabled,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'registration': ?pulumi.Input.mapOptionalInputValue<TwitterRegistrationResponse, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory TwitterResponse.fromMap(Map<String, dynamic> map) {
    return TwitterResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      registration: map['registration'] == null ? null : (TwitterRegistrationResponse.fromMap((map['registration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

