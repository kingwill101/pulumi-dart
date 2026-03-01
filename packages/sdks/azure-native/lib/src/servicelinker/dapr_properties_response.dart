// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_metadata_response.dart';

/// Indicates some additional properties for dapr client type
class DaprPropertiesResponse {
  /// The direction supported by the dapr binding component
  final String bindingComponentDirection;
  /// The dapr component type
  final String? componentType;
  /// Additional dapr metadata
  final List<DaprMetadataResponse>? metadata;
  /// The runtime version supported by the properties
  final String runtimeVersion;
  /// The dapr component scopes
  final List<String>? scopes;
  /// The name of a secret store dapr to retrieve secret
  final String? secretStoreComponent;
  /// The dapr component version
  final String? version;

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
      'metadata': ?metadata == null ? null : pulumi.Input.encodeList<DaprMetadataResponse, Map<String, dynamic>>(metadata!, (value) => value.toMap()),
      'runtimeVersion': runtimeVersion,
      'scopes': ?scopes,
      'secretStoreComponent': ?secretStoreComponent,
      'version': ?version,
    };
  }

  factory DaprPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DaprPropertiesResponse(
      bindingComponentDirection: map['bindingComponentDirection'] as String,
      componentType: map['componentType'] == null ? null : map['componentType'] as String,
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<DaprMetadataResponse>(map['metadata'], (value) => DaprMetadataResponse.fromMap((value as Map).cast<String, dynamic>())),
      runtimeVersion: map['runtimeVersion'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secretStoreComponent: map['secretStoreComponent'] == null ? null : map['secretStoreComponent'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

