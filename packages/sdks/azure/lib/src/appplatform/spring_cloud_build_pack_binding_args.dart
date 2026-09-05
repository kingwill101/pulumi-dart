// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_build_pack_binding_launch.dart';

/// {@template pulumi_appplatform_spring_cloud_build_pack_binding_spring_cloud_build_pack_binding_args_doc}
/// The set of arguments for SpringCloudBuildPackBinding.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_build_pack_binding_spring_cloud_build_pack_binding_args_doc}
class SpringCloudBuildPackBindingArgs {
  /// Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  final pulumi.Input<String?>? bindingType;
  /// A `launch` block as defined below.
  final pulumi.Input<SpringCloudBuildPackBindingLaunch?>? launch;
  /// The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  final pulumi.Input<String> springCloudBuilderId;

  /// Creates a new [SpringCloudBuildPackBindingArgs].
  /// [bindingType] Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  /// [launch] A `launch` block as defined below.
  /// [name] The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  /// [springCloudBuilderId] The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  const SpringCloudBuildPackBindingArgs({
    this.bindingType,
    this.launch,
    this.name,
    required this.springCloudBuilderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'launch': ?pulumi.Input.mapOptionalInputValue<SpringCloudBuildPackBindingLaunch, Map<String, dynamic>>(launch, (value) => value.toMap()),
      'name': ?name,
      'springCloudBuilderId': springCloudBuilderId,
    };
  }

  factory SpringCloudBuildPackBindingArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuildPackBindingArgs(
      bindingType: (() { final guardedValue = map['bindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launch: (() { final guardedValue = map['launch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudBuildPackBindingLaunch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudBuilderId: pulumi.Input.fromValue(map['springCloudBuilderId'] as String),
    );
  }
}
