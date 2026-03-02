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
      comment: map['comment'] == null ? null : (map['comment']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

