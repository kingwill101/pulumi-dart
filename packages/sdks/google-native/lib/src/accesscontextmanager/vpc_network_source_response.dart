// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_sub_network_response.dart';

/// The originating network source in Google Cloud.
class VpcNetworkSourceResponse {
  /// Sub-segment ranges of a VPC network.
  final pulumi.Input<VpcSubNetworkResponse> vpcSubnetwork;

  /// Creates a new [VpcNetworkSourceResponse].
  /// [vpcSubnetwork] Sub-segment ranges of a VPC network.
  VpcNetworkSourceResponse({required this.vpcSubnetwork});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcSubnetwork':
          pulumi.Input.mapInputValue<
            VpcSubNetworkResponse,
            Map<String, dynamic>
          >(vpcSubnetwork, (value) => value.toMap()),
    };
  }

  factory VpcNetworkSourceResponse.fromMap(Map<String, dynamic> map) {
    return VpcNetworkSourceResponse(
      vpcSubnetwork: pulumi.Input.fromValue(
        VpcSubNetworkResponse.fromMap(
          (map['vpcSubnetwork']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
