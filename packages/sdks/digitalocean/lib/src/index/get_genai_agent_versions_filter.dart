// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentVersionsFilter {
  final pulumi.Input<bool>? all;
  final pulumi.Input<String> key;
  final pulumi.Input<String>? matchBy;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetGenaiAgentVersionsFilter].
  /// [all] Optional.
  /// [key] Required.
  /// [matchBy] Optional.
  /// [values] Required.
  GetGenaiAgentVersionsFilter({
    this.all,
    required this.key,
    this.matchBy,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'key': key,
      'matchBy': ?matchBy,
      'values': values,
    };
  }

  factory GetGenaiAgentVersionsFilter.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsFilter(
      all: map['all'] == null ? null : (map['all']! as bool).input(),
      key: (map['key'] as String).input(),
      matchBy: map['matchBy'] == null ? null : (map['matchBy']! as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

