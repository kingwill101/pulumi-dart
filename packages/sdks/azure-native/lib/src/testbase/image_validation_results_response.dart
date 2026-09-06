// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'verification_result_response.dart';

/// The image validation result.
class ImageValidationResultsResponse {
  /// The validation results of the image.
  final pulumi.Input<List<VerificationResultResponse>?>? results;

  /// Creates a new [ImageValidationResultsResponse].
  /// [results] The validation results of the image.
  const ImageValidationResultsResponse({
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?pulumi.Input.mapOptionalInputValue<List<VerificationResultResponse>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<VerificationResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageValidationResultsResponse.fromMap(Map<String, dynamic> map) {
    return ImageValidationResultsResponse(
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VerificationResultResponse>(guardedValue, (value) => VerificationResultResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
