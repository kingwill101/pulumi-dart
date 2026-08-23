// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level_basic_condition_vpc_network_source_vpc_subnetwork.dart';

class AccessLevelsAccessLevelBasicConditionVpcNetworkSource {
  /// Sub networks within a VPC network.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork>? vpcSubnetwork;

  /// Creates a new [AccessLevelsAccessLevelBasicConditionVpcNetworkSource].
  /// [vpcSubnetwork] Sub networks within a VPC network.
  const AccessLevelsAccessLevelBasicConditionVpcNetworkSource({
    this.vpcSubnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcSubnetwork': ?pulumi.Input.mapOptionalInputValue<AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork, Map<String, dynamic>>(vpcSubnetwork, (value) => value.toMap()),
    };
  }

  factory AccessLevelsAccessLevelBasicConditionVpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelBasicConditionVpcNetworkSource(
      vpcSubnetwork: (() { final guardedValue = map['vpcSubnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
