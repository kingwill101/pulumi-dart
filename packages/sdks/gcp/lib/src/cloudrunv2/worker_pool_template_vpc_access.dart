// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_vpc_access_network_interface.dart';

class WorkerPoolTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final String? connector;
  /// Traffic VPC egress settings.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final String? egress;
  /// Direct VPC egress settings. Currently only single network interface is supported.
  /// Structure is documented below.
  final List<WorkerPoolTemplateVpcAccessNetworkInterface>? networkInterfaces;

  /// Creates a new [WorkerPoolTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings.
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  WorkerPoolTemplateVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?connector,
      'egress': ?egress,
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<WorkerPoolTemplateVpcAccessNetworkInterface, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory WorkerPoolTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVpcAccess(
      connector: map['connector'] == null ? null : map['connector'] as String,
      egress: map['egress'] == null ? null : map['egress'] as String,
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<WorkerPoolTemplateVpcAccessNetworkInterface>(map['networkInterfaces'], (value) => WorkerPoolTemplateVpcAccessNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

