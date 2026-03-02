// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatistics3Response {
  /// The number of bad records encountered. Note that if the job has failed because of more bad records encountered than the maximum allowed in the load job configuration, then this number can be less than the total number of bad records present in the input data.
  final pulumi.Input<String> badRecords;
  /// Number of bytes of source data in a load job.
  final pulumi.Input<String> inputFileBytes;
  /// Number of source files in a load job.
  final pulumi.Input<String> inputFiles;
  /// Size of the loaded data in bytes. Note that while a load job is in the running state, this value may change.
  final pulumi.Input<String> outputBytes;
  /// Number of rows imported in a load job. Note that while an import job is in the running state, this value may change.
  final pulumi.Input<String> outputRows;

  /// Creates a new [JobStatistics3Response].
  /// [badRecords] The number of bad records encountered. Note that if the job has failed because of more bad records encountered than the maximum allowed in the load job configuration, then this number can be less than the total number of bad records present in the input data.
  /// [inputFileBytes] Number of bytes of source data in a load job.
  /// [inputFiles] Number of source files in a load job.
  /// [outputBytes] Size of the loaded data in bytes. Note that while a load job is in the running state, this value may change.
  /// [outputRows] Number of rows imported in a load job. Note that while an import job is in the running state, this value may change.
  JobStatistics3Response({
    required this.badRecords,
    required this.inputFileBytes,
    required this.inputFiles,
    required this.outputBytes,
    required this.outputRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'badRecords': badRecords,
      'inputFileBytes': inputFileBytes,
      'inputFiles': inputFiles,
      'outputBytes': outputBytes,
      'outputRows': outputRows,
    };
  }

  factory JobStatistics3Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics3Response(
      badRecords: (map['badRecords'] as String).input(),
      inputFileBytes: (map['inputFileBytes'] as String).input(),
      inputFiles: (map['inputFiles'] as String).input(),
      outputBytes: (map['outputBytes'] as String).input(),
      outputRows: (map['outputRows'] as String).input(),
    );
  }
}

