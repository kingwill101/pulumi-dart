// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference {
  /// Name of the referent.
  final pulumi.Input<String> name;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference].
  /// [name] Name of the referent.
  ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

