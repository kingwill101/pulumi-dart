// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference {
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference].
  /// [name] The name of the Cloud Run Service.
  GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference(
      name: (map['name'] as String).input(),
    );
  }
}

