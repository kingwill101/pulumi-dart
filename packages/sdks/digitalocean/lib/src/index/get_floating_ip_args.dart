// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_floating_ip_get_floating_ip_args_doc}
/// Arguments for getFloatingIp.
/// {@endtemplate}
/// {@macro pulumi_index_get_floating_ip_get_floating_ip_args_doc}
class GetFloatingIpArgs {
  /// The allocated IP address of the specific floating IP to retrieve.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [GetFloatingIpArgs].
  /// [ipAddress] The allocated IP address of the specific floating IP to retrieve.
  const GetFloatingIpArgs({
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
    };
  }

  factory GetFloatingIpArgs.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpArgs(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}

