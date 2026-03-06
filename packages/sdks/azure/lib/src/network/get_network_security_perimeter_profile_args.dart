// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_profile_get_network_security_perimeter_profile_args_doc}
/// Arguments for getNetworkSecurityPerimeterProfile.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_profile_get_network_security_perimeter_profile_args_doc}
class GetNetworkSecurityPerimeterProfileArgs {
  /// The name of this Network Security Perimeter Profile.
  final pulumi.Input<String> name;
  /// The ID of the Network Security Perimeter.
  final pulumi.Input<String> networkSecurityPerimeterId;

  /// Creates a new [GetNetworkSecurityPerimeterProfileArgs].
  /// [name] The name of this Network Security Perimeter Profile.
  /// [networkSecurityPerimeterId] The ID of the Network Security Perimeter.
  const GetNetworkSecurityPerimeterProfileArgs({
    required this.name,
    required this.networkSecurityPerimeterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkSecurityPerimeterId': networkSecurityPerimeterId,
    };
  }

  factory GetNetworkSecurityPerimeterProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterProfileArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityPerimeterId: pulumi.Input.fromValue(map['networkSecurityPerimeterId'] as String),
    );
  }
}

