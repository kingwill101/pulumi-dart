// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_host_security_report_args_doc}
/// Arguments for getHostSecurityReport.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_host_security_report_args_doc}
class GetHostSecurityReportArgs {
  final pulumi.Input<String> hostSecurityReportId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetHostSecurityReportArgs].
  /// [hostSecurityReportId] Required.
  /// [organizationId] Required.
  GetHostSecurityReportArgs({
    required this.hostSecurityReportId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostSecurityReportId': hostSecurityReportId,
      'organizationId': organizationId,
    };
  }

  factory GetHostSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return GetHostSecurityReportArgs(
      hostSecurityReportId: pulumi.Input.fromValue(
        map['hostSecurityReportId'] as String,
      ),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
