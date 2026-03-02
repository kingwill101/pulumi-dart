// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration.dart';

class ControlPlaneNodeConfiguration {
  /// The administrator credentials to be used for the nodes in the control plane.
  final pulumi.Input<AdministratorConfiguration>? administratorConfiguration;
  /// The list of availability zones of the Network Cloud cluster to be used for the provisioning of nodes in the control plane. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;
  /// The name of the VM SKU supplied during creation.
  final pulumi.Input<String> vmSkuName;

  /// Creates a new [ControlPlaneNodeConfiguration].
  /// [administratorConfiguration] The administrator credentials to be used for the nodes in the control plane.
  /// [availabilityZones] The list of availability zones of the Network Cloud cluster to be used for the provisioning of nodes in the control plane. If not specified, all availability zones will be used.
  /// [count] The number of virtual machines that use this configuration.
  /// [vmSkuName] The name of the VM SKU supplied during creation.
  ControlPlaneNodeConfiguration({
    this.administratorConfiguration,
    this.availabilityZones,
    required this.count,
    required this.vmSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorConfiguration': ?pulumi.Input.mapOptionalInputValue<AdministratorConfiguration, Map<String, dynamic>>(administratorConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'count': count,
      'vmSkuName': vmSkuName,
    };
  }

  factory ControlPlaneNodeConfiguration.fromMap(Map<String, dynamic> map) {
    return ControlPlaneNodeConfiguration(
      administratorConfiguration: map['administratorConfiguration'] == null ? null : (AdministratorConfiguration.fromMap((map['administratorConfiguration'] as Map).cast<String, dynamic>())).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      count: (map['count'] as double).input(),
      vmSkuName: (map['vmSkuName'] as String).input(),
    );
  }
}

