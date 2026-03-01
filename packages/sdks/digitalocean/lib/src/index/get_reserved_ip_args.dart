// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_reserved_ip_get_reserved_ip_args_doc}
/// Arguments for getReservedIp.
/// {@endtemplate}
/// {@macro pulumi_index_get_reserved_ip_get_reserved_ip_args_doc}
class GetReservedIpArgs {
  /// The allocated IP address of the specific reserved IP to retrieve.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [GetReservedIpArgs].
  /// [ipAddress] The allocated IP address of the specific reserved IP to retrieve.
  GetReservedIpArgs({
    required pulumi.Output<String> ipAddress,
  }) :
      ipAddress = pulumi.Input.asInput<String>(ipAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
    };
  }

  factory GetReservedIpArgs.fromMap(Map<String, dynamic> map) {
    return GetReservedIpArgs(
      ipAddress: pulumi.Output.create<String>(map['ipAddress'] as String),
    );
  }
}

