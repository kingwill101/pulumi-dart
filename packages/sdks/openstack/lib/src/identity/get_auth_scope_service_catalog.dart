// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_scope_service_catalog_endpoint.dart';

class GetAuthScopeServiceCatalog {
  /// A list of endpoints for the service.
  final List<GetAuthScopeServiceCatalogEndpoint> endpoints;
  /// The ID of the endpoint.
  final String id;
  /// The name of the scope. This is an arbitrary name which is
  /// only used as a unique identifier so an actual token isn't used as the ID.
  final String name;
  /// The type of the service.
  final String type;

  /// Creates a new [GetAuthScopeServiceCatalog].
  /// [endpoints] A list of endpoints for the service.
  /// [id] The ID of the endpoint.
  /// [name] The name of the scope. This is an arbitrary name which is
  /// [type] The type of the service.
  GetAuthScopeServiceCatalog({
    required this.endpoints,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': pulumi.Input.encodeList<GetAuthScopeServiceCatalogEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetAuthScopeServiceCatalog.fromMap(Map<String, dynamic> map) {
    return GetAuthScopeServiceCatalog(
      endpoints: pulumi.Input.decodeList<GetAuthScopeServiceCatalogEndpoint>(map['endpoints'], (value) => GetAuthScopeServiceCatalogEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

