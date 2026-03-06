// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_key_grant.dart';

/// Input properties used for looking up and filtering SpacesKey resources.
class SpacesKeyState {
  /// The access key ID of the key
  final pulumi.Input<String>? accessKey;
  /// The creation time of the key
  final pulumi.Input<String>? createdAt;
  /// A grant for the key (documented below).
  final pulumi.Input<List<SpacesKeyGrant>>? grants;
  /// The name of the key
  final pulumi.Input<String>? name;
  /// The access key secret of the key
  final pulumi.Input<String>? secretKey;

  /// Creates a new [SpacesKeyState].
  /// [accessKey] The access key ID of the key
  /// [createdAt] The creation time of the key
  /// [grants] A grant for the key (documented below).
  /// [name] The name of the key
  /// [secretKey] The access key secret of the key
  const SpacesKeyState({
    this.accessKey,
    this.createdAt,
    this.grants,
    this.name,
    this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'createdAt': ?createdAt,
      'grants': ?pulumi.Input.mapOptionalInputValue<List<SpacesKeyGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<SpacesKeyGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'secretKey': ?secretKey,
    };
  }

  factory SpacesKeyState.fromMap(Map<String, dynamic> map) {
    return SpacesKeyState(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpacesKeyGrant>(guardedValue, (value) => SpacesKeyGrant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

