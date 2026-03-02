// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Validation for inquired protectable items under a given container.
class InquiryValidationResponse {
  /// Error Additional Detail in case the status is non-success.
  final pulumi.Input<String> additionalDetail;
  /// Error Detail in case the status is non-success.
  final pulumi.Input<ErrorDetailResponse>? errorDetail;
  /// Dictionary to store the count of ProtectableItems with key POType.
  final pulumi.Input<dynamic> protectableItemCount;
  /// Status for the Inquiry Validation.
  final pulumi.Input<String>? status;

  /// Creates a new [InquiryValidationResponse].
  /// [additionalDetail] Error Additional Detail in case the status is non-success.
  /// [errorDetail] Error Detail in case the status is non-success.
  /// [protectableItemCount] Dictionary to store the count of ProtectableItems with key POType.
  /// [status] Status for the Inquiry Validation.
  InquiryValidationResponse({
    required this.additionalDetail,
    this.errorDetail,
    required this.protectableItemCount,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetail': additionalDetail,
      'errorDetail': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetail, (value) => value.toMap()),
      'protectableItemCount': protectableItemCount,
      'status': ?status,
    };
  }

  factory InquiryValidationResponse.fromMap(Map<String, dynamic> map) {
    return InquiryValidationResponse(
      additionalDetail: (map['additionalDetail'] as String).input(),
      errorDetail: map['errorDetail'] == null ? null : (ErrorDetailResponse.fromMap((map['errorDetail'] as Map).cast<String, dynamic>())).input(),
      protectableItemCount: (map['protectableItemCount']).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

