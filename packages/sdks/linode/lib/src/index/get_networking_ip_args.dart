// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_networking_ip_get_networking_ip_args_doc}
/// Arguments for getNetworkingIp.
/// {@endtemplate}
/// {@macro pulumi_index_get_networking_ip_get_networking_ip_args_doc}
class GetNetworkingIpArgs {
  /// The IP Address to access.  The address must be associated with the account and a resource that the user has access to view.
  final pulumi.Input<String> address;

  /// Creates a new [GetNetworkingIpArgs].
  /// [address] The IP Address to access.  The address must be associated with the account and a resource that the user has access to view.
  const GetNetworkingIpArgs({
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
    };
  }

  factory GetNetworkingIpArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkingIpArgs(
      address: pulumi.Input.fromValue(map['address'] as String),
    );
  }
}

