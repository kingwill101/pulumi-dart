// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The availability zone rule.
class ResourceTypeRegistrationPropertiesAvailabilityZoneRule {
  final pulumi.Input<dynamic>? availabilityZonePolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesAvailabilityZoneRule].
  /// [availabilityZonePolicy] Optional.
  const ResourceTypeRegistrationPropertiesAvailabilityZoneRule({
    this.availabilityZonePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonePolicy': ?availabilityZonePolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesAvailabilityZoneRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesAvailabilityZoneRule(
      availabilityZonePolicy: (() { final guardedValue = map['availabilityZonePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
