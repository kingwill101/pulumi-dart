// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProducerImageShareGroupImageSharesFilter {
  /// The method to match the field by. (`exact`, `regex`, `substring`; default `exact`)
  final pulumi.Input<String>? matchBy;
  /// The name of the field to filter by. See the Filterable Fields section for a complete list of filterable fields.
  final pulumi.Input<String> name;
  /// A list of values for the filter to allow. These values should all be in string form.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetProducerImageShareGroupImageSharesFilter].
  /// [matchBy] The method to match the field by. (`exact`, `regex`, `substring`; default `exact`)
  /// [name] The name of the field to filter by. See the Filterable Fields section for a complete list of filterable fields.
  /// [values] A list of values for the filter to allow. These values should all be in string form.
  const GetProducerImageShareGroupImageSharesFilter({
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

  factory GetProducerImageShareGroupImageSharesFilter.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesFilter(
      matchBy: (() { final guardedValue = map['matchBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

