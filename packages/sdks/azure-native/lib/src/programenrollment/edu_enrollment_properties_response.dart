// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_group_response.dart';
import 'error_detail_response.dart';

/// Details of the Program EduEnrollment.
class EduEnrollmentPropertiesResponse {
  /// The domain groups associated with this enrollment.
  final pulumi.Input<List<DomainGroupResponse>> domains;
  /// Failure detail when provisioningState is Failed. Omitted otherwise.
  final pulumi.Input<ErrorDetailResponse> failureReason;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [EduEnrollmentPropertiesResponse].
  /// [domains] The domain groups associated with this enrollment.
  /// [failureReason] Failure detail when provisioningState is Failed. Omitted otherwise.
  /// [provisioningState] The status of the last operation.
  const EduEnrollmentPropertiesResponse({
    required this.domains,
    required this.failureReason,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.mapInputValue<List<DomainGroupResponse>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<DomainGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failureReason': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(failureReason, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory EduEnrollmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EduEnrollmentPropertiesResponse(
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<DomainGroupResponse>(map['domains']!, (value) => DomainGroupResponse.fromMap((value as Map).cast<String, dynamic>()))),
      failureReason: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['failureReason']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
