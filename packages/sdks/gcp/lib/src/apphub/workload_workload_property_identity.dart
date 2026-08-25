// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadWorkloadPropertyIdentity {
  /// (Output)
  /// The principal of the identity.
  final pulumi.Input<String?>? principal;

  /// Creates a new [WorkloadWorkloadPropertyIdentity].
  /// [principal] (Output)
  const WorkloadWorkloadPropertyIdentity({
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?principal,
    };
  }

  factory WorkloadWorkloadPropertyIdentity.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyIdentity(
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
