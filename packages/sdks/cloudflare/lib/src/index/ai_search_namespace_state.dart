// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_namespace_public_endpoint_params.dart';

/// Input properties used for looking up and filtering AiSearchNamespace resources.
class AiSearchNamespaceState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Optional description for the namespace. Max 256 characters.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? publicEndpointId;
  final pulumi.Input<AiSearchNamespacePublicEndpointParams?>? publicEndpointParams;

  /// Creates a new [AiSearchNamespaceState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Optional.
  /// [publicEndpointId] Optional.
  /// [publicEndpointParams] Optional.
  const AiSearchNamespaceState({
    this.accountId,
    this.createdAt,
    this.description,
    this.name,
    this.publicEndpointId,
    this.publicEndpointParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
      'publicEndpointId': ?publicEndpointId,
      'publicEndpointParams': ?pulumi.Input.mapOptionalInputValue<AiSearchNamespacePublicEndpointParams, Map<String, dynamic>>(publicEndpointParams, (value) => value.toMap()),
    };
  }

  factory AiSearchNamespaceState.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespaceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicEndpointId: (() { final guardedValue = map['publicEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicEndpointParams: (() { final guardedValue = map['publicEndpointParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchNamespacePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
