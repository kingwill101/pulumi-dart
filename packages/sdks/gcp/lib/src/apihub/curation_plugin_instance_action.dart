// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CurationPluginInstanceAction {
  /// (Output)
  /// The action ID that is using the curation.
  /// This should map to one of the action IDs specified
  /// in action configs in the plugin.
  final pulumi.Input<String>? actionId;
  /// (Output)
  /// Plugin instance that is using the curation.
  /// Format is
  /// `projects/{project}/locations/{locati on}/plugins/{plugin}/instances/{instance}`
  final pulumi.Input<String>? pluginInstance;

  /// Creates a new [CurationPluginInstanceAction].
  /// [actionId] (Output)
  /// [pluginInstance] (Output)
  CurationPluginInstanceAction({
    this.actionId,
    this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': ?actionId,
      'pluginInstance': ?pluginInstance,
    };
  }

  factory CurationPluginInstanceAction.fromMap(Map<String, dynamic> map) {
    return CurationPluginInstanceAction(
      actionId: map['actionId'] == null ? null : (map['actionId'] as String).input(),
      pluginInstance: map['pluginInstance'] == null ? null : (map['pluginInstance'] as String).input(),
    );
  }
}

