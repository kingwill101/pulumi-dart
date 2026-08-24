// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_item_hostname.dart';
import 'list_item_redirect.dart';

/// Input properties used for looking up and filtering ListItem resources.
class ListItemState {
  /// The Account ID for this resource.
  final pulumi.Input<String?>? accountId;
  /// A non-negative 32 bit integer
  final pulumi.Input<int?>? asn;
  /// An informative summary of the list item.
  final pulumi.Input<String?>? comment;
  /// The RFC 3339 timestamp of when the item was created.
  final pulumi.Input<String?>? createdOn;
  /// Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  final pulumi.Input<ListItemHostname?>? hostname;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  final pulumi.Input<String?>? ip;
  /// The unique ID of the list.
  final pulumi.Input<String?>? listId;
  /// The RFC 3339 timestamp of when the item was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The unique operation ID of the asynchronous action.
  final pulumi.Input<String?>? operationId;
  /// The definition of the redirect.
  final pulumi.Input<ListItemRedirect?>? redirect;

  /// Creates a new [ListItemState].
  /// [accountId] The Account ID for this resource.
  /// [asn] A non-negative 32 bit integer
  /// [comment] An informative summary of the list item.
  /// [createdOn] The RFC 3339 timestamp of when the item was created.
  /// [hostname] Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  /// [ip] An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  /// [listId] The unique ID of the list.
  /// [modifiedOn] The RFC 3339 timestamp of when the item was last modified.
  /// [operationId] The unique operation ID of the asynchronous action.
  /// [redirect] The definition of the redirect.
  const ListItemState({
    this.accountId,
    this.asn,
    this.comment,
    this.createdOn,
    this.hostname,
    this.ip,
    this.listId,
    this.modifiedOn,
    this.operationId,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'asn': ?asn,
      'comment': ?comment,
      'createdOn': ?createdOn,
      'hostname': ?pulumi.Input.mapOptionalInputValue<ListItemHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'ip': ?ip,
      'listId': ?listId,
      'modifiedOn': ?modifiedOn,
      'operationId': ?operationId,
      'redirect': ?pulumi.Input.mapOptionalInputValue<ListItemRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory ListItemState.fromMap(Map<String, dynamic> map) {
    return ListItemState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listId: (() { final guardedValue = map['listId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
