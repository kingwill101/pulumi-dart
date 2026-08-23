// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponse {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final pulumi.Input<bool> disable;

  /// Creates a new [IdentityServiceGoogleConfigResponse].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  const IdentityServiceGoogleConfigResponse({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': disable,
    };
  }

  factory IdentityServiceGoogleConfigResponse.fromMap(Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigResponse(
      disable: pulumi.Input.fromValue(map['disable'] as bool),
    );
  }
}
