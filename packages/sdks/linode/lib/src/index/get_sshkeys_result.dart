// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sshkeys_filter.dart';
import 'get_sshkeys_sshkey.dart';

/// Result data returned by getSshkeys.
class GetSshkeysResult {
  final List<GetSshkeysFilter>? filters;
  /// The ID of the SSH Key.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetSshkeysSshkey> sshkeys;

  /// Creates a new [GetSshkeysResult].
  /// [filters] Optional.
  /// [id] The ID of the SSH Key.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [sshkeys] Required.
  GetSshkeysResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.sshkeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetSshkeysFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'sshkeys': pulumi.Input.encodeList<GetSshkeysSshkey, Map<String, dynamic>>(sshkeys, (value) => value.toMap()),
    };
  }

  factory GetSshkeysResult.fromMap(Map<String, dynamic> map) {
    return GetSshkeysResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSshkeysFilter>(map['filters'], (value) => GetSshkeysFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
      sshkeys: pulumi.Input.decodeList<GetSshkeysSshkey>(map['sshkeys'], (value) => GetSshkeysSshkey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

