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
  SpacesKeyState({
    pulumi.Output<String>? accessKey,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<SpacesKeyGrant>>? grants,
    pulumi.Output<String>? name,
    pulumi.Output<String>? secretKey,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      grants = pulumi.Input.asOptionalInput<List<SpacesKeyGrant>>(grants),
      name = pulumi.Input.asOptionalInput<String>(name),
      secretKey = pulumi.Input.asOptionalInput<String>(secretKey);

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
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      grants: map['grants'] == null ? null : pulumi.Output.create<List<SpacesKeyGrant>>(pulumi.Input.decodeList<SpacesKeyGrant>(map['grants'], (value) => SpacesKeyGrant.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      secretKey: map['secretKey'] == null ? null : pulumi.Output.create<String>(map['secretKey'] as String),
    );
  }
}

