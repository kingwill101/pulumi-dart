// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_properties_specification.dart';
import 'custom_rollout_properties_status.dart';

class CustomRolloutProperties {
  /// The specification.
  final pulumi.Input<CustomRolloutPropertiesSpecification> specification;
  /// The status.
  final pulumi.Input<CustomRolloutPropertiesStatus>? status;

  /// Creates a new [CustomRolloutProperties].
  /// [specification] The specification.
  /// [status] The status.
  CustomRolloutProperties({
    required this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': pulumi.Input.mapInputValue<CustomRolloutPropertiesSpecification, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<CustomRolloutPropertiesStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory CustomRolloutProperties.fromMap(Map<String, dynamic> map) {
    return CustomRolloutProperties(
      specification: (CustomRolloutPropertiesSpecification.fromMap((map['specification'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (CustomRolloutPropertiesStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

