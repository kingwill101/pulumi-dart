// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_basic_condition_vpc_network_source_vpc_subnetwork.dart';

class AccessLevelBasicConditionVpcNetworkSource {
  /// Sub networks within a VPC network.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork>? vpcSubnetwork;

  /// Creates a new [AccessLevelBasicConditionVpcNetworkSource].
  /// [vpcSubnetwork] Sub networks within a VPC network.
  const AccessLevelBasicConditionVpcNetworkSource({
    this.vpcSubnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcSubnetwork': ?pulumi.Input.mapOptionalInputValue<AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork, Map<String, dynamic>>(vpcSubnetwork, (value) => value.toMap()),
    };
  }

  factory AccessLevelBasicConditionVpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return AccessLevelBasicConditionVpcNetworkSource(
      vpcSubnetwork: (() { final guardedValue = map['vpcSubnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

