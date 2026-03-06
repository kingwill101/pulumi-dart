// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A classification object with a product type and value.
class CaseClassificationResponseCloudsupportV2beta {
  /// A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  final pulumi.Input<String> displayName;

  /// Creates a new [CaseClassificationResponseCloudsupportV2beta].
  /// [displayName] A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  const CaseClassificationResponseCloudsupportV2beta({
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
    };
  }

  factory CaseClassificationResponseCloudsupportV2beta.fromMap(Map<String, dynamic> map) {
    return CaseClassificationResponseCloudsupportV2beta(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

