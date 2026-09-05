// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_namespace_public_endpoint_params.dart';

/// {@template pulumi_index_ai_search_namespace_ai_search_namespace_args_doc}
/// The set of arguments for AiSearchNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_ai_search_namespace_ai_search_namespace_args_doc}
class AiSearchNamespaceArgs {
  final pulumi.Input<String> accountId;
  /// Optional description for the namespace. Max 256 characters.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> name;
  final pulumi.Input<AiSearchNamespacePublicEndpointParams?>? publicEndpointParams;

  /// Creates a new [AiSearchNamespaceArgs].
  /// [accountId] Required.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Required.
  /// [publicEndpointParams] Optional.
  const AiSearchNamespaceArgs({
    required this.accountId,
    this.description,
    required this.name,
    this.publicEndpointParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'name': name,
      'publicEndpointParams': ?pulumi.Input.mapOptionalInputValue<AiSearchNamespacePublicEndpointParams, Map<String, dynamic>>(publicEndpointParams, (value) => value.toMap()),
    };
  }

  factory AiSearchNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicEndpointParams: (() { final guardedValue = map['publicEndpointParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchNamespacePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
