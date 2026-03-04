// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_virtualmachineimages_get_trigger_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_virtualmachineimages_get_trigger_args_doc}
class GetTriggerArgs {
  /// The name of the image Template
  final pulumi.Input<String> imageTemplateName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the trigger
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetTriggerArgs].
  /// [imageTemplateName] The name of the image Template
  /// [resourceGroupName] The name of the resource group.
  /// [triggerName] The name of the trigger
  GetTriggerArgs({
    required this.imageTemplateName,
    required this.resourceGroupName,
    required this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTemplateName': imageTemplateName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      imageTemplateName: pulumi.Input.fromValue(
        map['imageTemplateName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
    );
  }
}
