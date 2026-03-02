// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata.dart';
import 'provenance_builder.dart';
import 'resource_descriptor.dart';

class RunDetails {
  final pulumi.Input<ProvenanceBuilder>? builder;
  final pulumi.Input<List<ResourceDescriptor>>? byproducts;
  final pulumi.Input<BuildMetadata>? metadata;

  /// Creates a new [RunDetails].
  /// [builder] Optional.
  /// [byproducts] Optional.
  /// [metadata] Optional.
  RunDetails({
    this.builder,
    this.byproducts,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?pulumi.Input.mapOptionalInputValue<ProvenanceBuilder, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'byproducts': ?pulumi.Input.mapOptionalInputValue<List<ResourceDescriptor>, List<Map<String, dynamic>>>(byproducts, (value) => pulumi.Input.encodeList<ResourceDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<BuildMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory RunDetails.fromMap(Map<String, dynamic> map) {
    return RunDetails(
      builder: map['builder'] == null ? null : (ProvenanceBuilder.fromMap((map['builder']! as Map).cast<String, dynamic>())).input(),
      byproducts: map['byproducts'] == null ? null : (pulumi.Input.decodeList<ResourceDescriptor>(map['byproducts']!, (value) => ResourceDescriptor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : (BuildMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

