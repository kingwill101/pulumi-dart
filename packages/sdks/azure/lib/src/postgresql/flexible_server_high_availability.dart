// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerHighAvailability {
  /// The high availability mode for the PostgreSQL Flexible Server. Possible value are `SameZone` or `ZoneRedundant`.
  final pulumi.Input<String> mode;
  /// Specifies the Availability Zone in which the standby Flexible Server should be located.
  ///
  /// > **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignore_changes` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// > **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  final pulumi.Input<String>? standbyAvailabilityZone;

  /// Creates a new [FlexibleServerHighAvailability].
  /// [mode] The high availability mode for the PostgreSQL Flexible Server. Possible value are `SameZone` or `ZoneRedundant`.
  /// [standbyAvailabilityZone] Specifies the Availability Zone in which the standby Flexible Server should be located.
  FlexibleServerHighAvailability({
    required this.mode,
    this.standbyAvailabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
    };
  }

  factory FlexibleServerHighAvailability.fromMap(Map<String, dynamic> map) {
    return FlexibleServerHighAvailability(
      mode: (map['mode'] as String).input(),
      standbyAvailabilityZone: map['standbyAvailabilityZone'] == null ? null : (map['standbyAvailabilityZone'] as String).input(),
    );
  }
}

