// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status specifies state for the subcomponent.
class StatusResponseGkehubV1alpha {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  final pulumi.Input<String> code;
  /// Description is populated if Code is Failed, explaining why it has failed.
  final pulumi.Input<String> description;

  /// Creates a new [StatusResponseGkehubV1alpha].
  /// [code] Code specifies AppDevExperienceFeature's subcomponent ready state.
  /// [description] Description is populated if Code is Failed, explaining why it has failed.
  const StatusResponseGkehubV1alpha({
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
      code: pulumi.Input.fromValue(map['code'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}
