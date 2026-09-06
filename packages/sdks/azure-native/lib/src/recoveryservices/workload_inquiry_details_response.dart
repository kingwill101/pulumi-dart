// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inquiry_validation_response.dart';

/// Details of an inquired protectable item.
class WorkloadInquiryDetailsResponse {
  /// Inquiry validation such as permissions and other backup validations.
  final pulumi.Input<InquiryValidationResponse?>? inquiryValidation;
  /// Contains the protectable item Count inside this Container.
  final pulumi.Input<double?>? itemCount;
  /// Type of the Workload such as SQL, Oracle etc.
  final pulumi.Input<String?>? type;

  /// Creates a new [WorkloadInquiryDetailsResponse].
  /// [inquiryValidation] Inquiry validation such as permissions and other backup validations.
  /// [itemCount] Contains the protectable item Count inside this Container.
  /// [type] Type of the Workload such as SQL, Oracle etc.
  const WorkloadInquiryDetailsResponse({
    this.inquiryValidation,
    this.itemCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inquiryValidation': ?pulumi.Input.mapOptionalInputValue<InquiryValidationResponse, Map<String, dynamic>>(inquiryValidation, (value) => value.toMap()),
      'itemCount': ?itemCount,
      'type': ?type,
    };
  }

  factory WorkloadInquiryDetailsResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadInquiryDetailsResponse(
      inquiryValidation: (() { final guardedValue = map['inquiryValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InquiryValidationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      itemCount: (() { final guardedValue = map['itemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
