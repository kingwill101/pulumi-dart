// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_iot_hub_get_iot_hub_args_doc}
/// Arguments for getIotHub.
/// {@endtemplate}
/// {@macro pulumi_iot_get_iot_hub_get_iot_hub_args_doc}
class GetIotHubArgs {
  /// The name of this IoTHub.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the IoTHub exists.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the IoTHub.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetIotHubArgs].
  /// [name] The name of this IoTHub.
  /// [resourceGroupName] The name of the Resource Group where the IoTHub exists.
  /// [tags] A mapping of tags which should be assigned to the IoTHub.
  GetIotHubArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetIotHubArgs.fromMap(Map<String, dynamic> map) {
    return GetIotHubArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

