// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_domain_mapping_appengine_v1beta_args_doc}
/// Arguments for getDomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_domain_mapping_appengine_v1beta_args_doc}
class GetDomainMappingAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> domainMappingId;

  /// Creates a new [GetDomainMappingAppengineV1betaArgs].
  /// [appId] Required.
  /// [domainMappingId] Required.
  GetDomainMappingAppengineV1betaArgs({
    required pulumi.Output<String> appId,
    required pulumi.Output<String> domainMappingId,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      domainMappingId = pulumi.Input.asInput<String>(domainMappingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'domainMappingId': domainMappingId,
    };
  }

  factory GetDomainMappingAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1betaArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      domainMappingId: pulumi.Output.create<String>(map['domainMappingId'] as String),
    );
  }
}

