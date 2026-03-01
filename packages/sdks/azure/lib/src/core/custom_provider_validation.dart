// ignore_for_file: unused_element, unnecessary_cast


class CustomProviderValidation {
  /// The endpoint where the validation specification is located.
  final String specification;

  /// Creates a new [CustomProviderValidation].
  /// [specification] The endpoint where the validation specification is located.
  CustomProviderValidation({
    required this.specification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': specification,
    };
  }

  factory CustomProviderValidation.fromMap(Map<String, dynamic> map) {
    return CustomProviderValidation(
      specification: map['specification'] as String,
    );
  }
}

