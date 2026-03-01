// ignore_for_file: unused_element, unnecessary_cast

import 'inquiry_validation.dart';

/// Details of an inquired protectable item.
class WorkloadInquiryDetails {
  /// Inquiry validation such as permissions and other backup validations.
  final InquiryValidation? inquiryValidation;
  /// Contains the protectable item Count inside this Container.
  final double? itemCount;
  /// Type of the Workload such as SQL, Oracle etc.
  final String? type;

  /// Creates a new [WorkloadInquiryDetails].
  /// [inquiryValidation] Inquiry validation such as permissions and other backup validations.
  /// [itemCount] Contains the protectable item Count inside this Container.
  /// [type] Type of the Workload such as SQL, Oracle etc.
  WorkloadInquiryDetails({
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

  factory WorkloadInquiryDetails.fromMap(Map<String, dynamic> map) {
    return WorkloadInquiryDetails(
      inquiryValidation: map['inquiryValidation'] == null ? null : InquiryValidation.fromMap((map['inquiryValidation'] as Map).cast<String, dynamic>()),
      itemCount: map['itemCount'] == null ? null : map['itemCount'] as double,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

