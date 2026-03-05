// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlFilterAction {
  /// The data store to filter.
  final pulumi.Input<String> dataStore;
  /// The filter to apply to the search results.
  final pulumi.Input<String> filter;

  /// Creates a new [ControlFilterAction].
  /// [dataStore] The data store to filter.
  /// [filter] The filter to apply to the search results.
  ControlFilterAction({
    required this.dataStore,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': dataStore,
      'filter': filter,
    };
  }

  factory ControlFilterAction.fromMap(Map<String, dynamic> map) {
    return ControlFilterAction(
      dataStore: pulumi.Input.fromValue(map['dataStore'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}

