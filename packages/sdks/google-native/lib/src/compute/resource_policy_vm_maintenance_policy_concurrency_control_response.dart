// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A concurrency control configuration. Defines a group config that, when attached to an instance, recognizes that instance as part of a group of instances where only up the concurrency_limit of instances in that group can undergo simultaneous maintenance. For more information: go/concurrency-control-design-doc
class ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse {
  final pulumi.Input<int> concurrencyLimit;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse].
  /// [concurrencyLimit] Required.
  ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse({
    required this.concurrencyLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'concurrencyLimit': concurrencyLimit};
  }

  factory ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse(
      concurrencyLimit: pulumi.Input.fromValue(map['concurrencyLimit'] as int),
    );
  }
}
