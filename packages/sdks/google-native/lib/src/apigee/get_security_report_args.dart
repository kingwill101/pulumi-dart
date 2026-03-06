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
  const GetSecurityReportArgs({
    required this.environmentId,
    required this.organizationId,
    required this.securityReportId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'securityReportId': securityReportId,
    };
  }

  factory GetSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityReportArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      securityReportId: pulumi.Input.fromValue(map['securityReportId'] as String),
    );
  }
}

