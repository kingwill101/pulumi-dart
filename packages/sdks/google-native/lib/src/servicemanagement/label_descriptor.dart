// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_descriptor_value_type.dart';

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  final pulumi.Input<String>? description;
  /// The label key.
  final pulumi.Input<String>? key;
  /// The type of data that can be assigned to the label.
  final pulumi.Input<LabelDescriptorValueType>? valueType;

  /// Creates a new [LabelDescriptor].
  /// [description] A human-readable description for the label.
  /// [key] The label key.
  /// [valueType] The type of data that can be assigned to the label.
  LabelDescriptor({
    this.description,
    this.key,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'key': ?key,
      'valueType': ?pulumi.Input.mapOptionalInputValue<LabelDescriptorValueType, String>(valueType, (value) => value.wireValue),
    };
  }

  factory LabelDescriptor.fromMap(Map<String, dynamic> map) {
    return LabelDescriptor(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelDescriptorValueType.fromValue(guardedValue as String)); })(),
    );
  }
}

