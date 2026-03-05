// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inquiry_validation.dart';

/// Details of an inquired protectable item.
class WorkloadInquiryDetails {
  /// Inquiry validation such as permissions and other backup validations.
  final pulumi.Input<InquiryValidation>? inquiryValidation;
  /// Contains the protectable item Count inside this Container.
  final pulumi.Input<double>? itemCount;
  /// Type of the Workload such as SQL, Oracle etc.
  final pulumi.Input<String>? type;

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
      'inquiryValidation': ?pulumi.Input.mapOptionalInputValue<InquiryValidation, Map<String, dynamic>>(inquiryValidation, (value) => value.toMap()),
      'itemCount': ?itemCount,
      'type': ?type,
    };
  }

  factory WorkloadInquiryDetails.fromMap(Map<String, dynamic> map) {
    return WorkloadInquiryDetails(
      inquiryValidation: (() { final guardedValue = map['inquiryValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InquiryValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      itemCount: (() { final guardedValue = map['itemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

