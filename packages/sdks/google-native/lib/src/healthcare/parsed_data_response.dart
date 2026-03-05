// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'segment_response.dart';

/// The content of a HL7v2 message in a structured format.
class ParsedDataResponse {
  final pulumi.Input<List<SegmentResponse>> segments;

  /// Creates a new [ParsedDataResponse].
  /// [segments] Required.
  ParsedDataResponse({
    required this.segments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segments': pulumi.Input.mapInputValue<List<SegmentResponse>, List<Map<String, dynamic>>>(segments, (value) => pulumi.Input.encodeList<SegmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ParsedDataResponse.fromMap(Map<String, dynamic> map) {
    return ParsedDataResponse(
      segments: pulumi.Input.fromValue(pulumi.Input.decodeList<SegmentResponse>(map['segments']!, (value) => SegmentResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

