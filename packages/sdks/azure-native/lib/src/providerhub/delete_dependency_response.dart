// ignore_for_file: unused_element, unnecessary_cast


class DeleteDependencyResponse {
  /// Linked property.
  final String? linkedProperty;
  /// Linked type.
  final String? linkedType;
  /// Required features.
  final List<String>? requiredFeatures;

  /// Creates a new [DeleteDependencyResponse].
  /// [linkedProperty] Linked property.
  /// [linkedType] Linked type.
  /// [requiredFeatures] Required features.
  DeleteDependencyResponse({
    this.linkedProperty,
    this.linkedType,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedProperty': ?linkedProperty,
      'linkedType': ?linkedType,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory DeleteDependencyResponse.fromMap(Map<String, dynamic> map) {
    return DeleteDependencyResponse(
      linkedProperty: map['linkedProperty'] == null ? null : map['linkedProperty'] as String,
      linkedType: map['linkedType'] == null ? null : map['linkedType'] as String,
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
    );
  }
}

