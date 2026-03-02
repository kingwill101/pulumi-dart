// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ssh_keys_get_ssh_keys_args_doc}
/// Arguments for getSshKeys.
/// {@endtemplate}
/// {@macro pulumi_index_get_ssh_keys_get_ssh_keys_args_doc}
class GetSshKeysArgs {
  /// The ID of this resource.
  final pulumi.Input<String>? id;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetSshKeysArgs].
  /// [id] The ID of this resource.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetSshKeysArgs({
    this.id,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'withSelector': ?withSelector,
    };
  }

  factory GetSshKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetSshKeysArgs(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
    );
  }
}

