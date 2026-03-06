// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_accelerator_spring_cloud_accelerator_args_doc}
/// The set of arguments for SpringCloudAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_accelerator_spring_cloud_accelerator_args_doc}
class SpringCloudAcceleratorArgs {
  /// The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is `default`.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudAcceleratorArgs].
  /// [name] The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is `default`.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created.
  const SpringCloudAcceleratorArgs({
    this.name,
    required this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAcceleratorArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudServiceId: pulumi.Input.fromValue(map['springCloudServiceId'] as String),
    );
  }
}

