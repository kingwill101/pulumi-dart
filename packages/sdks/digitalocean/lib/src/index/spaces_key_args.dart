// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_key_grant.dart';

/// {@template pulumi_index_spaces_key_spaces_key_args_doc}
/// The set of arguments for SpacesKey.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_key_spaces_key_args_doc}
class SpacesKeyArgs {
  /// A grant for the key (documented below).
  final pulumi.Input<List<SpacesKeyGrant>>? grants;
  /// The name of the key
  final pulumi.Input<String>? name;

  /// Creates a new [SpacesKeyArgs].
  /// [grants] A grant for the key (documented below).
  /// [name] The name of the key
  const SpacesKeyArgs({
    this.grants,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?pulumi.Input.mapOptionalInputValue<List<SpacesKeyGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<SpacesKeyGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SpacesKeyArgs.fromMap(Map<String, dynamic> map) {
    return SpacesKeyArgs(
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpacesKeyGrant>(guardedValue, (value) => SpacesKeyGrant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

