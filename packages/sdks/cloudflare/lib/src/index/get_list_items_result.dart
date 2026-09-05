// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_list_items_result_hostname.dart';
import 'get_list_items_result_redirect.dart';

class GetListItemsResult {
  /// Defines a non-negative 32 bit integer.
  final pulumi.Input<int> asn;
  /// Defines	an informative summary of the list item.
  final pulumi.Input<String> comment;
  /// The RFC 3339 timestamp of when the item was created.
  final pulumi.Input<String> createdOn;
  /// Hostnames support ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  final pulumi.Input<GetListItemsResultHostname> hostname;
  /// Defines the unique ID of the item in the List.
  final pulumi.Input<String> id;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  final pulumi.Input<String> ip;
  /// The RFC 3339 timestamp of when the item was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The definition of the redirect.
  final pulumi.Input<GetListItemsResultRedirect> redirect;

  /// Creates a new [GetListItemsResult].
  /// [asn] Defines a non-negative 32 bit integer.
  /// [comment] Defines	an informative summary of the list item.
  /// [createdOn] The RFC 3339 timestamp of when the item was created.
  /// [hostname] Hostnames support ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  /// [id] Defines the unique ID of the item in the List.
  /// [ip] An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  /// [modifiedOn] The RFC 3339 timestamp of when the item was last modified.
  /// [redirect] The definition of the redirect.
  const GetListItemsResult({
    required this.asn,
    required this.comment,
    required this.createdOn,
    required this.hostname,
    required this.id,
    required this.ip,
    required this.modifiedOn,
    required this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'comment': comment,
      'createdOn': createdOn,
      'hostname': pulumi.Input.mapInputValue<GetListItemsResultHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'id': id,
      'ip': ip,
      'modifiedOn': modifiedOn,
      'redirect': pulumi.Input.mapInputValue<GetListItemsResultRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory GetListItemsResult.fromMap(Map<String, dynamic> map) {
    return GetListItemsResult(
      asn: pulumi.Input.fromValue((map['asn'] as num).toInt()),
      comment: pulumi.Input.fromValue(map['comment'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      hostname: pulumi.Input.fromValue(GetListItemsResultHostname.fromMap((map['hostname']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      redirect: pulumi.Input.fromValue(GetListItemsResultRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())),
    );
  }
}
