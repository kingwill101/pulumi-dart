// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_record_zone_record_args_doc}
/// The set of arguments for ZoneRecord.
/// {@endtemplate}
/// {@macro pulumi_index_zone_record_zone_record_args_doc}
class ZoneRecordArgs {
  /// Comment of the Zone Record.
  final pulumi.Input<String>? comment;

  /// Name of the Zone Record.
  final pulumi.Input<String>? name;

  /// Type of the Zone Record.
  final pulumi.Input<String> type;

  /// Value of the Zone Record.
  final pulumi.Input<String> value;

  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [ZoneRecordArgs].
  /// [comment] Comment of the Zone Record.
  /// [name] Name of the Zone Record.
  /// [type] Type of the Zone Record.
  /// [value] Value of the Zone Record.
  /// [zone] ID or Name of the parent Zone.
  ZoneRecordArgs({
    this.comment,
    this.name,
    required this.type,
    required this.value,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
      'type': type,
      'value': value,
      'zone': zone,
    };
  }

  factory ZoneRecordArgs.fromMap(Map<String, dynamic> map) {
    return ZoneRecordArgs(
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
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
