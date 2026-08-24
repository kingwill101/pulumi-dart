// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_device_subnet_zero_trust_device_subnet_args_doc}
/// The set of arguments for ZeroTrustDeviceSubnet.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_subnet_zero_trust_device_subnet_args_doc}
class ZeroTrustDeviceSubnetArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// An optional description of the subnet.
  final pulumi.Input<String?>? comment;
  /// If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  final pulumi.Input<bool?>? isDefaultNetwork;
  /// A user-friendly name for the subnet.
  final pulumi.Input<String> name;
  /// The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  final pulumi.Input<String> network;

  /// Creates a new [ZeroTrustDeviceSubnetArgs].
  /// [accountId] Cloudflare account ID
  /// [comment] An optional description of the subnet.
  /// [isDefaultNetwork] If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  /// [name] A user-friendly name for the subnet.
  /// [network] The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  const ZeroTrustDeviceSubnetArgs({
    required this.accountId,
    this.comment,
    this.isDefaultNetwork,
    required this.name,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comment': ?comment,
      'isDefaultNetwork': ?isDefaultNetwork,
      'name': name,
      'network': network,
    };
  }

  factory ZeroTrustDeviceSubnetArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceSubnetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
