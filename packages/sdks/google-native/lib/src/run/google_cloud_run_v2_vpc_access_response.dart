// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_network_interface_response.dart';

/// VPC Access settings. For more information on sending traffic to a VPC network, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
class GoogleCloudRunV2VpcAccessResponse {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors.
  final pulumi.Input<String> connector;
  /// Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
  final pulumi.Input<String> egress;
  /// Direct VPC egress settings. Currently only single network interface is supported.
  final pulumi.Input<List<GoogleCloudRunV2NetworkInterfaceResponse>> networkInterfaces;

  /// Creates a new [GoogleCloudRunV2VpcAccessResponse].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors.
  /// [egress] Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  const GoogleCloudRunV2VpcAccessResponse({
    required this.connector,
    required this.egress,
    required this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': connector,
      'egress': egress,
      'networkInterfaces': pulumi.Input.mapInputValue<List<GoogleCloudRunV2NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<GoogleCloudRunV2NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudRunV2VpcAccessResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VpcAccessResponse(
      connector: pulumi.Input.fromValue(map['connector'] as String),
      egress: pulumi.Input.fromValue(map['egress'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => GoogleCloudRunV2NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

