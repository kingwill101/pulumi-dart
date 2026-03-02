// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_vpc_access_network_interface.dart';

class GetServiceTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final pulumi.Input<String> connector;
  /// Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  final pulumi.Input<String> egress;
  /// Direct VPC egress settings. Currently only single network interface is supported.
  final pulumi.Input<List<GetServiceTemplateVpcAccessNetworkInterface>> networkInterfaces;

  /// Creates a new [GetServiceTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  GetServiceTemplateVpcAccess({
    required this.connector,
    required this.egress,
    required this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': connector,
      'egress': egress,
      'networkInterfaces': pulumi.Input.mapInputValue<List<GetServiceTemplateVpcAccessNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<GetServiceTemplateVpcAccessNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVpcAccess(
      connector: (map['connector'] as String).input(),
      egress: (map['egress'] as String).input(),
      networkInterfaces: (pulumi.Input.decodeList<GetServiceTemplateVpcAccessNetworkInterface>(map['networkInterfaces'], (value) => GetServiceTemplateVpcAccessNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

