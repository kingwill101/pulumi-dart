// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_state.dart';
import 'report_type.dart';

/// {@template pulumi_migrationcenter_v1_report_args_doc}
/// The set of arguments for Report.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_report_args_doc}
class ReportArgs {
  /// Free-text description.
  final pulumi.Input<String>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;
  /// Required. User specified id for the report. It will become the last component of the report name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The id must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  final pulumi.Input<String> reportId;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Report creation state.
  final pulumi.Input<ReportState>? state;
  /// Report type.
  final pulumi.Input<ReportType>? type;

  /// Creates a new [ReportArgs].
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Optional.
  /// [project] Optional.
  /// [reportConfigId] Required.
  /// [reportId] Required. User specified id for the report. It will become the last component of the report name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The id must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [state] Report creation state.
  /// [type] Report type.
  ReportArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reportConfigId,
    required pulumi.Output<String> reportId,
    pulumi.Output<String>? requestId,
    pulumi.Output<ReportState>? state,
    pulumi.Output<ReportType>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      reportConfigId = pulumi.Input.asInput<String>(reportConfigId),
      reportId = pulumi.Input.asInput<String>(reportId),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      state = pulumi.Input.asOptionalInput<ReportState>(state),
      type = pulumi.Input.asOptionalInput<ReportType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'project': ?project,
      'reportConfigId': reportConfigId,
      'reportId': reportId,
      'requestId': ?requestId,
      'state': ?pulumi.Input.mapOptionalInputValue<ReportState, String>(state, (value) => value.value),
      'type': ?pulumi.Input.mapOptionalInputValue<ReportType, String>(type, (value) => value.value),
    };
  }

  factory ReportArgs.fromMap(Map<String, dynamic> map) {
    return ReportArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reportConfigId: pulumi.Output.create<String>(map['reportConfigId'] as String),
      reportId: pulumi.Output.create<String>(map['reportId'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<ReportState>(ReportState.fromValue(map['state'] as String)),
      type: map['type'] == null ? null : pulumi.Output.create<ReportType>(ReportType.fromValue(map['type'] as String)),
    );
  }
}

