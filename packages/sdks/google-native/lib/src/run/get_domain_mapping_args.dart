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
    required pulumi.Output<String> domainmappingId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      domainmappingId = pulumi.Input.asInput<String>(domainmappingId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainmappingId': domainmappingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingArgs(
      domainmappingId: pulumi.Output.create<String>(map['domainmappingId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

