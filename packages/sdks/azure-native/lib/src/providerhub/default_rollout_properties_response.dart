// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_properties_specification_response.dart';
import 'default_rollout_properties_status_response.dart';

class DefaultRolloutPropertiesResponse {
  /// The provisioned state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The default rollout specification.
  final pulumi.Input<DefaultRolloutPropertiesSpecificationResponse?>? specification;
  /// The default rollout status.
  final pulumi.Input<DefaultRolloutPropertiesStatusResponse?>? status;

  /// Creates a new [DefaultRolloutPropertiesResponse].
  /// [provisioningState] The provisioned state of the resource.
  /// [specification] The default rollout specification.
  /// [status] The default rollout status.
  const DefaultRolloutPropertiesResponse({
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
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutPropertiesSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutPropertiesStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
