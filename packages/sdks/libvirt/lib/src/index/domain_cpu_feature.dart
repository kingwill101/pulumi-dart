// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuFeature {
  /// Specifies the name of a CPU feature that is being configured or controlled.
  final pulumi.Input<String>? name;

  /// Sets the policy for how the specified CPU feature is utilized in the domain.
  final pulumi.Input<String>? policy;

  /// Creates a new [DomainCpuFeature].
  /// [name] Specifies the name of a CPU feature that is being configured or controlled.
  /// [policy] Sets the policy for how the specified CPU feature is utilized in the domain.
  DomainCpuFeature({this.name, this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'policy': ?policy};
  }

  factory DomainCpuFeature.fromMap(Map<String, dynamic> map) {
    return DomainCpuFeature(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
