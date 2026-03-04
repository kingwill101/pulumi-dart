// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restrictions.dart';

/// {@template pulumi_apikeys_v2_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_apikeys_v2_key_args_doc}
class KeyArgs {
  /// Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  final pulumi.Input<String>? displayName;

  /// User specified key id (optional). If specified, it will become the final component of the key resource name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  final pulumi.Input<String>? keyId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Key restrictions.
  final pulumi.Input<Restrictions>? restrictions;

  /// Creates a new [KeyArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [displayName] Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  /// [keyId] User specified key id (optional). If specified, it will become the final component of the key resource name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  /// [location] Optional.
  /// [project] Optional.
  /// [restrictions] Key restrictions.
  KeyArgs({
    this.annotations,
    this.displayName,
    this.keyId,
    this.location,
    this.project,
    this.restrictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'keyId': ?keyId,
      'location': ?location,
      'project': ?project,
      'restrictions':
          ?pulumi.Input.mapOptionalInputValue<
            Restrictions,
            Map<String, dynamic>
          >(restrictions, (value) => value.toMap()),
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyId: (() {
        final guardedValue = map['keyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restrictions: (() {
        final guardedValue = map['restrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Restrictions.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
