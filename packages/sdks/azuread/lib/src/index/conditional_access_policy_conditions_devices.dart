// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_devices_filter.dart';

class ConditionalAccessPolicyConditionsDevices {
  /// A `filter` block as documented below.
  ///
  /// > **Note:** For more information on device filters, see the [official documentation](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-condition-filters-for-devices#supported-operators-and-device-properties-for-filters).
  final pulumi.Input<ConditionalAccessPolicyConditionsDevicesFilter>? filter;

  /// Creates a new [ConditionalAccessPolicyConditionsDevices].
  /// [filter] A `filter` block as documented below.
  ConditionalAccessPolicyConditionsDevices({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<ConditionalAccessPolicyConditionsDevicesFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory ConditionalAccessPolicyConditionsDevices.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsDevices(
      filter: map['filter'] == null ? null : (ConditionalAccessPolicyConditionsDevicesFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

