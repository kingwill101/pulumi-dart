// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_vpc_access_network_interface.dart';

class GetJobTemplateTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final pulumi.Input<String> connector;
  /// Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  final pulumi.Input<String> egress;
  /// Direct VPC egress settings. Currently only single network interface is supported.
  final pulumi.Input<List<GetJobTemplateTemplateVpcAccessNetworkInterface>> networkInterfaces;

  /// Creates a new [GetJobTemplateTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  const GetJobTemplateTemplateVpcAccess({
    required this.connector,
    required this.egress,
    required this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': connector,
      'egress': egress,
      'networkInterfaces': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateVpcAccessNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateVpcAccessNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobTemplateTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVpcAccess(
      connector: pulumi.Input.fromValue(map['connector'] as String),
      egress: pulumi.Input.fromValue(map['egress'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobTemplateTemplateVpcAccessNetworkInterface>(map['networkInterfaces']!, (value) => GetJobTemplateTemplateVpcAccessNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

