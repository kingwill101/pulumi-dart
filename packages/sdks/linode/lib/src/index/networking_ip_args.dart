// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_networking_ip_networking_ip_args_doc}
/// The set of arguments for NetworkingIp.
/// {@endtemplate}
/// {@macro pulumi_index_networking_ip_networking_ip_args_doc}
class NetworkingIpArgs {
  /// The ID of the Linode to allocate an IPv4 address for. **Required** when `reserved` is `false` or not set. Updating this field on an ephemeral IP will trigger a recreation. Conflicts with `region`.
  final pulumi.Input<int>? linodeId;
  /// Whether the IP address is public. Defaults to true.
  final pulumi.Input<bool>? public;
  /// The region for the reserved IPv4 address. Required when reserved is true and linode_id is not set.
  final pulumi.Input<String>? region;
  /// Whether the IPv4 address should be reserved.
  final pulumi.Input<bool>? reserved;
  /// The type of IP address. (ipv4, ipv6, etc.)
  final pulumi.Input<String>? type;

  /// Creates a new [NetworkingIpArgs].
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for. **Required** when `reserved` is `false` or not set. Updating this field on an ephemeral IP will trigger a recreation. Conflicts with `region`.
  /// [public] Whether the IP address is public. Defaults to true.
  /// [region] The region for the reserved IPv4 address. Required when reserved is true and linode_id is not set.
  /// [reserved] Whether the IPv4 address should be reserved.
  /// [type] The type of IP address. (ipv4, ipv6, etc.)
  NetworkingIpArgs({
    pulumi.Output<int>? linodeId,
    pulumi.Output<bool>? public,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? reserved,
    pulumi.Output<String>? type,
  }) :
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      public = pulumi.Input.asOptionalInput<bool>(public),
      region = pulumi.Input.asOptionalInput<String>(region),
      reserved = pulumi.Input.asOptionalInput<bool>(reserved),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': ?linodeId,
      'public': ?public,
      'region': ?region,
      'reserved': ?reserved,
      'type': ?type,
    };
  }

  factory NetworkingIpArgs.fromMap(Map<String, dynamic> map) {
    return NetworkingIpArgs(
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
      public: map['public'] == null ? null : pulumi.Output.create<bool>(map['public'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reserved: map['reserved'] == null ? null : pulumi.Output.create<bool>(map['reserved'] as bool),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

