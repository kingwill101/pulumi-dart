// ignore_for_file: unused_element, unnecessary_cast

import 'custom_rollout_properties_specification_response.dart';
import 'custom_rollout_properties_status_response.dart';

class CustomRolloutPropertiesResponse {
  /// The provisioned state of the resource.
  final String provisioningState;
  /// The specification.
  final CustomRolloutPropertiesSpecificationResponse specification;
  /// The status.
  final CustomRolloutPropertiesStatusResponse? status;

  /// Creates a new [CustomRolloutPropertiesResponse].
  /// [provisioningState] The provisioned state of the resource.
  /// [specification] The specification.
  /// [status] The status.
  CustomRolloutPropertiesResponse({
    required this.provisioningState,
    required this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'specification': specification.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory CustomRolloutPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomRolloutPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      specification: CustomRolloutPropertiesSpecificationResponse.fromMap((map['specification'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : CustomRolloutPropertiesStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

