// ignore_for_file: unused_element, unnecessary_cast

import 'default_rollout_properties_specification.dart';
import 'default_rollout_properties_status.dart';

class DefaultRolloutProperties {
  /// The default rollout specification.
  final DefaultRolloutPropertiesSpecification? specification;
  /// The default rollout status.
  final DefaultRolloutPropertiesStatus? status;

  /// Creates a new [DefaultRolloutProperties].
  /// [specification] The default rollout specification.
  /// [status] The default rollout status.
  DefaultRolloutProperties({
    this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?specification == null ? null : specification!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory DefaultRolloutProperties.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutProperties(
      specification: map['specification'] == null ? null : DefaultRolloutPropertiesSpecification.fromMap((map['specification'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : DefaultRolloutPropertiesStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

