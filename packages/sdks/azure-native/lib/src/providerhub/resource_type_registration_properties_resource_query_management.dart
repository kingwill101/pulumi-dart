// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource query management options.
class ResourceTypeRegistrationPropertiesResourceQueryManagement {
  /// Filter option.
  final pulumi.Input<String>? filterOption;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceQueryManagement].
  /// [filterOption] Filter option.
  ResourceTypeRegistrationPropertiesResourceQueryManagement({
    this.filterOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filterOption': ?filterOption};
  }

  factory ResourceTypeRegistrationPropertiesResourceQueryManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesResourceQueryManagement(
      filterOption: (() {
        final guardedValue = map['filterOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
