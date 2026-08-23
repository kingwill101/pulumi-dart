// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_metadata.dart';
import 'domain_mapping_spec.dart';

/// {@template pulumi_cloudrun_domain_mapping_domain_mapping_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_cloudrun_domain_mapping_domain_mapping_args_doc}
class DomainMappingArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the cloud run instance. eg us-central1
  /// [metadata] Metadata associated with this DomainMapping.
  /// [name] Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  /// [project] The ID of the project in which the resource belongs.
  /// [spec] The spec for this DomainMapping.
  const DomainMappingArgs({
    this.deletionPolicy,
    required this.location,
    this.metadata,
    this.name,
    this.project,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'metadata': ?pulumi.Input.mapOptionalInputValue<DomainMappingMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'spec': pulumi.Input.mapInputValue<DomainMappingSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMappingMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: pulumi.Input.fromValue(DomainMappingSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
