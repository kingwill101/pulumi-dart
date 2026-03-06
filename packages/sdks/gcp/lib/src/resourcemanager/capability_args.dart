// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_capability_capability_args_doc}
/// The set of arguments for Capability.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_capability_capability_args_doc}
class CapabilityArgs {
  /// Capability name that should be updated on the folder.
  final pulumi.Input<String> capabilityName;
  /// Folder on which Capability needs to be updated in the format folders/folder_id.
  final pulumi.Input<String> parent;
  /// Capability Value.
  final pulumi.Input<bool> value;

  /// Creates a new [CapabilityArgs].
  /// [capabilityName] Capability name that should be updated on the folder.
  /// [parent] Folder on which Capability needs to be updated in the format folders/folder_id.
  /// [value] Capability Value.
  const CapabilityArgs({
    required this.capabilityName,
    required this.parent,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityName': capabilityName,
      'parent': parent,
      'value': value,
    };
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityName: pulumi.Input.fromValue(map['capabilityName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}

