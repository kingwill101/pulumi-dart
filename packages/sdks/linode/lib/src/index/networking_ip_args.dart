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
    this.linodeId,
    this.public,
    this.region,
    this.reserved,
    this.type,
  });

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
      linodeId: (() { final guardedValue = map['linodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

