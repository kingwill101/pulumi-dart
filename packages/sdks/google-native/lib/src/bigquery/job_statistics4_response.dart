// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatistics4Response {
  /// Number of files per destination URI or URI pattern specified in the extract configuration. These values will be in the same order as the URIs specified in the 'destinationUris' field.
  final pulumi.Input<List<String>> destinationUriFileCounts;
  /// Number of user bytes extracted into the result. This is the byte count as computed by BigQuery for billing purposes.
  final pulumi.Input<String> inputBytes;

  /// Creates a new [JobStatistics4Response].
  /// [destinationUriFileCounts] Number of files per destination URI or URI pattern specified in the extract configuration. These values will be in the same order as the URIs specified in the 'destinationUris' field.
  /// [inputBytes] Number of user bytes extracted into the result. This is the byte count as computed by BigQuery for billing purposes.
  const JobStatistics4Response({
    required this.destinationUriFileCounts,
    required this.inputBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationUriFileCounts': destinationUriFileCounts,
      'inputBytes': inputBytes,
    };
  }

  factory JobStatistics4Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics4Response(
      destinationUriFileCounts: pulumi.Input.fromValue((map['destinationUriFileCounts'] as List).cast<String>()),
      inputBytes: pulumi.Input.fromValue(map['inputBytes'] as String),
    );
  }
}

