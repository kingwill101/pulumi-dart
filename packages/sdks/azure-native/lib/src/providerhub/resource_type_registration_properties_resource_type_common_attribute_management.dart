// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource type common attribute management.
class ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement {
  /// Common api versions merge mode.
  final pulumi.Input<String>? commonApiVersionsMergeMode;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement].
  /// [commonApiVersionsMergeMode] Common api versions merge mode.
  ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement({
    this.commonApiVersionsMergeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonApiVersionsMergeMode': ?commonApiVersionsMergeMode,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement(
      commonApiVersionsMergeMode: map['commonApiVersionsMergeMode'] == null ? null : (map['commonApiVersionsMergeMode']! as String).input(),
    );
  }
}

