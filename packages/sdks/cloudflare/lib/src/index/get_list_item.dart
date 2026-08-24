// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_list_item_hostname.dart';
import 'get_list_item_redirect.dart';

class GetListItem {
  /// A non-negative 32 bit integer
  final pulumi.Input<int> asn;
  /// An informative summary of the list item.
  final pulumi.Input<String> comment;
  /// Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  final pulumi.Input<GetListItemHostname> hostname;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  final pulumi.Input<String> ip;
  /// The definition of the redirect.
  final pulumi.Input<GetListItemRedirect> redirect;

  /// Creates a new [GetListItem].
  /// [asn] A non-negative 32 bit integer
  /// [comment] An informative summary of the list item.
  /// [hostname] Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  /// [ip] An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  /// [redirect] The definition of the redirect.
  const GetListItem({
    required this.asn,
    required this.comment,
    required this.hostname,
    required this.ip,
    required this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'comment': comment,
      'hostname': pulumi.Input.mapInputValue<GetListItemHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'ip': ip,
      'redirect': pulumi.Input.mapInputValue<GetListItemRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory GetListItem.fromMap(Map<String, dynamic> map) {
    return GetListItem(
      asn: pulumi.Input.fromValue((map['asn'] as num).toInt()),
      comment: pulumi.Input.fromValue(map['comment'] as String),
      hostname: pulumi.Input.fromValue(GetListItemHostname.fromMap((map['hostname']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      redirect: pulumi.Input.fromValue(GetListItemRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())),
    );
  }
}
