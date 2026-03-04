// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_filter_ref_parameter.dart';

class DomainDevicesInterfaceFilterRef {
  /// Defines the specific filter to apply to the network interface.
  final pulumi.Input<String> filter;

  /// Configures parameters for the referenced filter.
  final pulumi.Input<List<DomainDevicesInterfaceFilterRefParameter>>?
  parameters;

  /// Creates a new [DomainDevicesInterfaceFilterRef].
  /// [filter] Defines the specific filter to apply to the network interface.
  /// [parameters] Configures parameters for the referenced filter.
  DomainDevicesInterfaceFilterRef({required this.filter, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesInterfaceFilterRefParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesInterfaceFilterRefParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesInterfaceFilterRef.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceFilterRef(
      filter: pulumi.Input.fromValue(map['filter'] as String),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainDevicesInterfaceFilterRefParameter>(
            guardedValue,
            (value) => DomainDevicesInterfaceFilterRefParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
