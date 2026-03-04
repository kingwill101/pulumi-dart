// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_keys_ssh_key.dart';

/// Result data returned by getSshKeys.
class GetSshKeysResult {
  /// The ID of this resource.
  final String? id;
  final List<GetSshKeysSshKey> sshKeys;

  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetSshKeysResult].
  /// [id] The ID of this resource.
  /// [sshKeys] Required.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetSshKeysResult({this.id, required this.sshKeys, this.withSelector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'sshKeys':
          pulumi.Input.encodeList<GetSshKeysSshKey, Map<String, dynamic>>(
            sshKeys,
            (value) => value.toMap(),
          ),
      'withSelector': ?withSelector,
    };
  }

  factory GetSshKeysResult.fromMap(Map<String, dynamic> map) {
    return GetSshKeysResult(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sshKeys: pulumi.Input.decodeList<GetSshKeysSshKey>(
        map['sshKeys']!,
        (value) =>
            GetSshKeysSshKey.fromMap((value as Map).cast<String, dynamic>()),
      ),
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
