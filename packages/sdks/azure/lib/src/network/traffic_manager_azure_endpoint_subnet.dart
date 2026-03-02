// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficManagerAzureEndpointSubnet {
  /// The first IP Address in this subnet.
  final pulumi.Input<String> first;
  /// The last IP Address in this subnet.
  final pulumi.Input<String>? last;
  /// The block size (number of leading bits in the subnet mask).
  final pulumi.Input<int>? scope;

  /// Creates a new [TrafficManagerAzureEndpointSubnet].
  /// [first] The first IP Address in this subnet.
  /// [last] The last IP Address in this subnet.
  /// [scope] The block size (number of leading bits in the subnet mask).
  TrafficManagerAzureEndpointSubnet({
    required this.first,
    this.last,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': first,
      'last': ?last,
      'scope': ?scope,
    };
  }

  factory TrafficManagerAzureEndpointSubnet.fromMap(Map<String, dynamic> map) {
    return TrafficManagerAzureEndpointSubnet(
      first: (map['first'] as String).input(),
      last: map['last'] == null ? null : (map['last']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as int).input(),
    );
  }
}

