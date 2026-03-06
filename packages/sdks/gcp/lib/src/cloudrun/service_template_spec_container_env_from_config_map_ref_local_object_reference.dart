// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference {
  /// Name of the referent.
  final pulumi.Input<String> name;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference].
  /// [name] Name of the referent.
  const ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

