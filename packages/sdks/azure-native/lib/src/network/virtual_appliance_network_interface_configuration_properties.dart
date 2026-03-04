// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_ipconfiguration.dart';

/// Represents a single NIC configuration properties.
class VirtualApplianceNetworkInterfaceConfigurationProperties {
  final pulumi.Input<List<VirtualApplianceIPConfiguration>>? ipConfigurations;

  /// Creates a new [VirtualApplianceNetworkInterfaceConfigurationProperties].
  /// [ipConfigurations] Optional.
  VirtualApplianceNetworkInterfaceConfigurationProperties({
    this.ipConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualApplianceIPConfiguration>,
            List<Map<String, dynamic>>
          >(
            ipConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualApplianceIPConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualApplianceNetworkInterfaceConfigurationProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualApplianceNetworkInterfaceConfigurationProperties(
      ipConfigurations: (() {
        final guardedValue = map['ipConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualApplianceIPConfiguration>(
            guardedValue,
            (value) => VirtualApplianceIPConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
