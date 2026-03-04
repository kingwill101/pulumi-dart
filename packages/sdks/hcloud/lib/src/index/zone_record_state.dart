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
  ZoneRecordState({this.comment, this.name, this.type, this.value, this.zone});

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
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
