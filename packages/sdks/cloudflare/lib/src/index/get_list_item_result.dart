// ignore_for_file: unused_element, unnecessary_cast

import 'get_list_item_hostname.dart';
import 'get_list_item_redirect.dart';

/// Result data returned by getListItem.
class GetListItemResult {
  /// The Account ID for this resource.
  final String? accountId;
  /// Defines a non-negative 32 bit integer.
  final int? asn;
  /// Defines an informative summary of the list item.
  final String? comment;
  /// The RFC 3339 timestamp of when the list was created.
  final String? createdOn;
  /// Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  final GetListItemHostname? hostname;
  /// Defines the unique ID of the item in the List.
  final String? id;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  final String? ip;
  /// Defines the unique ID of the item in the List.
  final String? itemId;
  /// The unique ID of the list.
  final String? listId;
  /// The RFC 3339 timestamp of when the list was last modified.
  final String? modifiedOn;
  /// The definition of the redirect.
  final GetListItemRedirect? redirect;

  /// Creates a new [GetListItemResult].
  /// [accountId] The Account ID for this resource.
  /// [asn] Defines a non-negative 32 bit integer.
  /// [comment] Defines an informative summary of the list item.
  /// [createdOn] The RFC 3339 timestamp of when the list was created.
  /// [hostname] Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  /// [id] Defines the unique ID of the item in the List.
  /// [ip] An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  /// [itemId] Defines the unique ID of the item in the List.
  /// [listId] The unique ID of the list.
  /// [modifiedOn] The RFC 3339 timestamp of when the list was last modified.
  /// [redirect] The definition of the redirect.
  const GetListItemResult({
    this.accountId,
    this.asn,
    this.comment,
    this.createdOn,
    this.hostname,
    this.id,
    this.ip,
    this.itemId,
    this.listId,
    this.modifiedOn,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'asn': ?asn,
      'comment': ?comment,
      'createdOn': ?createdOn,
      'hostname': ?hostname?.toMap(),
      'id': ?id,
      'ip': ?ip,
      'itemId': ?itemId,
      'listId': ?listId,
      'modifiedOn': ?modifiedOn,
      'redirect': ?redirect?.toMap(),
    };
  }

  factory GetListItemResult.fromMap(Map<String, dynamic> map) {
    return GetListItemResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return GetListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      itemId: (() { final guardedValue = map['itemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listId: (() { final guardedValue = map['listId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return GetListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
