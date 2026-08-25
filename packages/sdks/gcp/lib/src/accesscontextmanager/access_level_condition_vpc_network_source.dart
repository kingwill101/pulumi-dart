// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_condition_vpc_network_source_vpc_subnetwork.dart';

class AccessLevelConditionVpcNetworkSource {
  /// Sub networks within a VPC network.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelConditionVpcNetworkSourceVpcSubnetwork?>? vpcSubnetwork;

  /// Creates a new [AccessLevelConditionVpcNetworkSource].
  /// [vpcSubnetwork] Sub networks within a VPC network.
  const AccessLevelConditionVpcNetworkSource({
    this.vpcSubnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcSubnetwork': ?pulumi.Input.mapOptionalInputValue<AccessLevelConditionVpcNetworkSourceVpcSubnetwork, Map<String, dynamic>>(vpcSubnetwork, (value) => value.toMap()),
    };
  }

  factory AccessLevelConditionVpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return AccessLevelConditionVpcNetworkSource(
      vpcSubnetwork: (() { final guardedValue = map['vpcSubnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelConditionVpcNetworkSourceVpcSubnetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
