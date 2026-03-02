// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_dps_get_dps_args_doc}
/// Arguments for getDps.
/// {@endtemplate}
/// {@macro pulumi_iot_get_dps_get_dps_args_doc}
class GetDpsArgs {
  /// Specifies the name of the Iot Device Provisioning Service resource.
  final pulumi.Input<String> name;
  /// The name of the resource group under which the Iot Device Provisioning Service is located in.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDpsArgs].
  /// [name] Specifies the name of the Iot Device Provisioning Service resource.
  /// [resourceGroupName] The name of the resource group under which the Iot Device Provisioning Service is located in.
  /// [tags] Optional.
  GetDpsArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDpsArgs.fromMap(Map<String, dynamic> map) {
    return GetDpsArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

