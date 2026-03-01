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
    required pulumi.Output<String> imageTemplateName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> triggerName,
  }) :
      imageTemplateName = pulumi.Input.asInput<String>(imageTemplateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asInput<String>(triggerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTemplateName': imageTemplateName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      imageTemplateName: pulumi.Output.create<String>(map['imageTemplateName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

