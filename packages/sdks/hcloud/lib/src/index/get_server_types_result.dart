// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_types_server_type.dart';

/// Result data returned by getServerTypes.
class GetServerTypesResult {
  final List<String>? descriptions;
  /// The ID of this resource.
  final String? id;
  final List<String>? names;
  final List<String>? serverTypeIds;
  final List<GetServerTypesServerType>? serverTypes;

  /// Creates a new [GetServerTypesResult].
  /// [descriptions] Optional.
  /// [id] The ID of this resource.
  /// [names] Optional.
  /// [serverTypeIds] Optional.
  /// [serverTypes] Optional.
  const GetServerTypesResult({
    this.descriptions,
    this.id,
    this.names,
    this.serverTypeIds,
    this.serverTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptions': ?descriptions,
      'id': ?id,
      'names': ?names,
      'serverTypeIds': ?serverTypeIds,
      'serverTypes': ?(() { final guardedValue = serverTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerTypesServerType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServerTypesResult.fromMap(Map<String, dynamic> map) {
    return GetServerTypesResult(
      descriptions: (() { final guardedValue = map['descriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serverTypeIds: (() { final guardedValue = map['serverTypeIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serverTypes: (() { final guardedValue = map['serverTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerTypesServerType>(guardedValue, (value) => GetServerTypesServerType.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
