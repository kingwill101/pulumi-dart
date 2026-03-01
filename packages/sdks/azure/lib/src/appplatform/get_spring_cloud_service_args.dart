// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_spring_cloud_service_get_spring_cloud_service_args_doc}
/// Arguments for getSpringCloudService.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_spring_cloud_service_get_spring_cloud_service_args_doc}
class GetSpringCloudServiceArgs {
  /// Specifies The name of the Spring Cloud Service resource.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where the Spring Cloud Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSpringCloudServiceArgs].
  /// [name] Specifies The name of the Spring Cloud Service resource.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Spring Cloud Service exists.
  GetSpringCloudServiceArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSpringCloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

