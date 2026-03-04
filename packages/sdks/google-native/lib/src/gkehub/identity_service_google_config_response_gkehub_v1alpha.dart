// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponseGkehubV1alpha {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final pulumi.Input<bool> disable;

  /// Creates a new [IdentityServiceGoogleConfigResponseGkehubV1alpha].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfigResponseGkehubV1alpha({required this.disable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disable': disable};
  }

  factory IdentityServiceGoogleConfigResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceGoogleConfigResponseGkehubV1alpha(
      disable: pulumi.Input.fromValue(map['disable'] as bool),
    );
  }
}
