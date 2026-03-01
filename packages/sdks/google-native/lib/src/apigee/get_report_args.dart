// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_report_args_doc}
/// Arguments for getReport.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_report_args_doc}
class GetReportArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> reportId;

  /// Creates a new [GetReportArgs].
  /// [organizationId] Required.
  /// [reportId] Required.
  GetReportArgs({
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> reportId,
  }) :
      organizationId = pulumi.Input.asInput<String>(organizationId),
      reportId = pulumi.Input.asInput<String>(reportId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'reportId': reportId,
    };
  }

  factory GetReportArgs.fromMap(Map<String, dynamic> map) {
    return GetReportArgs(
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      reportId: pulumi.Output.create<String>(map['reportId'] as String),
    );
  }
}

