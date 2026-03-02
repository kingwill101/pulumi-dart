// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_properties_specification_response.dart';
import 'custom_rollout_properties_status_response.dart';

class CustomRolloutPropertiesResponse {
  /// The provisioned state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The specification.
  final pulumi.Input<CustomRolloutPropertiesSpecificationResponse> specification;
  /// The status.
  final pulumi.Input<CustomRolloutPropertiesStatusResponse>? status;

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
      'specification': pulumi.Input.mapInputValue<CustomRolloutPropertiesSpecificationResponse, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<CustomRolloutPropertiesStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory CustomRolloutPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomRolloutPropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
      specification: (CustomRolloutPropertiesSpecificationResponse.fromMap((map['specification'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (CustomRolloutPropertiesStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

