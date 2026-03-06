// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference {
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference].
  /// [name] The name of the Cloud Run Service.
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

