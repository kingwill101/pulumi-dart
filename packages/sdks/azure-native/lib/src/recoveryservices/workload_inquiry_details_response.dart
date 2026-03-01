// ignore_for_file: unused_element, unnecessary_cast

import 'inquiry_validation_response.dart';

/// Details of an inquired protectable item.
class WorkloadInquiryDetailsResponse {
  /// Inquiry validation such as permissions and other backup validations.
  final InquiryValidationResponse? inquiryValidation;
  /// Contains the protectable item Count inside this Container.
  final double? itemCount;
  /// Type of the Workload such as SQL, Oracle etc.
  final String? type;

  /// Creates a new [WorkloadInquiryDetailsResponse].
  /// [inquiryValidation] Inquiry validation such as permissions and other backup validations.
  /// [itemCount] Contains the protectable item Count inside this Container.
  /// [type] Type of the Workload such as SQL, Oracle etc.
  WorkloadInquiryDetailsResponse({
    this.inquiryValidation,
    this.itemCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inquiryValidation': ?inquiryValidation == null ? null : inquiryValidation!.toMap(),
      'itemCount': ?itemCount,
      'type': ?type,
    };
  }

  factory WorkloadInquiryDetailsResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadInquiryDetailsResponse(
      inquiryValidation: map['inquiryValidation'] == null ? null : InquiryValidationResponse.fromMap((map['inquiryValidation'] as Map).cast<String, dynamic>()),
      itemCount: map['itemCount'] == null ? null : map['itemCount'] as double,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

