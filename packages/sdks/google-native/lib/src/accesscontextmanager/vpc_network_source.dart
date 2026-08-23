// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_sub_network.dart';

/// The originating network source in Google Cloud.
class VpcNetworkSource {
  /// Sub-segment ranges of a VPC network.
  final pulumi.Input<VpcSubNetwork>? vpcSubnetwork;

  /// Creates a new [VpcNetworkSource].
  /// [vpcSubnetwork] Sub-segment ranges of a VPC network.
  const VpcNetworkSource({
    this.vpcSubnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcSubnetwork': ?pulumi.Input.mapOptionalInputValue<VpcSubNetwork, Map<String, dynamic>>(vpcSubnetwork, (value) => value.toMap()),
    };
  }

  factory VpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return VpcNetworkSource(
      vpcSubnetwork: (() { final guardedValue = map['vpcSubnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcSubNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
