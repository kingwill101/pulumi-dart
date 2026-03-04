// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The availability zone rule.
class ResourceTypeRegistrationPropertiesAvailabilityZoneRule {
  final pulumi.Input<String>? availabilityZonePolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesAvailabilityZoneRule].
  /// [availabilityZonePolicy] Optional.
  ResourceTypeRegistrationPropertiesAvailabilityZoneRule({
    this.availabilityZonePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityZonePolicy': ?availabilityZonePolicy};
  }

  factory ResourceTypeRegistrationPropertiesAvailabilityZoneRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesAvailabilityZoneRule(
      availabilityZonePolicy: (() {
        final guardedValue = map['availabilityZonePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
