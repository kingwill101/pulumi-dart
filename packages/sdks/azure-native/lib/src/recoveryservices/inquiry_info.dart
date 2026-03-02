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
      inquiryDetails: map['inquiryDetails'] == null ? null : (pulumi.Input.decodeList<WorkloadInquiryDetails>(map['inquiryDetails']!, (value) => WorkloadInquiryDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

