// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_ingestion.dart';

/// Result data returned by getConfig.
class GetConfigResult {
  final String deletionPolicy;
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetConfigIngestion> ingestions;
  final String location;
  final String name;
  final String parent;

  /// Creates a new [GetConfigResult].
  /// [deletionPolicy] Required.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingestions] Required.
  /// [location] Required.
  /// [name] Required.
  /// [parent] Required.
  const GetConfigResult({
    required this.deletionPolicy,
    required this.etag,
    required this.id,
    required this.ingestions,
    required this.location,
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'etag': etag,
      'id': id,
      'ingestions': pulumi.Input.encodeList<GetConfigIngestion, Map<String, dynamic>>(ingestions, (value) => value.toMap()),
      'location': location,
      'name': name,
      'parent': parent,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      deletionPolicy: map['deletionPolicy'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      ingestions: pulumi.Input.decodeList<GetConfigIngestion>(map['ingestions']!, (value) => GetConfigIngestion.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
    );
  }
}
