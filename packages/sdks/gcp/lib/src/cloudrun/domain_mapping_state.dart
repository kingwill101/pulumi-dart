// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_metadata.dart';
import 'domain_mapping_spec.dart';
import 'domain_mapping_status.dart';

/// Input properties used for looking up and filtering DomainMapping resources.
class DomainMappingState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the cloud run instance. eg us-central1
  /// [metadata] Metadata associated with this DomainMapping.
  /// [name] Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  /// [project] The ID of the project in which the resource belongs.
  /// [spec] The spec for this DomainMapping.
  /// [statuses] (Output)
  const DomainMappingState({
    this.deletionPolicy,
    this.location,
    this.metadata,
    this.name,
    this.project,
    this.spec,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMappingMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMappingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainMappingStatus>(guardedValue, (value) => DomainMappingStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
