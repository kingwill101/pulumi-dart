// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_domain_mapping_args_doc}
/// Arguments for getDomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_domain_mapping_args_doc}
class GetDomainMappingArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> domainMappingId;

  /// Creates a new [GetDomainMappingArgs].
  /// [appId] Required.
  /// [domainMappingId] Required.
  GetDomainMappingArgs({required this.appId, required this.domainMappingId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'domainMappingId': domainMappingId,
    };
  }

  factory GetDomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      domainMappingId: pulumi.Input.fromValue(map['domainMappingId'] as String),
    );
  }
}
