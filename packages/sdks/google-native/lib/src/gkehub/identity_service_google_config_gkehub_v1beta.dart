// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigGkehubV1beta {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final pulumi.Input<bool>? disable;

  /// Creates a new [IdentityServiceGoogleConfigGkehubV1beta].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfigGkehubV1beta({this.disable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disable': ?disable};
  }

  factory IdentityServiceGoogleConfigGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceGoogleConfigGkehubV1beta(
      disable: (() {
        final guardedValue = map['disable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
