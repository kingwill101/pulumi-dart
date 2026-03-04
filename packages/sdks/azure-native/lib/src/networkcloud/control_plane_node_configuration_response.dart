// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration_response.dart';

class ControlPlaneNodeConfigurationResponse {
  /// The administrator credentials to be used for the nodes in the control plane.
  final pulumi.Input<AdministratorConfigurationResponse>?
  administratorConfiguration;

  /// The list of availability zones of the Network Cloud cluster to be used for the provisioning of nodes in the control plane. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>>? availabilityZones;

  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;

  /// The name of the VM SKU supplied during creation.
  final pulumi.Input<String> vmSkuName;

  /// Creates a new [ControlPlaneNodeConfigurationResponse].
  /// [administratorConfiguration] The administrator credentials to be used for the nodes in the control plane.
  /// [availabilityZones] The list of availability zones of the Network Cloud cluster to be used for the provisioning of nodes in the control plane. If not specified, all availability zones will be used.
  /// [count] The number of virtual machines that use this configuration.
  /// [vmSkuName] The name of the VM SKU supplied during creation.
  ControlPlaneNodeConfigurationResponse({
    this.administratorConfiguration,
    this.availabilityZones,
    required this.count,
    required this.vmSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AdministratorConfigurationResponse,
            Map<String, dynamic>
          >(administratorConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'count': count,
      'vmSkuName': vmSkuName,
    };
  }

  factory ControlPlaneNodeConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlPlaneNodeConfigurationResponse(
      administratorConfiguration: (() {
        final guardedValue = map['administratorConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AdministratorConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      availabilityZones: (() {
        final guardedValue = map['availabilityZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      count: pulumi.Input.fromValue(map['count'] as double),
      vmSkuName: pulumi.Input.fromValue(map['vmSkuName'] as String),
    );
  }
}
