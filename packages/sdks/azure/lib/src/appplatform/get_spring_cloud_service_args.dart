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
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSpringCloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

