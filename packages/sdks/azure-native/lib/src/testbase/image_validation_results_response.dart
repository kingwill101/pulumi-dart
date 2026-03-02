// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'verification_result_response.dart';

/// The image validation result.
class ImageValidationResultsResponse {
  /// The validation results of the image.
  final pulumi.Input<List<VerificationResultResponse>>? results;

  /// Creates a new [ImageValidationResultsResponse].
  /// [results] The validation results of the image.
  ImageValidationResultsResponse({
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?pulumi.Input.mapOptionalInputValue<List<VerificationResultResponse>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<VerificationResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageValidationResultsResponse.fromMap(Map<String, dynamic> map) {
    return ImageValidationResultsResponse(
      results: map['results'] == null ? null : (pulumi.Input.decodeList<VerificationResultResponse>(map['results']!, (value) => VerificationResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

