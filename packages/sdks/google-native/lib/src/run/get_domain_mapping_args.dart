// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v1_get_domain_mapping_args_doc}
/// Arguments for getDomainMapping.
/// {@endtemplate}
/// {@macro pulumi_run_v1_get_domain_mapping_args_doc}
class GetDomainMappingArgs {
  final pulumi.Input<String> domainmappingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainMappingArgs].
  /// [domainmappingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDomainMappingArgs({
    required this.domainmappingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainmappingId': domainmappingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingArgs(
      domainmappingId: pulumi.Input.fromValue(map['domainmappingId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
