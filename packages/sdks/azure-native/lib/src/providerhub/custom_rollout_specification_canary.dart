// ignore_for_file: unused_element, unnecessary_cast


/// The canary region configuration.
class CustomRolloutSpecificationCanary {
  final List<String>? regions;

  /// Creates a new [CustomRolloutSpecificationCanary].
  /// [regions] Optional.
  CustomRolloutSpecificationCanary({
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
    };
  }

  factory CustomRolloutSpecificationCanary.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationCanary(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
    );
  }
}

