// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationFallbackPublicClient resources.
class ApplicationFallbackPublicClientState {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// Whether to enable the application as a fallback public client.
  ///
  /// > Some configurations may require the Fallback Public Client setting to be `null`, for this case simply destroy this resource (or don't use it)
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ApplicationFallbackPublicClientState].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [enabled] Whether to enable the application as a fallback public client.
  ApplicationFallbackPublicClientState({
    this.applicationId,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'enabled': ?enabled,
    };
  }

  factory ApplicationFallbackPublicClientState.fromMap(Map<String, dynamic> map) {
    return ApplicationFallbackPublicClientState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

