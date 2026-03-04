// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigGkehubV1alpha {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final pulumi.Input<bool>? disable;

  /// Creates a new [IdentityServiceGoogleConfigGkehubV1alpha].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfigGkehubV1alpha({this.disable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disable': ?disable};
  }

  factory IdentityServiceGoogleConfigGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceGoogleConfigGkehubV1alpha(
      disable: (() {
        final guardedValue = map['disable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
