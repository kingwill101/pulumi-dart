// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_reserved_ip_reserved_ip_args_doc}
/// The set of arguments for ReservedIp.
/// {@endtemplate}
/// {@macro pulumi_index_reserved_ip_reserved_ip_args_doc}
class ReservedIpArgs {
  /// The ID of Droplet that the reserved IP will be assigned to.
  final pulumi.Input<int>? dropletId;

  /// The IP Address of the resource
  final pulumi.Input<String>? ipAddress;

  /// The region that the reserved IP is reserved to.
  final pulumi.Input<String> region;

  /// Creates a new [ReservedIpArgs].
  /// [dropletId] The ID of Droplet that the reserved IP will be assigned to.
  /// [ipAddress] The IP Address of the resource
  /// [region] The region that the reserved IP is reserved to.
  ReservedIpArgs({this.dropletId, this.ipAddress, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
      'region': region,
    };
  }

  factory ReservedIpArgs.fromMap(Map<String, dynamic> map) {
    return ReservedIpArgs(
      dropletId: (() {
        final guardedValue = map['dropletId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
