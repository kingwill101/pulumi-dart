// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'workload_inquiry_details_response.dart';

/// Details about inquired protectable items under a given container.
class InquiryInfoResponse {
  /// Error Details if the Status is non-success.
  final ErrorDetailResponse? errorDetail;
  /// Inquiry Details which will have workload specific details.
  /// For e.g. - For SQL and oracle this will contain different details.
  final List<WorkloadInquiryDetailsResponse>? inquiryDetails;
  /// Inquiry Status for this container such as
  /// InProgress | Failed | Succeeded
  final String? status;

  /// Creates a new [InquiryInfoResponse].
  /// [errorDetail] Error Details if the Status is non-success.
  /// [inquiryDetails] Inquiry Details which will have workload specific details.
  /// [status] Inquiry Status for this container such as
  InquiryInfoResponse({
    this.errorDetail,
    this.inquiryDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetail': ?errorDetail == null ? null : errorDetail!.toMap(),
      'inquiryDetails': ?inquiryDetails == null ? null : pulumi.Input.encodeList<WorkloadInquiryDetailsResponse, Map<String, dynamic>>(inquiryDetails!, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory InquiryInfoResponse.fromMap(Map<String, dynamic> map) {
    return InquiryInfoResponse(
      errorDetail: map['errorDetail'] == null ? null : ErrorDetailResponse.fromMap((map['errorDetail'] as Map).cast<String, dynamic>()),
      inquiryDetails: map['inquiryDetails'] == null ? null : pulumi.Input.decodeList<WorkloadInquiryDetailsResponse>(map['inquiryDetails'], (value) => WorkloadInquiryDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

