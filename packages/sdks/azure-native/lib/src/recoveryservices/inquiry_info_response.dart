// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'workload_inquiry_details_response.dart';

/// Details about inquired protectable items under a given container.
class InquiryInfoResponse {
  /// Error Details if the Status is non-success.
  final pulumi.Input<ErrorDetailResponse>? errorDetail;
  /// Inquiry Details which will have workload specific details.
  /// For e.g. - For SQL and oracle this will contain different details.
  final pulumi.Input<List<WorkloadInquiryDetailsResponse>>? inquiryDetails;
  /// Inquiry Status for this container such as
  /// InProgress | Failed | Succeeded
  final pulumi.Input<String>? status;

  /// Creates a new [InquiryInfoResponse].
  /// [errorDetail] Error Details if the Status is non-success.
  /// [inquiryDetails] Inquiry Details which will have workload specific details.
  /// [status] Inquiry Status for this container such as
  const InquiryInfoResponse({
    this.errorDetail,
    this.inquiryDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetail': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetail, (value) => value.toMap()),
      'inquiryDetails': ?pulumi.Input.mapOptionalInputValue<List<WorkloadInquiryDetailsResponse>, List<Map<String, dynamic>>>(inquiryDetails, (value) => pulumi.Input.encodeList<WorkloadInquiryDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory InquiryInfoResponse.fromMap(Map<String, dynamic> map) {
    return InquiryInfoResponse(
      errorDetail: (() { final guardedValue = map['errorDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inquiryDetails: (() { final guardedValue = map['inquiryDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadInquiryDetailsResponse>(guardedValue, (value) => WorkloadInquiryDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
