// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel {
  /// Name of metadata label. The name can have a maximum length of 1024 characters
  /// and must be at least 1 character long.
  final pulumi.Input<String> name;
  /// The value of the label must match the specified value. value can have a maximum
  /// length of 1024 characters.
  final pulumi.Input<String> value;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel].
  /// [name] Name of metadata label. The name can have a maximum length of 1024 characters
  /// [value] The value of the label must match the specified value. value can have a maximum
  const RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
