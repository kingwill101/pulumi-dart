// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_item_hostname.dart';
import 'list_item_redirect.dart';

class ListItem {
  /// A non-negative 32 bit integer
  final pulumi.Input<int?>? asn;
  /// An informative summary of the list item.
  final pulumi.Input<String?>? comment;
  /// Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  final pulumi.Input<ListItemHostname?>? hostname;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  final pulumi.Input<String?>? ip;
  /// The definition of the redirect.
  final pulumi.Input<ListItemRedirect?>? redirect;

  /// Creates a new [ListItem].
  /// [asn] A non-negative 32 bit integer
  /// [comment] An informative summary of the list item.
  /// [hostname] Valid characters for hostnames are ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  /// [ip] An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  /// [redirect] The definition of the redirect.
  const ListItem({
    this.asn,
    this.comment,
    this.hostname,
    this.ip,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'comment': ?comment,
      'hostname': ?pulumi.Input.mapOptionalInputValue<ListItemHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'ip': ?ip,
      'redirect': ?pulumi.Input.mapOptionalInputValue<ListItemRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory ListItem.fromMap(Map<String, dynamic> map) {
    return ListItem(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
