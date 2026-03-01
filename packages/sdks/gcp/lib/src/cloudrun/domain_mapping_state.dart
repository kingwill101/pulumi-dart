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
    pulumi.Output<String>? location,
    pulumi.Output<DomainMappingMetadata>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<DomainMappingSpec>? spec,
    pulumi.Output<List<DomainMappingStatus>>? statuses,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<DomainMappingMetadata>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      spec = pulumi.Input.asOptionalInput<DomainMappingSpec>(spec),
      statuses = pulumi.Input.asOptionalInput<List<DomainMappingStatus>>(statuses);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<DomainMappingMetadata>(DomainMappingMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<DomainMappingSpec>(DomainMappingSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<DomainMappingStatus>>(pulumi.Input.decodeList<DomainMappingStatus>(map['statuses'], (value) => DomainMappingStatus.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

