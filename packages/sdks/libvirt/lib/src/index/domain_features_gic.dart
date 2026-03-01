// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesGic {
  /// Sets the version of the GIC feature supported by the domain.
  final String? version;

  /// Creates a new [DomainFeaturesGic].
  /// [version] Sets the version of the GIC feature supported by the domain.
  DomainFeaturesGic({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory DomainFeaturesGic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesGic(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

