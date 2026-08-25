// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveTableStorageDescriptorColumn {
  /// Comment of the field.
  final pulumi.Input<String?>? comment;
  /// Name of the field.
  final pulumi.Input<String> name;
  /// Type of the field.
  final pulumi.Input<String> type;

  /// Creates a new [HiveTableStorageDescriptorColumn].
  /// [comment] Comment of the field.
  /// [name] Name of the field.
  /// [type] Type of the field.
  const HiveTableStorageDescriptorColumn({
    this.comment,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': name,
      'type': type,
    };
  }

  factory HiveTableStorageDescriptorColumn.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptorColumn(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
