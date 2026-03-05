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
    this.bindingType,
    this.launch,
    this.name,
    this.springCloudBuilderId,
  });

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
      bindingType: (() { final guardedValue = map['bindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launch: (() { final guardedValue = map['launch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudBuildPackBindingLaunch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudBuilderId: (() { final guardedValue = map['springCloudBuilderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

