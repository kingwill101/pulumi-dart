// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_virtualmachineimages_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_virtualmachineimages_trigger_args_doc}
class TriggerArgs {
  /// The name of the image Template
  final pulumi.Input<String> imageTemplateName;
  /// The kind of trigger.
  final pulumi.Input<String> kind;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the trigger
  final pulumi.Input<String>? triggerName;

  /// Creates a new [TriggerArgs].
  /// [imageTemplateName] The name of the image Template
  /// [kind] The kind of trigger.
  /// [resourceGroupName] The name of the resource group.
  /// [triggerName] The name of the trigger
  TriggerArgs({
    required pulumi.Output<String> imageTemplateName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? triggerName,
  }) :
      imageTemplateName = pulumi.Input.asInput<String>(imageTemplateName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asOptionalInput<String>(triggerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTemplateName': imageTemplateName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'triggerName': ?triggerName,
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      imageTemplateName: pulumi.Output.create<String>(map['imageTemplateName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: map['triggerName'] == null ? null : pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

