// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_properties_specification_response.dart';
import 'default_rollout_properties_status_response.dart';

class DefaultRolloutPropertiesResponse {
  /// The provisioned state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The default rollout specification.
  final pulumi.Input<DefaultRolloutPropertiesSpecificationResponse>? specification;
  /// The default rollout status.
  final pulumi.Input<DefaultRolloutPropertiesStatusResponse>? status;

  /// Creates a new [DefaultRolloutPropertiesResponse].
  /// [provisioningState] The provisioned state of the resource.
  /// [specification] The default rollout specification.
  /// [status] The default rollout status.
  DefaultRolloutPropertiesResponse({
    required this.provisioningState,
    this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'specification': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutPropertiesSpecificationResponse, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutPropertiesStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory DefaultRolloutPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
      specification: map['specification'] == null ? null : (DefaultRolloutPropertiesSpecificationResponse.fromMap((map['specification'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (DefaultRolloutPropertiesStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

