// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spaces_key_grant.dart';

/// Result data returned by getSpacesKey.
class GetSpacesKeyResult {
  /// The access key ID of the Spaces key
  final String? accessKey;
  /// The creation time of the Spaces key
  final String? createdAt;
  /// The list of grants associated with the Spaces key.
  final List<GetSpacesKeyGrant>? grants;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the Spaces key
  final String? name;

  /// Creates a new [GetSpacesKeyResult].
  /// [accessKey] The access key ID of the Spaces key
  /// [createdAt] The creation time of the Spaces key
  /// [grants] The list of grants associated with the Spaces key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the Spaces key
  const GetSpacesKeyResult({
    this.accessKey,
    this.createdAt,
    this.grants,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'createdAt': ?createdAt,
      'grants': ?(() { final guardedValue = grants; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpacesKeyGrant, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetSpacesKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesKeyResult(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpacesKeyGrant>(guardedValue, (value) => GetSpacesKeyGrant.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
