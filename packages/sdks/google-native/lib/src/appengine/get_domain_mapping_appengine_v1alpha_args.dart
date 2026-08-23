// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1alpha_get_domain_mapping_appengine_v1alpha_args_doc}
/// Arguments for getDomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1alpha_get_domain_mapping_appengine_v1alpha_args_doc}
class GetDomainMappingAppengineV1alphaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> domainMappingId;

  /// Creates a new [GetDomainMappingAppengineV1alphaArgs].
  /// [appId] Required.
  /// [domainMappingId] Required.
  const GetDomainMappingAppengineV1alphaArgs({
    required this.appId,
    required this.domainMappingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'domainMappingId': domainMappingId,
    };
  }

  factory GetDomainMappingAppengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1alphaArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      domainMappingId: pulumi.Input.fromValue(map['domainMappingId'] as String),
    );
  }
}
