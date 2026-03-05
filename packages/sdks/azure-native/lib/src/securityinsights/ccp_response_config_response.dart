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
      compressionAlgo: (() { final guardedValue = map['compressionAlgo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      convertChildPropertiesToArray: (() { final guardedValue = map['convertChildPropertiesToArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      csvDelimiter: (() { final guardedValue = map['csvDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvEscape: (() { final guardedValue = map['csvEscape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventsJsonPaths: pulumi.Input.fromValue((map['eventsJsonPaths'] as List).cast<String>()),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasCsvBoundary: (() { final guardedValue = map['hasCsvBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasCsvHeader: (() { final guardedValue = map['hasCsvHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isGzipCompressed: (() { final guardedValue = map['isGzipCompressed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      successStatusJsonPath: (() { final guardedValue = map['successStatusJsonPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successStatusValue: (() { final guardedValue = map['successStatusValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

