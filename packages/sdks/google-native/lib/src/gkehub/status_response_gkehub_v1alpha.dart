// ignore_for_file: unused_element, unnecessary_cast


/// Status specifies state for the subcomponent.
class StatusResponseGkehubV1alpha {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  final String code;
  /// Description is populated if Code is Failed, explaining why it has failed.
  final String description;

  /// Creates a new [StatusResponseGkehubV1alpha].
  /// [code] Code specifies AppDevExperienceFeature's subcomponent ready state.
  /// [description] Description is populated if Code is Failed, explaining why it has failed.
  StatusResponseGkehubV1alpha({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    };
  }

  factory StatusResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return StatusResponseGkehubV1alpha(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}

