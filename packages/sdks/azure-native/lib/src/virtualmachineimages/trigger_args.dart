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
    required this.imageTemplateName,
    required this.kind,
    required this.resourceGroupName,
    this.triggerName,
  });

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
      imageTemplateName: (map['imageTemplateName'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      triggerName: map['triggerName'] == null ? null : (map['triggerName'] as String).input(),
    );
  }
}

