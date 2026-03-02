// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for CompositeTypes
class CompositeTypeLabelEntryResponseDeploymentmanagerV2beta {
  /// Key of the label
  final pulumi.Input<String> key;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [CompositeTypeLabelEntryResponseDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  CompositeTypeLabelEntryResponseDeploymentmanagerV2beta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory CompositeTypeLabelEntryResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CompositeTypeLabelEntryResponseDeploymentmanagerV2beta(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

