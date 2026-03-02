// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// version or an integer for a specific version.
  final pulumi.Input<String> key;
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef].
  /// [key] A Cloud Secret Manager secret version. Must be 'latest' for the latest
  /// [name] The name of the Cloud Run Service.
  GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef(
      key: (map['key'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

