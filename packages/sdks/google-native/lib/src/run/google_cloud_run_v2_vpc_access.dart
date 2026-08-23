// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_network_interface.dart';
import 'google_cloud_run_v2_vpc_access_egress.dart';

/// VPC Access settings. For more information on sending traffic to a VPC network, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
class GoogleCloudRunV2VpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors.
  final pulumi.Input<String>? connector;
  /// Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
  final pulumi.Input<GoogleCloudRunV2VpcAccessEgress>? egress;
  /// Direct VPC egress settings. Currently only single network interface is supported.
  final pulumi.Input<List<GoogleCloudRunV2NetworkInterface>>? networkInterfaces;

  /// Creates a new [GoogleCloudRunV2VpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors.
  /// [egress] Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  const GoogleCloudRunV2VpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?connector,
      'egress': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2VpcAccessEgress, String>(egress, (value) => value.wireValue),
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<GoogleCloudRunV2NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudRunV2VpcAccess.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VpcAccess(
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2VpcAccessEgress.fromValue(guardedValue as String)); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2NetworkInterface>(guardedValue, (value) => GoogleCloudRunV2NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
