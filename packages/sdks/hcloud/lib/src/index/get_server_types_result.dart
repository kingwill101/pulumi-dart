// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_types_server_type.dart';

/// Result data returned by getServerTypes.
class GetServerTypesResult {
  final List<String> descriptions;
  /// The ID of this resource.
  final String id;
  final List<String> names;
  final List<String> serverTypeIds;
  final List<GetServerTypesServerType> serverTypes;

  /// Creates a new [GetServerTypesResult].
  /// [descriptions] Required.
  /// [id] The ID of this resource.
  /// [names] Required.
  /// [serverTypeIds] Required.
  /// [serverTypes] Required.
  const GetServerTypesResult({
    required this.descriptions,
    required this.id,
    required this.names,
    required this.serverTypeIds,
    required this.serverTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptions': descriptions,
      'id': id,
      'names': names,
      'serverTypeIds': serverTypeIds,
      'serverTypes': pulumi.Input.encodeList<GetServerTypesServerType, Map<String, dynamic>>(serverTypes, (value) => value.toMap()),
    };
  }

  factory GetServerTypesResult.fromMap(Map<String, dynamic> map) {
    return GetServerTypesResult(
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      serverTypeIds: (map['serverTypeIds'] as List).cast<String>(),
      serverTypes: pulumi.Input.decodeList<GetServerTypesServerType>(map['serverTypes']!, (value) => GetServerTypesServerType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

