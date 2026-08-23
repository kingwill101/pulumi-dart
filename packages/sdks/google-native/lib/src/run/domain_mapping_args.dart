// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_spec.dart';
import 'object_meta.dart';

/// {@template pulumi_run_v1_domain_mapping_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_run_v1_domain_mapping_args_doc}
class DomainMappingArgs {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  final pulumi.Input<String>? apiVersion;
  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  final pulumi.Input<String>? dryRun;
  /// The kind of resource, in this case "DomainMapping".
  final pulumi.Input<String>? kind;
  final pulumi.Input<String>? location;
  /// Metadata associated with this BuildTemplate.
  final pulumi.Input<ObjectMeta>? metadata;
  final pulumi.Input<String>? project;
  /// The spec for this DomainMapping.
  final pulumi.Input<DomainMappingSpec>? spec;

  /// Creates a new [DomainMappingArgs].
  /// [apiVersion] The API version for this call such as "domains.cloudrun.com/v1".
  /// [dryRun] Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  /// [kind] The kind of resource, in this case "DomainMapping".
  /// [location] Optional.
  /// [metadata] Metadata associated with this BuildTemplate.
  /// [project] Optional.
  /// [spec] The spec for this DomainMapping.
  const DomainMappingArgs({
    this.apiVersion,
    this.dryRun,
    this.kind,
    this.location,
    this.metadata,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'dryRun': ?dryRun,
      'kind': ?kind,
      'location': ?location,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'project': ?project,
      'spec': ?pulumi.Input.mapOptionalInputValue<DomainMappingSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMappingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
