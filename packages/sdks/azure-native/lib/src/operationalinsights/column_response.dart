// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table column.
class ColumnResponse {
  /// Column data type logical hint.
  final pulumi.Input<String>? dataTypeHint;
  /// Column description.
  final pulumi.Input<String>? description;
  /// Column display name.
  final pulumi.Input<String>? displayName;
  /// Is displayed by default.
  final pulumi.Input<bool> isDefaultDisplay;
  /// Is column hidden.
  final pulumi.Input<bool> isHidden;
  /// Column name.
  final pulumi.Input<String>? name;
  /// Column data type.
  final pulumi.Input<String>? type;

  /// Creates a new [ColumnResponse].
  /// [dataTypeHint] Column data type logical hint.
  /// [description] Column description.
  /// [displayName] Column display name.
  /// [isDefaultDisplay] Is displayed by default.
  /// [isHidden] Is column hidden.
  /// [name] Column name.
  /// [type] Column data type.
  const ColumnResponse({
    this.dataTypeHint,
    this.description,
    this.displayName,
    required this.isDefaultDisplay,
    required this.isHidden,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypeHint': ?dataTypeHint,
      'description': ?description,
      'displayName': ?displayName,
      'isDefaultDisplay': isDefaultDisplay,
      'isHidden': isHidden,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ColumnResponse.fromMap(Map<String, dynamic> map) {
    return ColumnResponse(
      dataTypeHint: (() { final guardedValue = map['dataTypeHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefaultDisplay: pulumi.Input.fromValue(map['isDefaultDisplay'] as bool),
      isHidden: pulumi.Input.fromValue(map['isHidden'] as bool),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
