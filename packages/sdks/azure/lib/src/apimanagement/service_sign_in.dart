// ignore_for_file: unused_element, unnecessary_cast


class ServiceSignIn {
  /// Should anonymous users be redirected to the sign in page?
  final bool enabled;

  /// Creates a new [ServiceSignIn].
  /// [enabled] Should anonymous users be redirected to the sign in page?
  ServiceSignIn({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ServiceSignIn.fromMap(Map<String, dynamic> map) {
    return ServiceSignIn(
      enabled: map['enabled'] as bool,
    );
  }
}

