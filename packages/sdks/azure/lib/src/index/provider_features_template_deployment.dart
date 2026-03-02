// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesTemplateDeployment {
  final pulumi.Input<bool> deleteNestedItemsDuringDeletion;

  /// Creates a new [ProviderFeaturesTemplateDeployment].
  /// [deleteNestedItemsDuringDeletion] Required.
  ProviderFeaturesTemplateDeployment({
    required this.deleteNestedItemsDuringDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteNestedItemsDuringDeletion': deleteNestedItemsDuringDeletion,
    };
  }

  factory ProviderFeaturesTemplateDeployment.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesTemplateDeployment(
      deleteNestedItemsDuringDeletion: (map['deleteNestedItemsDuringDeletion'] as bool).input(),
    );
  }
}

