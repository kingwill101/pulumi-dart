// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// Arguments for getSshKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
class GetSshKeyArgs {
  /// Fingerprint of the SSH Key.
  final pulumi.Input<String>? fingerprint;
  /// ID of the SSH Key.
  final pulumi.Input<int>? id;
  /// Name of the SSH Key.
  final pulumi.Input<String>? name;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? selector;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetSshKeyArgs].
  /// [fingerprint] Fingerprint of the SSH Key.
  /// [id] ID of the SSH Key.
  /// [name] Name of the SSH Key.
  /// [selector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  const GetSshKeyArgs({
    this.fingerprint,
    this.id,
    this.name,
    this.selector,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'id': ?id,
      'name': ?name,
      'selector': ?selector,
      'withSelector': ?withSelector,
    };
  }

  factory GetSshKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshKeyArgs(
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
