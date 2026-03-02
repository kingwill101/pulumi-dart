// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom response configuration for a rule.
class CcpResponseConfigResponse {
  /// The compression algorithm. For Example: 'gzip', 'multi-gzip', 'deflate'.
  final pulumi.Input<String>? compressionAlgo;
  /// The value indicating whether the response isn't an array of events / logs.  By setting this flag to true it means the remote server will response with an object which each property has as a value an array of events / logs.
  final pulumi.Input<bool>? convertChildPropertiesToArray;
  /// The csv delimiter, in case the response format is CSV.
  final pulumi.Input<String>? csvDelimiter;
  /// The character used to escape characters in CSV.
  final pulumi.Input<String>? csvEscape;
  /// The json paths, '$' char is the json root.
  final pulumi.Input<List<String>> eventsJsonPaths;
  /// The response format. possible values are json,csv,xml
  final pulumi.Input<String>? format;
  /// The value indicating whether the response has CSV boundary in case the response in CSV format.
  final pulumi.Input<bool>? hasCsvBoundary;
  /// The value indicating whether the response has headers in case the response in CSV format.
  final pulumi.Input<bool>? hasCsvHeader;
  /// The value indicating whether the remote server support Gzip and we should expect Gzip response.
  final pulumi.Input<bool>? isGzipCompressed;
  /// The value where the status message/code should appear in the response.
  final pulumi.Input<String>? successStatusJsonPath;
  /// The status value.
  final pulumi.Input<String>? successStatusValue;

  /// Creates a new [CcpResponseConfigResponse].
  /// [compressionAlgo] The compression algorithm. For Example: 'gzip', 'multi-gzip', 'deflate'.
  /// [convertChildPropertiesToArray] The value indicating whether the response isn't an array of events / logs.  By setting this flag to true it means the remote server will response with an object which each property has as a value an array of events / logs.
  /// [csvDelimiter] The csv delimiter, in case the response format is CSV.
  /// [csvEscape] The character used to escape characters in CSV.
  /// [eventsJsonPaths] The json paths, '$' char is the json root.
  /// [format] The response format. possible values are json,csv,xml
  /// [hasCsvBoundary] The value indicating whether the response has CSV boundary in case the response in CSV format.
  /// [hasCsvHeader] The value indicating whether the response has headers in case the response in CSV format.
  /// [isGzipCompressed] The value indicating whether the remote server support Gzip and we should expect Gzip response.
  /// [successStatusJsonPath] The value where the status message/code should appear in the response.
  /// [successStatusValue] The status value.
  CcpResponseConfigResponse({
    this.compressionAlgo,
    this.convertChildPropertiesToArray,
    this.csvDelimiter,
    this.csvEscape,
    required this.eventsJsonPaths,
    this.format,
    this.hasCsvBoundary,
    this.hasCsvHeader,
    this.isGzipCompressed,
    this.successStatusJsonPath,
    this.successStatusValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionAlgo': ?compressionAlgo,
      'convertChildPropertiesToArray': ?convertChildPropertiesToArray,
      'csvDelimiter': ?csvDelimiter,
      'csvEscape': ?csvEscape,
      'eventsJsonPaths': eventsJsonPaths,
      'format': ?format,
      'hasCsvBoundary': ?hasCsvBoundary,
      'hasCsvHeader': ?hasCsvHeader,
      'isGzipCompressed': ?isGzipCompressed,
      'successStatusJsonPath': ?successStatusJsonPath,
      'successStatusValue': ?successStatusValue,
    };
  }

  factory CcpResponseConfigResponse.fromMap(Map<String, dynamic> map) {
    return CcpResponseConfigResponse(
      compressionAlgo: map['compressionAlgo'] == null ? null : (map['compressionAlgo'] as String).input(),
      convertChildPropertiesToArray: map['convertChildPropertiesToArray'] == null ? null : (map['convertChildPropertiesToArray'] as bool).input(),
      csvDelimiter: map['csvDelimiter'] == null ? null : (map['csvDelimiter'] as String).input(),
      csvEscape: map['csvEscape'] == null ? null : (map['csvEscape'] as String).input(),
      eventsJsonPaths: ((map['eventsJsonPaths'] as List).cast<String>()).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      hasCsvBoundary: map['hasCsvBoundary'] == null ? null : (map['hasCsvBoundary'] as bool).input(),
      hasCsvHeader: map['hasCsvHeader'] == null ? null : (map['hasCsvHeader'] as bool).input(),
      isGzipCompressed: map['isGzipCompressed'] == null ? null : (map['isGzipCompressed'] as bool).input(),
      successStatusJsonPath: map['successStatusJsonPath'] == null ? null : (map['successStatusJsonPath'] as String).input(),
      successStatusValue: map['successStatusValue'] == null ? null : (map['successStatusValue'] as String).input(),
    );
  }
}

