// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountRaiPolicyContentFilter {
  /// Whether the filter should block content. Possible values are `true` or `false`.
  final pulumi.Input<bool> blockEnabled;
  /// Whether the filter is enabled. Possible values are `true` or `false`.
  final pulumi.Input<bool> filterEnabled;
  /// The name of the content filter.
  final pulumi.Input<String> name;
  /// The severity threshold for the filter. Possible values are `Low`, `Medium` or `High`.
  final pulumi.Input<String> severityThreshold;
  /// Content source to apply the content filter. Possible values are `Prompt` or `Completion`.
  final pulumi.Input<String> source;

  /// Creates a new [AccountRaiPolicyContentFilter].
  /// [blockEnabled] Whether the filter should block content. Possible values are `true` or `false`.
  /// [filterEnabled] Whether the filter is enabled. Possible values are `true` or `false`.
  /// [name] The name of the content filter.
  /// [severityThreshold] The severity threshold for the filter. Possible values are `Low`, `Medium` or `High`.
  /// [source] Content source to apply the content filter. Possible values are `Prompt` or `Completion`.
  AccountRaiPolicyContentFilter({
    required this.blockEnabled,
    required this.filterEnabled,
    required this.name,
    required this.severityThreshold,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockEnabled': blockEnabled,
      'filterEnabled': filterEnabled,
      'name': name,
      'severityThreshold': severityThreshold,
      'source': source,
    };
  }

  factory AccountRaiPolicyContentFilter.fromMap(Map<String, dynamic> map) {
    return AccountRaiPolicyContentFilter(
      blockEnabled: (map['blockEnabled'] as bool).input(),
      filterEnabled: (map['filterEnabled'] as bool).input(),
      name: (map['name'] as String).input(),
      severityThreshold: (map['severityThreshold'] as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

