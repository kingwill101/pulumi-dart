// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A concurrency control configuration. Defines a group config that, when attached to an instance, recognizes that instance as part of a group of instances where only up the concurrency_limit of instances in that group can undergo simultaneous maintenance. For more information: go/concurrency-control-design-doc
class ResourcePolicyVmMaintenancePolicyConcurrencyControl {
  final pulumi.Input<int>? concurrencyLimit;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyConcurrencyControl].
  /// [concurrencyLimit] Optional.
  const ResourcePolicyVmMaintenancePolicyConcurrencyControl({
    this.concurrencyLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyLimit': ?concurrencyLimit,
    };
  }

  factory ResourcePolicyVmMaintenancePolicyConcurrencyControl.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyConcurrencyControl(
      concurrencyLimit: (() { final guardedValue = map['concurrencyLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
