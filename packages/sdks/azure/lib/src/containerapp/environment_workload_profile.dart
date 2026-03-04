// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentWorkloadProfile {
  /// The maximum number of instances of workload profile that can be deployed in the Container App Environment.
  final pulumi.Input<int>? maximumCount;

  /// The minimum number of instances of workload profile that can be deployed in the Container App Environment.
  final pulumi.Input<int>? minimumCount;

  /// The name of the workload profile.
  final pulumi.Input<String> name;

  /// Workload profile type for the workloads to run on. Possible values include `Consumption`, `Consumption-GPU-NC24-A100`, `Consumption-GPU-NC8as-T4`, `D4`, `D8`, `D16`, `D32`, `E4`, `E8`, `E16`, `E32`, `NC24-A100`, `NC48-A100` and `NC96-A100`.
  ///
  /// &gt; **Note:** A `Consumption` type must have a name of `Consumption` and an environment may only have one `Consumption` Workload Profile.
  ///
  /// &gt; **Note:** Defining a `Consumption` profile is optional, however, Environments created without an initial Workload Profile cannot have them added at a later time and must be recreated. Similarly, an environment created with Profiles must always have at least one defined Profile, removing all profiles will force a recreation of the resource.
  final pulumi.Input<String> workloadProfileType;

  /// Creates a new [EnvironmentWorkloadProfile].
  /// [maximumCount] The maximum number of instances of workload profile that can be deployed in the Container App Environment.
  /// [minimumCount] The minimum number of instances of workload profile that can be deployed in the Container App Environment.
  /// [name] The name of the workload profile.
  /// [workloadProfileType] Workload profile type for the workloads to run on. Possible values include `Consumption`, `Consumption-GPU-NC24-A100`, `Consumption-GPU-NC8as-T4`, `D4`, `D8`, `D16`, `D32`, `E4`, `E8`, `E16`, `E32`, `NC24-A100`, `NC48-A100` and `NC96-A100`.
  EnvironmentWorkloadProfile({
    this.maximumCount,
    this.minimumCount,
    required this.name,
    required this.workloadProfileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumCount': ?maximumCount,
      'minimumCount': ?minimumCount,
      'name': name,
      'workloadProfileType': workloadProfileType,
    };
  }

  factory EnvironmentWorkloadProfile.fromMap(Map<String, dynamic> map) {
    return EnvironmentWorkloadProfile(
      maximumCount: (() {
        final guardedValue = map['maximumCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumCount: (() {
        final guardedValue = map['minimumCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      workloadProfileType: pulumi.Input.fromValue(
        map['workloadProfileType'] as String,
      ),
    );
  }
}
