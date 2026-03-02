// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_floating_ip_floating_ip_args_doc}
/// The set of arguments for FloatingIp.
/// {@endtemplate}
/// {@macro pulumi_index_floating_ip_floating_ip_args_doc}
class FloatingIpArgs {
  /// The ID of Droplet that the Floating IP will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The IP Address of the resource
  final pulumi.Input<String>? ipAddress;
  /// The region that the Floating IP is reserved to.
  final pulumi.Input<String> region;

  /// Creates a new [FloatingIpArgs].
  /// [dropletId] The ID of Droplet that the Floating IP will be assigned to.
  /// [ipAddress] The IP Address of the resource
  /// [region] The region that the Floating IP is reserved to.
  FloatingIpArgs({
    this.dropletId,
    this.ipAddress,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
      'region': region,
    };
  }

  factory FloatingIpArgs.fromMap(Map<String, dynamic> map) {
    return FloatingIpArgs(
      dropletId: map['dropletId'] == null ? null : (map['dropletId']! as int).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

