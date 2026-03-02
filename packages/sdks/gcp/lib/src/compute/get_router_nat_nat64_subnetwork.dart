// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterNatNat64Subnetwork {
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final pulumi.Input<String> name;

  /// Creates a new [GetRouterNatNat64Subnetwork].
  /// [name] Name of the NAT service. The name must be 1-63 characters long and
  GetRouterNatNat64Subnetwork({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRouterNatNat64Subnetwork.fromMap(Map<String, dynamic> map) {
    return GetRouterNatNat64Subnetwork(
      name: (map['name'] as String).input(),
    );
  }
}

