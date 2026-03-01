// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfig {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool? disable;

  /// Creates a new [IdentityServiceGoogleConfig].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfig({
    this.disable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': ?disable,
    };
  }

  factory IdentityServiceGoogleConfig.fromMap(Map<String, dynamic> map) {
    return IdentityServiceGoogleConfig(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}

