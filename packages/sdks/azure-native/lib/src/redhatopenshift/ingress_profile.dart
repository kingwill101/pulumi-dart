// ignore_for_file: unused_element, unnecessary_cast


/// IngressProfile represents an ingress profile.
class IngressProfile {
  /// The ingress profile name.
  final String? name;
  /// Ingress visibility.
  final String? visibility;

  /// Creates a new [IngressProfile].
  /// [name] The ingress profile name.
  /// [visibility] Ingress visibility.
  IngressProfile({
    this.name,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'visibility': ?visibility,
    };
  }

  factory IngressProfile.fromMap(Map<String, dynamic> map) {
    return IngressProfile(
      name: map['name'] == null ? null : map['name'] as String,
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}

