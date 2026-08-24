// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretsStore resources.
class SecretsStoreState {
  final pulumi.Input<String?>? accountId;
  /// When the secret was created.
  final pulumi.Input<String?>? created;
  /// When the secret was modified.
  final pulumi.Input<String?>? modified;
  /// The name of the store.
  final pulumi.Input<String?>? name;

  /// Creates a new [SecretsStoreState].
  /// [accountId] Optional.
  /// [created] When the secret was created.
  /// [modified] When the secret was modified.
  /// [name] The name of the store.
  const SecretsStoreState({
    this.accountId,
    this.created,
    this.modified,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'modified': ?modified,
      'name': ?name,
    };
  }

  factory SecretsStoreState.fromMap(Map<String, dynamic> map) {
    return SecretsStoreState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
