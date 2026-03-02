// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_reserved_ipv6_reserved_ipv6_args_doc}
/// The set of arguments for ReservedIpv6.
/// {@endtemplate}
/// {@macro pulumi_index_reserved_ipv6_reserved_ipv6_args_doc}
class ReservedIpv6Args {
  final pulumi.Input<int>? dropletId;
  final pulumi.Input<String>? ip;
  /// The region that the reserved IPv6 needs to be reserved to.
  final pulumi.Input<String> regionSlug;

  /// Creates a new [ReservedIpv6Args].
  /// [dropletId] Optional.
  /// [ip] Optional.
  /// [regionSlug] The region that the reserved IPv6 needs to be reserved to.
  ReservedIpv6Args({
    this.dropletId,
    this.ip,
    required this.regionSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ip': ?ip,
      'regionSlug': regionSlug,
    };
  }

  factory ReservedIpv6Args.fromMap(Map<String, dynamic> map) {
    return ReservedIpv6Args(
      dropletId: map['dropletId'] == null ? null : (map['dropletId']! as int).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
      regionSlug: (map['regionSlug'] as String).input(),
    );
  }
}

