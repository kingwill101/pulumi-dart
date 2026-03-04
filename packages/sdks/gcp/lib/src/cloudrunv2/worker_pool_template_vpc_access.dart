// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_vpc_access_network_interface.dart';

class WorkerPoolTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final pulumi.Input<String>? connector;

  /// Traffic VPC egress settings.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final pulumi.Input<String>? egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateVpcAccessNetworkInterface>>?
  networkInterfaces;

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
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkerPoolTemplateVpcAccessNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  WorkerPoolTemplateVpcAccessNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WorkerPoolTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVpcAccess(
      connector: (() {
        final guardedValue = map['connector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      egress: (() {
        final guardedValue = map['egress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaces: (() {
        final guardedValue = map['networkInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkerPoolTemplateVpcAccessNetworkInterface>(
            guardedValue,
            (value) => WorkerPoolTemplateVpcAccessNetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
