// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource type common attribute management.
class ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse {
  /// Common api versions merge mode.
  final pulumi.Input<String?>? commonApiVersionsMergeMode;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse].
  /// [commonApiVersionsMergeMode] Common api versions merge mode.
  const ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse({
    this.commonApiVersionsMergeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonApiVersionsMergeMode': ?commonApiVersionsMergeMode,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse(
      commonApiVersionsMergeMode: (() { final guardedValue = map['commonApiVersionsMergeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
