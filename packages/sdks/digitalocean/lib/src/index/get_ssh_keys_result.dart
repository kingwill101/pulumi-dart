// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_keys_filter.dart';
import 'get_ssh_keys_sort.dart';
import 'get_ssh_keys_ssh_key.dart';

/// Result data returned by getSshKeys.
class GetSshKeysResult {
  final List<GetSshKeysFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetSshKeysSort>? sorts;
  /// A list of SSH Keys. Each SSH Key has the following attributes:
  final List<GetSshKeysSshKey> sshKeys;

  /// Creates a new [GetSshKeysResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  /// [sshKeys] A list of SSH Keys. Each SSH Key has the following attributes:
  const GetSshKeysResult({
    this.filters,
    required this.id,
    this.sorts,
    required this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSshKeysFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSshKeysSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sshKeys': pulumi.Input.encodeList<GetSshKeysSshKey, Map<String, dynamic>>(sshKeys, (value) => value.toMap()),
    };
  }

  factory GetSshKeysResult.fromMap(Map<String, dynamic> map) {
    return GetSshKeysResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSshKeysFilter>(guardedValue, (value) => GetSshKeysFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSshKeysSort>(guardedValue, (value) => GetSshKeysSort.fromMap((value as Map).cast<String, dynamic>())); })(),
      sshKeys: pulumi.Input.decodeList<GetSshKeysSshKey>(map['sshKeys']!, (value) => GetSshKeysSshKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
