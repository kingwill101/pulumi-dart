// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor.dart';

class ProvenanceBuilder {
  final List<ResourceDescriptor>? builderDependencies;
  final String? id;
  final Map<String, String>? version;

  /// Creates a new [ProvenanceBuilder].
  /// [builderDependencies] Optional.
  /// [id] Optional.
  /// [version] Optional.
  ProvenanceBuilder({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies': ?builderDependencies == null ? null : pulumi.Input.encodeList<ResourceDescriptor, Map<String, dynamic>>(builderDependencies!, (value) => value.toMap()),
      'id': ?id,
      'version': ?version,
    };
  }

  factory ProvenanceBuilder.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilder(
      builderDependencies: map['builderDependencies'] == null ? null : pulumi.Input.decodeList<ResourceDescriptor>(map['builderDependencies'], (value) => ResourceDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null ? null : (map['version'] as Map).cast<String, String>(),
    );
  }
}

