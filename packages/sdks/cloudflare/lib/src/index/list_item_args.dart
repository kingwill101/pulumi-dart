// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_item_hostname.dart';
import 'list_item_redirect.dart';

/// {@template pulumi_index_list_item_list_item_args_doc}
/// The set of arguments for ListItem.
/// {@endtemplate}
/// {@macro pulumi_index_list_item_list_item_args_doc}
class ListItemArgs {
  /// The Account ID for this resource.
  final pulumi.Input<String> accountId;
  /// A non-negative 32 bit integer
  final pulumi.Input<int?>? asn;
  /// An informative summary of the list item.
  final pulumi.Input<String?>? comment;
  /// Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  final pulumi.Input<ListItemHostname?>? hostname;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  final pulumi.Input<String?>? ip;
  /// The unique ID of the list.
  final pulumi.Input<String> listId;
  /// The definition of the redirect.
  final pulumi.Input<ListItemRedirect?>? redirect;

  /// Creates a new [ListItemArgs].
  /// [accountId] The Account ID for this resource.
  /// [asn] A non-negative 32 bit integer
  /// [comment] An informative summary of the list item.
  /// [hostname] Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  /// [ip] An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  /// [listId] The unique ID of the list.
  /// [redirect] The definition of the redirect.
  const ListItemArgs({
    required this.accountId,
    this.asn,
    this.comment,
    this.hostname,
    this.ip,
    required this.listId,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'asn': ?asn,
      'comment': ?comment,
      'hostname': ?pulumi.Input.mapOptionalInputValue<ListItemHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'ip': ?ip,
      'listId': listId,
      'redirect': ?pulumi.Input.mapOptionalInputValue<ListItemRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory ListItemArgs.fromMap(Map<String, dynamic> map) {
    return ListItemArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listId: pulumi.Input.fromValue(map['listId'] as String),
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
