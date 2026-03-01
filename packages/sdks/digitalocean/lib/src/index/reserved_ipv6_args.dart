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
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? ip,
    required pulumi.Output<String> regionSlug,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      regionSlug = pulumi.Input.asInput<String>(regionSlug);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ip': ?ip,
      'regionSlug': regionSlug,
    };
  }

  factory ReservedIpv6Args.fromMap(Map<String, dynamic> map) {
    return ReservedIpv6Args(
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      regionSlug: pulumi.Output.create<String>(map['regionSlug'] as String),
    );
  }
}

