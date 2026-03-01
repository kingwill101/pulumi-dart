// ignore_for_file: unused_element, unnecessary_cast


/// Resource type common attribute management.
class ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse {
  /// Common api versions merge mode.
  final String? commonApiVersionsMergeMode;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse].
  /// [commonApiVersionsMergeMode] Common api versions merge mode.
  ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse({
    this.commonApiVersionsMergeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonApiVersionsMergeMode': ?commonApiVersionsMergeMode,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse(
      commonApiVersionsMergeMode: map['commonApiVersionsMergeMode'] == null ? null : map['commonApiVersionsMergeMode'] as String,
    );
  }
}

