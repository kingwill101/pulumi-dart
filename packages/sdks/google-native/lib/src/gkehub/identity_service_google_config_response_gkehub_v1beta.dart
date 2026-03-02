// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponseGkehubV1beta {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final pulumi.Input<bool> disable;

  /// Creates a new [IdentityServiceGoogleConfigResponseGkehubV1beta].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfigResponseGkehubV1beta({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': disable,
    };
  }

  factory IdentityServiceGoogleConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigResponseGkehubV1beta(
      disable: (map['disable'] as bool).input(),
    );
  }
}

