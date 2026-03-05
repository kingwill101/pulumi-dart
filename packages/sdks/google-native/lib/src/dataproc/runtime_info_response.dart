// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_metrics_response.dart';
import 'usage_snapshot_response.dart';

/// Runtime information about workload execution.
class RuntimeInfoResponse {
  /// Approximate workload resource usage, calculated when the workload completes (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).Note: This metric calculation may change in the future, for example, to capture cumulative workload resource consumption during workload execution (see the Dataproc Serverless release notes (https://cloud.google.com/dataproc-serverless/docs/release-notes) for announcements, changes, fixes and other Dataproc developments).
  final pulumi.Input<UsageMetricsResponse> approximateUsage;
  /// Snapshot of current workload resource usage.
  final pulumi.Input<UsageSnapshotResponse> currentUsage;
  /// A URI pointing to the location of the diagnostics tarball.
  final pulumi.Input<String> diagnosticOutputUri;
  /// Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
  final pulumi.Input<Map<String, String>> endpoints;
  /// A URI pointing to the location of the stdout and stderr of the workload.
  final pulumi.Input<String> outputUri;

  /// Creates a new [RuntimeInfoResponse].
  /// [approximateUsage] Approximate workload resource usage, calculated when the workload completes (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).Note: This metric calculation may change in the future, for example, to capture cumulative workload resource consumption during workload execution (see the Dataproc Serverless release notes (https://cloud.google.com/dataproc-serverless/docs/release-notes) for announcements, changes, fixes and other Dataproc developments).
  /// [currentUsage] Snapshot of current workload resource usage.
  /// [diagnosticOutputUri] A URI pointing to the location of the diagnostics tarball.
  /// [endpoints] Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
  /// [outputUri] A URI pointing to the location of the stdout and stderr of the workload.
  RuntimeInfoResponse({
    required this.approximateUsage,
    required this.currentUsage,
    required this.diagnosticOutputUri,
    required this.endpoints,
    required this.outputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateUsage': pulumi.Input.mapInputValue<UsageMetricsResponse, Map<String, dynamic>>(approximateUsage, (value) => value.toMap()),
      'currentUsage': pulumi.Input.mapInputValue<UsageSnapshotResponse, Map<String, dynamic>>(currentUsage, (value) => value.toMap()),
      'diagnosticOutputUri': diagnosticOutputUri,
      'endpoints': endpoints,
      'outputUri': outputUri,
    };
  }

  factory RuntimeInfoResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeInfoResponse(
      approximateUsage: pulumi.Input.fromValue(UsageMetricsResponse.fromMap((map['approximateUsage']! as Map).cast<String, dynamic>())),
      currentUsage: pulumi.Input.fromValue(UsageSnapshotResponse.fromMap((map['currentUsage']! as Map).cast<String, dynamic>())),
      diagnosticOutputUri: pulumi.Input.fromValue(map['diagnosticOutputUri'] as String),
      endpoints: pulumi.Input.fromValue((map['endpoints'] as Map).cast<String, String>()),
      outputUri: pulumi.Input.fromValue(map['outputUri'] as String),
    );
  }
}

