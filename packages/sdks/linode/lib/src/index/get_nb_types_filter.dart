// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNbTypesFilter {
  /// The type of comparison to use for this filter.
  final pulumi.Input<String>? matchBy;
  /// The name of the attribute to filter on.
  final pulumi.Input<String> name;
  /// The value(s) to be used in the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetNbTypesFilter].
  /// [matchBy] The type of comparison to use for this filter.
  /// [name] The name of the attribute to filter on.
  /// [values] The value(s) to be used in the filter.
  GetNbTypesFilter({
    this.matchBy,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchBy': ?matchBy,
      'name': name,
      'values': values,
    };
  }

  factory GetNbTypesFilter.fromMap(Map<String, dynamic> map) {
    return GetNbTypesFilter(
      matchBy: (() { final guardedValue = map['matchBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

