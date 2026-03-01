// ignore_for_file: unused_element, unnecessary_cast


/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha].
  /// [name] Package name.
  OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}

