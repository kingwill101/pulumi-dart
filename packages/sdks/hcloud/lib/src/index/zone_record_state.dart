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
    pulumi.Output<String>? comment,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
    pulumi.Output<String>? value,
    pulumi.Output<String>? zone,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

