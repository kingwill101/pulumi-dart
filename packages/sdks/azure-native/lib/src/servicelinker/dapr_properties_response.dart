// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_metadata_response.dart';

/// Indicates some additional properties for dapr client type
class DaprPropertiesResponse {
  /// The direction supported by the dapr binding component
  final pulumi.Input<String> bindingComponentDirection;
  /// The dapr component type
  final pulumi.Input<String>? componentType;
  /// Additional dapr metadata
  final pulumi.Input<List<DaprMetadataResponse>>? metadata;
  /// The runtime version supported by the properties
  final pulumi.Input<String> runtimeVersion;
  /// The dapr component scopes
  final pulumi.Input<List<String>>? scopes;
  /// The name of a secret store dapr to retrieve secret
  final pulumi.Input<String>? secretStoreComponent;
  /// The dapr component version
  final pulumi.Input<String>? version;

  /// Creates a new [DaprPropertiesResponse].
  /// [bindingComponentDirection] The direction supported by the dapr binding component
  /// [componentType] The dapr component type
  /// [metadata] Additional dapr metadata
  /// [runtimeVersion] The runtime version supported by the properties
  /// [scopes] The dapr component scopes
  /// [secretStoreComponent] The name of a secret store dapr to retrieve secret
  /// [version] The dapr component version
  DaprPropertiesResponse({
    required this.bindingComponentDirection,
    this.componentType,
    this.metadata,
    required this.runtimeVersion,
    this.scopes,
    this.secretStoreComponent,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingComponentDirection': bindingComponentDirection,
      'componentType': ?componentType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<DaprMetadataResponse>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<DaprMetadataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeVersion': runtimeVersion,
      'scopes': ?scopes,
      'secretStoreComponent': ?secretStoreComponent,
      'version': ?version,
    };
  }

  factory DaprPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DaprPropertiesResponse(
      bindingComponentDirection: (map['bindingComponentDirection'] as String).input(),
      componentType: map['componentType'] == null ? null : (map['componentType'] as String).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<DaprMetadataResponse>(map['metadata'], (value) => DaprMetadataResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      runtimeVersion: (map['runtimeVersion'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      secretStoreComponent: map['secretStoreComponent'] == null ? null : (map['secretStoreComponent'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

