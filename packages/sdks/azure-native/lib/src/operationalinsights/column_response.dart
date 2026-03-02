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
  ColumnResponse({
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
      dataTypeHint: map['dataTypeHint'] == null ? null : (map['dataTypeHint']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      isDefaultDisplay: (map['isDefaultDisplay'] as bool).input(),
      isHidden: (map['isHidden'] as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

