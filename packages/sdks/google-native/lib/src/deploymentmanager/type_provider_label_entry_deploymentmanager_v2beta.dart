// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for TypeProviders
class TypeProviderLabelEntryDeploymentmanagerV2beta {
  /// Key of the label
  final pulumi.Input<String>? key;
  /// Value of the label
  final pulumi.Input<String>? value;

  /// Creates a new [TypeProviderLabelEntryDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  const TypeProviderLabelEntryDeploymentmanagerV2beta({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TypeProviderLabelEntryDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return TypeProviderLabelEntryDeploymentmanagerV2beta(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
