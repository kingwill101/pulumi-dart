// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_metadata.dart';
import 'domain_mapping_spec.dart';

/// {@template pulumi_cloudrun_domain_mapping_domain_mapping_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_cloudrun_domain_mapping_domain_mapping_args_doc}
class DomainMappingArgs {
  /// The location of the cloud run instance. eg us-central1
  final pulumi.Input<String> location;
  /// Metadata associated with this DomainMapping.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingMetadata>? metadata;
  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The spec for this DomainMapping.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingSpec> spec;

  /// Creates a new [DomainMappingArgs].
  /// [location] The location of the cloud run instance. eg us-central1
  /// [metadata] Metadata associated with this DomainMapping.
  /// [name] Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  /// [project] The ID of the project in which the resource belongs.
  /// [spec] The spec for this DomainMapping.
  DomainMappingArgs({
    required this.location,
    this.metadata,
    this.name,
    this.project,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'metadata': ?pulumi.Input.mapOptionalInputValue<DomainMappingMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'spec': pulumi.Input.mapInputValue<DomainMappingSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      location: (map['location'] as String).input(),
      metadata: map['metadata'] == null ? null : (DomainMappingMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      spec: (DomainMappingSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

