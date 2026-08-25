// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_ingestion.dart';

/// Result data returned by getConfig.
class GetConfigResult {
  final String? deletionPolicy;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetConfigIngestion>? ingestions;
  final String? location;
  final String? name;
  final String? parent;

  /// Creates a new [GetConfigResult].
  /// [deletionPolicy] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingestions] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [parent] Optional.
  const GetConfigResult({
    this.deletionPolicy,
    this.etag,
    this.id,
    this.ingestions,
    this.location,
    this.name,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'id': ?id,
      'ingestions': ?(() { final guardedValue = ingestions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigIngestion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingestions: (() { final guardedValue = map['ingestions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigIngestion>(guardedValue, (value) => GetConfigIngestion.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
