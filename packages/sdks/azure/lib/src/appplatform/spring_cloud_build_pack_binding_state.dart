// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_build_pack_binding_launch.dart';

/// Input properties used for looking up and filtering SpringCloudBuildPackBinding resources.
class SpringCloudBuildPackBindingState {
  /// Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  final pulumi.Input<String>? bindingType;
  /// A `launch` block as defined below.
  final pulumi.Input<SpringCloudBuildPackBindingLaunch>? launch;
  /// The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  final pulumi.Input<String>? springCloudBuilderId;

  /// Creates a new [SpringCloudBuildPackBindingState].
  /// [bindingType] Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  /// [launch] A `launch` block as defined below.
  /// [name] The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  /// [springCloudBuilderId] The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  SpringCloudBuildPackBindingState({
    pulumi.Output<String>? bindingType,
    pulumi.Output<SpringCloudBuildPackBindingLaunch>? launch,
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudBuilderId,
  }) :
      bindingType = pulumi.Input.asOptionalInput<String>(bindingType),
      launch = pulumi.Input.asOptionalInput<SpringCloudBuildPackBindingLaunch>(launch),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudBuilderId = pulumi.Input.asOptionalInput<String>(springCloudBuilderId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'launch': ?pulumi.Input.mapOptionalInputValue<SpringCloudBuildPackBindingLaunch, Map<String, dynamic>>(launch, (value) => value.toMap()),
      'name': ?name,
      'springCloudBuilderId': ?springCloudBuilderId,
    };
  }

  factory SpringCloudBuildPackBindingState.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuildPackBindingState(
      bindingType: map['bindingType'] == null ? null : pulumi.Output.create<String>(map['bindingType'] as String),
      launch: map['launch'] == null ? null : pulumi.Output.create<SpringCloudBuildPackBindingLaunch>(SpringCloudBuildPackBindingLaunch.fromMap((map['launch'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudBuilderId: map['springCloudBuilderId'] == null ? null : pulumi.Output.create<String>(map['springCloudBuilderId'] as String),
    );
  }
}

