// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_metadata.dart';
import 'domain_mapping_spec.dart';
import 'domain_mapping_status.dart';

/// Input properties used for looking up and filtering DomainMapping resources.
class DomainMappingState {
  /// The location of the cloud run instance. eg us-central1
  final pulumi.Input<String>? location;
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
  final pulumi.Input<DomainMappingSpec>? spec;
  /// (Output)
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<List<DomainMappingStatus>>? statuses;

  /// Creates a new [DomainMappingState].
  /// [location] The location of the cloud run instance. eg us-central1
  /// [metadata] Metadata associated with this DomainMapping.
  /// [name] Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  /// [project] The ID of the project in which the resource belongs.
  /// [spec] The spec for this DomainMapping.
  /// [statuses] (Output)
  DomainMappingState({
    this.location,
    this.metadata,
    this.name,
    this.project,
    this.spec,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'metadata': ?pulumi.Input.mapOptionalInputValue<DomainMappingMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'spec': ?pulumi.Input.mapOptionalInputValue<DomainMappingSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<DomainMappingStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<DomainMappingStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainMappingState.fromMap(Map<String, dynamic> map) {
    return DomainMappingState(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metadata: map['metadata'] == null ? null : (DomainMappingMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      spec: map['spec'] == null ? null : (DomainMappingSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<DomainMappingStatus>(map['statuses'], (value) => DomainMappingStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

