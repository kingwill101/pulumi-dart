// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference {
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference].
  /// [name] Name must be unique within a Google Cloud project and region.
  const GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
