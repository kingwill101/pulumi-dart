// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_runtime_info_approximate_usage.dart';
import 'batch_runtime_info_current_usage.dart';

class BatchRuntimeInfo {
  /// (Output)
  /// Approximate workload resource usage, calculated when the workload completes(see [Dataproc Serverless pricing](https://cloud.google.com/dataproc-serverless/pricing))
  /// Structure is documented below.
  final pulumi.Input<List<BatchRuntimeInfoApproximateUsage>>? approximateUsages;

  /// (Output)
  /// Snapshot of current workload resource usage(see [Dataproc Serverless pricing](https://cloud.google.com/dataproc-serverless/pricing))
  /// Structure is documented below.
  final pulumi.Input<List<BatchRuntimeInfoCurrentUsage>>? currentUsages;

  /// (Output)
  /// A URI pointing to the location of the diagnostics tarball.
  final pulumi.Input<String>? diagnosticOutputUri;

  /// (Output)
  /// Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
  final pulumi.Input<Map<String, String>>? endpoints;

  /// (Output)
  /// A URI pointing to the location of the stdout and stderr of the workload.
  final pulumi.Input<String>? outputUri;

  /// Creates a new [BatchRuntimeInfo].
  /// [approximateUsages] (Output)
  /// [currentUsages] (Output)
  /// [diagnosticOutputUri] (Output)
  /// [endpoints] (Output)
  /// [outputUri] (Output)
  BatchRuntimeInfo({
    this.approximateUsages,
    this.currentUsages,
    this.diagnosticOutputUri,
    this.endpoints,
    this.outputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateUsages':
          ?pulumi.Input.mapOptionalInputValue<
            List<BatchRuntimeInfoApproximateUsage>,
            List<Map<String, dynamic>>
          >(
            approximateUsages,
            (value) =>
                pulumi.Input.encodeList<
                  BatchRuntimeInfoApproximateUsage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'currentUsages':
          ?pulumi.Input.mapOptionalInputValue<
            List<BatchRuntimeInfoCurrentUsage>,
            List<Map<String, dynamic>>
          >(
            currentUsages,
            (value) =>
                pulumi.Input.encodeList<
                  BatchRuntimeInfoCurrentUsage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'diagnosticOutputUri': ?diagnosticOutputUri,
      'endpoints': ?endpoints,
      'outputUri': ?outputUri,
    };
  }

  factory BatchRuntimeInfo.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfo(
      approximateUsages: (() {
        final guardedValue = map['approximateUsages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BatchRuntimeInfoApproximateUsage>(
            guardedValue,
            (value) => BatchRuntimeInfoApproximateUsage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      currentUsages: (() {
        final guardedValue = map['currentUsages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BatchRuntimeInfoCurrentUsage>(
            guardedValue,
            (value) => BatchRuntimeInfoCurrentUsage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      diagnosticOutputUri: (() {
        final guardedValue = map['diagnosticOutputUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      outputUri: (() {
        final guardedValue = map['outputUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
