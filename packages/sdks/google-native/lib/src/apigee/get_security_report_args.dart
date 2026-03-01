// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_security_report_args_doc}
/// Arguments for getSecurityReport.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_security_report_args_doc}
class GetSecurityReportArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityReportId;

  /// Creates a new [GetSecurityReportArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [securityReportId] Required.
  GetSecurityReportArgs({
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> securityReportId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityReportId = pulumi.Input.asInput<String>(securityReportId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'securityReportId': securityReportId,
    };
  }

  factory GetSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityReportArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      securityReportId: pulumi.Output.create<String>(map['securityReportId'] as String),
    );
  }
}

