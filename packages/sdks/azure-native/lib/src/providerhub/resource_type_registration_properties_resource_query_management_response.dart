// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource query management options.
class ResourceTypeRegistrationPropertiesResourceQueryManagementResponse {
  /// Filter option.
  final pulumi.Input<String>? filterOption;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceQueryManagementResponse].
  /// [filterOption] Filter option.
  ResourceTypeRegistrationPropertiesResourceQueryManagementResponse({
    this.filterOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOption': ?filterOption,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceQueryManagementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceQueryManagementResponse(
      filterOption: map['filterOption'] == null ? null : (map['filterOption'] as String).input(),
    );
  }
}

