// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_properties_specification.dart';
import 'default_rollout_properties_status.dart';

class DefaultRolloutProperties {
  /// The default rollout specification.
  final pulumi.Input<DefaultRolloutPropertiesSpecification>? specification;
  /// The default rollout status.
  final pulumi.Input<DefaultRolloutPropertiesStatus>? status;

  /// Creates a new [DefaultRolloutProperties].
  /// [specification] The default rollout specification.
  /// [status] The default rollout status.
  DefaultRolloutProperties({
    this.specification,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutPropertiesSpecification, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutPropertiesStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory DefaultRolloutProperties.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutProperties(
      specification: map['specification'] == null ? null : (DefaultRolloutPropertiesSpecification.fromMap((map['specification'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (DefaultRolloutPropertiesStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

