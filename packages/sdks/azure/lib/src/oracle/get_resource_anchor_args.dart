// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_resource_anchor_get_resource_anchor_args_doc}
/// Arguments for getResourceAnchor.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_resource_anchor_get_resource_anchor_args_doc}
class GetResourceAnchorArgs {
  /// The name of this Oracle Resource Anchor.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Oracle Resource Anchor exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetResourceAnchorArgs].
  /// [name] The name of this Oracle Resource Anchor.
  /// [resourceGroupName] The name of the Resource Group where the Oracle Resource Anchor exists.
  GetResourceAnchorArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResourceAnchorArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceAnchorArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

