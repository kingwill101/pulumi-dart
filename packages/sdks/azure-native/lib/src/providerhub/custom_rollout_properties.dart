// ignore_for_file: unused_element, unnecessary_cast

import 'custom_rollout_properties_specification.dart';
import 'custom_rollout_properties_status.dart';

class CustomRolloutProperties {
  /// The specification.
  final CustomRolloutPropertiesSpecification specification;
  /// The status.
  final CustomRolloutPropertiesStatus? status;

  /// Creates a new [CustomRolloutProperties].
  /// [specification] The specification.
  /// [status] The status.
  CustomRolloutProperties({
    required this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': specification.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory CustomRolloutProperties.fromMap(Map<String, dynamic> map) {
    return CustomRolloutProperties(
      specification: CustomRolloutPropertiesSpecification.fromMap((map['specification'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : CustomRolloutPropertiesStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

