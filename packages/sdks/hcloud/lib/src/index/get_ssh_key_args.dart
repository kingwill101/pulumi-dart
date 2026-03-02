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
  GetSshKeyArgs({
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
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector'] as String).input(),
    );
  }
}

