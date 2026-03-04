// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'hardware_profile.dart';
import 'infrastructure_profile.dart';
import 'network_profile.dart';
import 'os_profile_for_vminstance.dart';
import 'storage_profile.dart';
import 'virtual_machine_instance_properties_availability_sets.dart';

/// {@template pulumi_scvmm_virtual_machine_instance_args_doc}
/// The set of arguments for VirtualMachineInstance.
/// {@endtemplate}
/// {@macro pulumi_scvmm_virtual_machine_instance_args_doc}
class VirtualMachineInstanceArgs {
  /// Availability Sets in vm.
  final pulumi.Input<List<VirtualMachineInstancePropertiesAvailabilitySets>>?
  availabilitySets;

  /// Gets or sets the extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;

  /// Hardware properties.
  final pulumi.Input<HardwareProfile>? hardwareProfile;

  /// Gets the infrastructure profile.
  final pulumi.Input<InfrastructureProfile>? infrastructureProfile;

  /// Network properties.
  final pulumi.Input<NetworkProfile>? networkProfile;

  /// OS properties.
  final pulumi.Input<OsProfileForVMInstance>? osProfile;

  /// The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  final pulumi.Input<String> resourceUri;

  /// Storage properties.
  final pulumi.Input<StorageProfile>? storageProfile;

  /// Creates a new [VirtualMachineInstanceArgs].
  /// [availabilitySets] Availability Sets in vm.
  /// [extendedLocation] Gets or sets the extended location.
  /// [hardwareProfile] Hardware properties.
  /// [infrastructureProfile] Gets the infrastructure profile.
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  /// [storageProfile] Storage properties.
  VirtualMachineInstanceArgs({
    this.availabilitySets,
    required this.extendedLocation,
    this.hardwareProfile,
    this.infrastructureProfile,
    this.networkProfile,
    this.osProfile,
    required this.resourceUri,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySets':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualMachineInstancePropertiesAvailabilitySets>,
            List<Map<String, dynamic>>
          >(
            availabilitySets,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualMachineInstancePropertiesAvailabilitySets,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
      'hardwareProfile':
          ?pulumi.Input.mapOptionalInputValue<
            HardwareProfile,
            Map<String, dynamic>
          >(hardwareProfile, (value) => value.toMap()),
      'infrastructureProfile':
          ?pulumi.Input.mapOptionalInputValue<
            InfrastructureProfile,
            Map<String, dynamic>
          >(infrastructureProfile, (value) => value.toMap()),
      'networkProfile':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkProfile,
            Map<String, dynamic>
          >(networkProfile, (value) => value.toMap()),
      'osProfile':
          ?pulumi.Input.mapOptionalInputValue<
            OsProfileForVMInstance,
            Map<String, dynamic>
          >(osProfile, (value) => value.toMap()),
      'resourceUri': resourceUri,
      'storageProfile':
          ?pulumi.Input.mapOptionalInputValue<
            StorageProfile,
            Map<String, dynamic>
          >(storageProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceArgs(
      availabilitySets: (() {
        final guardedValue = map['availabilitySets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            VirtualMachineInstancePropertiesAvailabilitySets
          >(
            guardedValue,
            (value) => VirtualMachineInstancePropertiesAvailabilitySets.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      hardwareProfile: (() {
        final guardedValue = map['hardwareProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HardwareProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      infrastructureProfile: (() {
        final guardedValue = map['infrastructureProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InfrastructureProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkProfile: (() {
        final guardedValue = map['networkProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      osProfile: (() {
        final guardedValue = map['osProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OsProfileForVMInstance.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      storageProfile: (() {
        final guardedValue = map['storageProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
