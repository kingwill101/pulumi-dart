// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EgressPolicy resources.
class EgressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;

  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? egressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String>? resource;

  /// Creates a new [EgressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [egressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  EgressPolicyState({
    this.accessPolicyId,
    this.egressPolicyName,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'egressPolicyName': ?egressPolicyName,
      'resource': ?resource,
    };
  }

  factory EgressPolicyState.fromMap(Map<String, dynamic> map) {
    return EgressPolicyState(
      accessPolicyId: (() {
        final guardedValue = map['accessPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      egressPolicyName: (() {
        final guardedValue = map['egressPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
