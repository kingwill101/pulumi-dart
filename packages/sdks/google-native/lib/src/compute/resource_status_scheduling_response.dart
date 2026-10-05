// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceStatusSchedulingResponse {
  /// Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  final pulumi.Input<int> availabilityDomain;
  /// Time in future when the instance will be terminated in RFC3339 text format.
  final pulumi.Input<String> terminationTimestamp;

  /// Creates a new [ResourceStatusSchedulingResponse].
  /// [availabilityDomain] Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  /// [terminationTimestamp] Time in future when the instance will be terminated in RFC3339 text format.
  const ResourceStatusSchedulingResponse({
    required this.availabilityDomain,
    required this.terminationTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomain': availabilityDomain,
      'terminationTimestamp': terminationTimestamp,
    };
  }

  factory ResourceStatusSchedulingResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusSchedulingResponse(
      availabilityDomain: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availabilityDomain'])),
      terminationTimestamp: pulumi.Input.fromValue(map['terminationTimestamp'] as String),
    );
  }
}
