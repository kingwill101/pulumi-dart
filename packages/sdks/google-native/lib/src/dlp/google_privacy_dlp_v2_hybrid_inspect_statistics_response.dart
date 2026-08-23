// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Statistics related to processing hybrid inspect requests.
class GooglePrivacyDlpV2HybridInspectStatisticsResponse {
  /// The number of hybrid inspection requests aborted because the job ran out of quota or was ended before they could be processed.
  final pulumi.Input<String> abortedCount;
  /// The number of hybrid requests currently being processed. Only populated when called via method `getDlpJob`. A burst of traffic may cause hybrid inspect requests to be enqueued. Processing will take place as quickly as possible, but resource limitations may impact how long a request is enqueued for.
  final pulumi.Input<String> pendingCount;
  /// The number of hybrid inspection requests processed within this job.
  final pulumi.Input<String> processedCount;

  /// Creates a new [GooglePrivacyDlpV2HybridInspectStatisticsResponse].
  /// [abortedCount] The number of hybrid inspection requests aborted because the job ran out of quota or was ended before they could be processed.
  /// [pendingCount] The number of hybrid requests currently being processed. Only populated when called via method `getDlpJob`. A burst of traffic may cause hybrid inspect requests to be enqueued. Processing will take place as quickly as possible, but resource limitations may impact how long a request is enqueued for.
  /// [processedCount] The number of hybrid inspection requests processed within this job.
  const GooglePrivacyDlpV2HybridInspectStatisticsResponse({
    required this.abortedCount,
    required this.pendingCount,
    required this.processedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortedCount': abortedCount,
      'pendingCount': pendingCount,
      'processedCount': processedCount,
    };
  }

  factory GooglePrivacyDlpV2HybridInspectStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2HybridInspectStatisticsResponse(
      abortedCount: pulumi.Input.fromValue(map['abortedCount'] as String),
      pendingCount: pulumi.Input.fromValue(map['pendingCount'] as String),
      processedCount: pulumi.Input.fromValue(map['processedCount'] as String),
    );
  }
}
