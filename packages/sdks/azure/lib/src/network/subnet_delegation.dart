// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_delegation_service_delegation.dart';

class SubnetDelegation {
  /// A name for this delegation.
  final pulumi.Input<String> name;

  /// A `service_delegation` block as defined below.
  final pulumi.Input<SubnetDelegationServiceDelegation> serviceDelegation;

  /// Creates a new [SubnetDelegation].
  /// [name] A name for this delegation.
  /// [serviceDelegation] A `service_delegation` block as defined below.
  SubnetDelegation({required this.name, required this.serviceDelegation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'serviceDelegation':
          pulumi.Input.mapInputValue<
            SubnetDelegationServiceDelegation,
            Map<String, dynamic>
          >(serviceDelegation, (value) => value.toMap()),
    };
  }

  factory SubnetDelegation.fromMap(Map<String, dynamic> map) {
    return SubnetDelegation(
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceDelegation: pulumi.Input.fromValue(
        SubnetDelegationServiceDelegation.fromMap(
          (map['serviceDelegation']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
