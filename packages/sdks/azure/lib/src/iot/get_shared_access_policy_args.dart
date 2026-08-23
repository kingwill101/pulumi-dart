// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_shared_access_policy_get_shared_access_policy_args_doc}
/// Arguments for getSharedAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_iot_get_shared_access_policy_get_shared_access_policy_args_doc}
class GetSharedAccessPolicyArgs {
  /// The name of the IoTHub to which this Shared Access Policy belongs.
  final pulumi.Input<String> iothubName;
  /// Specifies the name of the IotHub Shared Access Policy resource.
  final pulumi.Input<String> name;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSharedAccessPolicyArgs].
  /// [iothubName] The name of the IoTHub to which this Shared Access Policy belongs.
  /// [name] Specifies the name of the IotHub Shared Access Policy resource.
  /// [resourceGroupName] The name of the resource group under which the IotHub Shared Access Policy resource has to be created.
  const GetSharedAccessPolicyArgs({
    required this.iothubName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iothubName': iothubName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSharedAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedAccessPolicyArgs(
      iothubName: pulumi.Input.fromValue(map['iothubName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
