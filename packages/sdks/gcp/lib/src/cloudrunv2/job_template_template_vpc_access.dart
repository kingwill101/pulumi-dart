// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_vpc_access_network_interface.dart';

class JobTemplateTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final pulumi.Input<String>? connector;
  /// Traffic VPC egress settings.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final pulumi.Input<String>? egress;
  /// Direct VPC egress settings. Currently only single network interface is supported.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateVpcAccessNetworkInterface>>? networkInterfaces;

  /// Creates a new [JobTemplateTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings.
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  const JobTemplateTemplateVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?connector,
      'egress': ?egress,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateVpcAccessNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<JobTemplateTemplateVpcAccessNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTemplateTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVpcAccess(
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobTemplateTemplateVpcAccessNetworkInterface>(guardedValue, (value) => JobTemplateTemplateVpcAccessNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

