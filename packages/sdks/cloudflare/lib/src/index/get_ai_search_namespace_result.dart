// ignore_for_file: unused_element, unnecessary_cast

import 'get_ai_search_namespace_filter.dart';
import 'get_ai_search_namespace_public_endpoint_params.dart';

/// Result data returned by getAiSearchNamespace.
class GetAiSearchNamespaceResult {
  final String? accountId;
  final String? createdAt;
  /// Optional description for the namespace. Max 256 characters.
  final String? description;
  final GetAiSearchNamespaceFilter? filter;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final String? publicEndpointId;
  final GetAiSearchNamespacePublicEndpointParams? publicEndpointParams;

  /// Creates a new [GetAiSearchNamespaceResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [publicEndpointId] Optional.
  /// [publicEndpointParams] Optional.
  const GetAiSearchNamespaceResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.filter,
    this.id,
    this.name,
    this.publicEndpointId,
    this.publicEndpointParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'name': ?name,
      'publicEndpointId': ?publicEndpointId,
      'publicEndpointParams': ?publicEndpointParams?.toMap(),
    };
  }

  factory GetAiSearchNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespaceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAiSearchNamespaceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicEndpointId: (() { final guardedValue = map['publicEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicEndpointParams: (() { final guardedValue = map['publicEndpointParams']; if (guardedValue == null) return null; return GetAiSearchNamespacePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
