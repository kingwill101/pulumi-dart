// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneRecord resources.
class ZoneRecordState {
  /// Comment of the Zone Record.
  final pulumi.Input<String>? comment;
  /// Name of the Zone Record.
  final pulumi.Input<String>? name;
  /// Type of the Zone Record.
  final pulumi.Input<String>? type;
  /// Value of the Zone Record.
  final pulumi.Input<String>? value;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [ZoneRecordState].
  /// [comment] Comment of the Zone Record.
  /// [name] Name of the Zone Record.
  /// [type] Type of the Zone Record.
  /// [value] Value of the Zone Record.
  /// [zone] ID or Name of the parent Zone.
  ZoneRecordState({
    this.comment,
    this.name,
    this.type,
    this.value,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
      'type': ?type,
      'value': ?value,
      'zone': ?zone,
    };
  }

  factory ZoneRecordState.fromMap(Map<String, dynamic> map) {
    return ZoneRecordState(
      comment: map['comment'] == null ? null : (map['comment']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

