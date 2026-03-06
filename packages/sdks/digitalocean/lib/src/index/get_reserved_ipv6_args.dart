// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_reserved_ipv6_get_reserved_ipv6_args_doc}
/// Arguments for getReservedIpv6.
/// {@endtemplate}
/// {@macro pulumi_index_get_reserved_ipv6_get_reserved_ipv6_args_doc}
class GetReservedIpv6Args {
  /// The allocated IPv6 address of the specific reserved IPv6 to retrieve.
  final pulumi.Input<String> ip;

  /// Creates a new [GetReservedIpv6Args].
  /// [ip] The allocated IPv6 address of the specific reserved IPv6 to retrieve.
  const GetReservedIpv6Args({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetReservedIpv6Args.fromMap(Map<String, dynamic> map) {
    return GetReservedIpv6Args(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}

