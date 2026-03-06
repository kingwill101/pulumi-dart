// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The availability zone rule.
class ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse {
  final pulumi.Input<String>? availabilityZonePolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse].
  /// [availabilityZonePolicy] Optional.
  const ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse({
    this.availabilityZonePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonePolicy': ?availabilityZonePolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse(
      availabilityZonePolicy: (() { final guardedValue = map['availabilityZonePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

