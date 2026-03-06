// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesTemplateDeployment {
  final pulumi.Input<bool> deleteNestedItemsDuringDeletion;

  /// Creates a new [FeaturesTemplateDeployment].
  /// [deleteNestedItemsDuringDeletion] Required.
  const FeaturesTemplateDeployment({
    required this.deleteNestedItemsDuringDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteNestedItemsDuringDeletion': deleteNestedItemsDuringDeletion,
    };
  }

  factory FeaturesTemplateDeployment.fromMap(Map<String, dynamic> map) {
    return FeaturesTemplateDeployment(
      deleteNestedItemsDuringDeletion: pulumi.Input.fromValue(map['deleteNestedItemsDuringDeletion'] as bool),
    );
  }
}

