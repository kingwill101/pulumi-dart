// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGlobalForwardingRuleMetadataFilterFilterLabel {
  /// The name of the global forwarding rule.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The value that the label must match. The value has a maximum
  /// length of 1024 characters.
  final pulumi.Input<String> value;

  /// Creates a new [GetGlobalForwardingRuleMetadataFilterFilterLabel].
  /// [name] The name of the global forwarding rule.
  /// [value] The value that the label must match. The value has a maximum
  GetGlobalForwardingRuleMetadataFilterFilterLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetGlobalForwardingRuleMetadataFilterFilterLabel.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleMetadataFilterFilterLabel(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

