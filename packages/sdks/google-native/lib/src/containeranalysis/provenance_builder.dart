// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor.dart';

class ProvenanceBuilder {
  final pulumi.Input<List<ResourceDescriptor>>? builderDependencies;
  final pulumi.Input<String>? id;
  final pulumi.Input<Map<String, String>>? version;

  /// Creates a new [ProvenanceBuilder].
  /// [builderDependencies] Optional.
  /// [id] Optional.
  /// [version] Optional.
  const ProvenanceBuilder({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies': ?pulumi.Input.mapOptionalInputValue<List<ResourceDescriptor>, List<Map<String, dynamic>>>(builderDependencies, (value) => pulumi.Input.encodeList<ResourceDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'version': ?version,
    };
  }

  factory ProvenanceBuilder.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilder(
      builderDependencies: (() { final guardedValue = map['builderDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceDescriptor>(guardedValue, (value) => ResourceDescriptor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

