// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_job_response.dart';

/// Result data returned by listClusterStreamingJobs.
class ListClusterStreamingJobsResult {
  /// The URL to fetch the next set of streaming jobs.
  final String? nextLink;
  /// A list of streaming jobs.
  final List<ClusterJobResponse>? value;

  /// Creates a new [ListClusterStreamingJobsResult].
  /// [nextLink] The URL to fetch the next set of streaming jobs.
  /// [value] A list of streaming jobs.
  const ListClusterStreamingJobsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ClusterJobResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListClusterStreamingJobsResult.fromMap(Map<String, dynamic> map) {
    return ListClusterStreamingJobsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterJobResponse>(guardedValue, (value) => ClusterJobResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
