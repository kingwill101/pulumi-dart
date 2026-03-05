// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerHighAvailability {
  /// The high availability mode for the MySQL Flexible Server. Possibles values are `SameZone` and `ZoneRedundant`.
  ///
  /// &gt; **Note:** `storage[0].auto_grow_enabled` must be enabled when `high_availability` is enabled. To change the `high_availability` for a MySQL Flexible Server created with `high_availability` disabled during creation, the resource has to be recreated.
  final pulumi.Input<String> mode;
  /// Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are `1`, `2` and `3`.
  ///
  /// &gt; **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the MySQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignore_changes` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the MySQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// &gt; **Note:** The Availability Zones available depend on the Azure Region that the MySQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  final pulumi.Input<String>? standbyAvailabilityZone;

  /// Creates a new [FlexibleServerHighAvailability].
  /// [mode] The high availability mode for the MySQL Flexible Server. Possibles values are `SameZone` and `ZoneRedundant`.
  /// [standbyAvailabilityZone] Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are `1`, `2` and `3`.
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
      mode: pulumi.Input.fromValue(map['mode'] as String),
      standbyAvailabilityZone: (() { final guardedValue = map['standbyAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

