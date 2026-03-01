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
    pulumi.Output<String>? capabilityName,
    pulumi.Output<String>? parent,
    pulumi.Output<bool>? value,
  }) :
      capabilityName = pulumi.Input.asOptionalInput<String>(capabilityName),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      value = pulumi.Input.asOptionalInput<bool>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityName': ?capabilityName,
      'parent': ?parent,
      'value': ?value,
    };
  }

  factory CapabilityState.fromMap(Map<String, dynamic> map) {
    return CapabilityState(
      capabilityName: map['capabilityName'] == null ? null : pulumi.Output.create<String>(map['capabilityName'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<bool>(map['value'] as bool),
    );
  }
}

