// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_metadata.dart';

/// Indicates some additional properties for dapr client type
class DaprProperties {
  /// The dapr component type
  final pulumi.Input<String>? componentType;
  /// Additional dapr metadata
  final pulumi.Input<List<DaprMetadata>>? metadata;
  /// The dapr component scopes
  final pulumi.Input<List<String>>? scopes;
  /// The name of a secret store dapr to retrieve secret
  final pulumi.Input<String>? secretStoreComponent;
  /// The dapr component version
  final pulumi.Input<String>? version;

  /// Creates a new [DaprProperties].
  /// [componentType] The dapr component type
  /// [metadata] Additional dapr metadata
  /// [scopes] The dapr component scopes
  /// [secretStoreComponent] The name of a secret store dapr to retrieve secret
  /// [version] The dapr component version
  DaprProperties({
    this.componentType,
    this.metadata,
    this.scopes,
    this.secretStoreComponent,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': ?componentType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<DaprMetadata>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<DaprMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopes': ?scopes,
      'secretStoreComponent': ?secretStoreComponent,
      'version': ?version,
    };
  }

  factory DaprProperties.fromMap(Map<String, dynamic> map) {
    return DaprProperties(
      componentType: map['componentType'] == null ? null : (map['componentType']! as String).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<DaprMetadata>(map['metadata']!, (value) => DaprMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
      secretStoreComponent: map['secretStoreComponent'] == null ? null : (map['secretStoreComponent']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

