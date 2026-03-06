// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'class_item.dart';

/// {@template pulumi_speech_v1_custom_class_args_doc}
/// The set of arguments for CustomClass.
/// {@endtemplate}
/// {@macro pulumi_speech_v1_custom_class_args_doc}
class CustomClassArgs {
  /// The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  final pulumi.Input<String> customClassId;
  /// A collection of class items.
  final pulumi.Input<List<ClassItem>>? items;
  final pulumi.Input<String>? location;
  /// The resource name of the custom class.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomClassArgs].
  /// [customClassId] The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  /// [items] A collection of class items.
  /// [location] Optional.
  /// [name] The resource name of the custom class.
  /// [project] Optional.
  const CustomClassArgs({
    required this.customClassId,
    this.items,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customClassId': customClassId,
      'items': ?pulumi.Input.mapOptionalInputValue<List<ClassItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ClassItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CustomClassArgs.fromMap(Map<String, dynamic> map) {
    return CustomClassArgs(
      customClassId: pulumi.Input.fromValue(map['customClassId'] as String),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClassItem>(guardedValue, (value) => ClassItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

