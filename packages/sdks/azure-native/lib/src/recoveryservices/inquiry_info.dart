// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_inquiry_details.dart';

/// Details about inquired protectable items under a given container.
class InquiryInfo {
  /// Inquiry Details which will have workload specific details.
  /// For e.g. - For SQL and oracle this will contain different details.
  final pulumi.Input<List<WorkloadInquiryDetails>>? inquiryDetails;
  /// Inquiry Status for this container such as
  /// InProgress | Failed | Succeeded
  final pulumi.Input<String>? status;

  /// Creates a new [InquiryInfo].
  /// [inquiryDetails] Inquiry Details which will have workload specific details.
  /// [status] Inquiry Status for this container such as
  InquiryInfo({
    this.inquiryDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inquiryDetails': ?pulumi.Input.mapOptionalInputValue<List<WorkloadInquiryDetails>, List<Map<String, dynamic>>>(inquiryDetails, (value) => pulumi.Input.encodeList<WorkloadInquiryDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory InquiryInfo.fromMap(Map<String, dynamic> map) {
    return InquiryInfo(
      inquiryDetails: (() { final guardedValue = map['inquiryDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadInquiryDetails>(guardedValue, (value) => WorkloadInquiryDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

