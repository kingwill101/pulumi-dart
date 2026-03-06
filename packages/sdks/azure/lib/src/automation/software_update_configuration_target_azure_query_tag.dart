// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SoftwareUpdateConfigurationTargetAzureQueryTag {
  /// Specifies the name of the tag to filter.
  final pulumi.Input<String> tag;
  /// Specifies a list of values for this tag key.
  final pulumi.Input<List<String>> values;

  /// Creates a new [SoftwareUpdateConfigurationTargetAzureQueryTag].
  /// [tag] Specifies the name of the tag to filter.
  /// [values] Specifies a list of values for this tag key.
  const SoftwareUpdateConfigurationTargetAzureQueryTag({
    required this.tag,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'values': values,
    };
  }

  factory SoftwareUpdateConfigurationTargetAzureQueryTag.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTargetAzureQueryTag(
      tag: pulumi.Input.fromValue(map['tag'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

