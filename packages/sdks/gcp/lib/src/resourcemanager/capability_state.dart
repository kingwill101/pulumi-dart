// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Capability resources.
class CapabilityState {
  /// Capability name that should be updated on the folder.
  final pulumi.Input<String>? capabilityName;
  /// Folder on which Capability needs to be updated in the format folders/folder_id.
  final pulumi.Input<String>? parent;
  /// Capability Value.
  final pulumi.Input<bool>? value;

  /// Creates a new [CapabilityState].
  /// [capabilityName] Capability name that should be updated on the folder.
  /// [parent] Folder on which Capability needs to be updated in the format folders/folder_id.
  /// [value] Capability Value.
  CapabilityState({
    this.capabilityName,
    this.parent,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityName': ?capabilityName,
      'parent': ?parent,
      'value': ?value,
    };
  }

  factory CapabilityState.fromMap(Map<String, dynamic> map) {
    return CapabilityState(
      capabilityName: map['capabilityName'] == null ? null : (map['capabilityName']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as bool).input(),
    );
  }
}

