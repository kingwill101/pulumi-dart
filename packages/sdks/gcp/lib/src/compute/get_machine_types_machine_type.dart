// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_types_machine_type_accelerator.dart';
import 'get_machine_types_machine_type_bundled_local_ssd.dart';
import 'get_machine_types_machine_type_deprecated.dart';

class GetMachineTypesMachineType {
  /// A list of accelerator configurations assigned to this machine type. Structure is documented below.
  final pulumi.Input<List<GetMachineTypesMachineTypeAccelerator>> accelerators;
  /// The configuration of bundled local SSD for the machine type. Structure is documented below.
  final pulumi.Input<List<GetMachineTypesMachineTypeBundledLocalSsd>> bundledLocalSsds;
  /// The deprecation status associated with this machine type. Structure is documented below.
  final pulumi.Input<List<GetMachineTypesMachineTypeDeprecated>> deprecateds;
  /// A textual description of the machine type.
  final pulumi.Input<String> description;
  /// The number of virtual CPUs that are available to the instance.
  final pulumi.Input<int> guestCpus;
  /// Whether this machine type has a shared CPU.
  final pulumi.Input<bool> isSharedCpus;
  /// The maximum persistent disks allowed.
  final pulumi.Input<int> maximumPersistentDisks;
  /// The maximum total persistent disks size (GB) allowed.
  final pulumi.Input<int> maximumPersistentDisksSizeGb;
  /// The amount of physical memory available to the instance, defined in MB.
  final pulumi.Input<int> memoryMb;
  /// The name of the machine type.
  final pulumi.Input<String> name;
  /// The server-defined URL for the machine type.
  final pulumi.Input<String> selfLink;

  /// Creates a new [GetMachineTypesMachineType].
  /// [accelerators] A list of accelerator configurations assigned to this machine type. Structure is documented below.
  /// [bundledLocalSsds] The configuration of bundled local SSD for the machine type. Structure is documented below.
  /// [deprecateds] The deprecation status associated with this machine type. Structure is documented below.
  /// [description] A textual description of the machine type.
  /// [guestCpus] The number of virtual CPUs that are available to the instance.
  /// [isSharedCpus] Whether this machine type has a shared CPU.
  /// [maximumPersistentDisks] The maximum persistent disks allowed.
  /// [maximumPersistentDisksSizeGb] The maximum total persistent disks size (GB) allowed.
  /// [memoryMb] The amount of physical memory available to the instance, defined in MB.
  /// [name] The name of the machine type.
  /// [selfLink] The server-defined URL for the machine type.
  GetMachineTypesMachineType({
    required this.accelerators,
    required this.bundledLocalSsds,
    required this.deprecateds,
    required this.description,
    required this.guestCpus,
    required this.isSharedCpus,
    required this.maximumPersistentDisks,
    required this.maximumPersistentDisksSizeGb,
    required this.memoryMb,
    required this.name,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.mapInputValue<List<GetMachineTypesMachineTypeAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<GetMachineTypesMachineTypeAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bundledLocalSsds': pulumi.Input.mapInputValue<List<GetMachineTypesMachineTypeBundledLocalSsd>, List<Map<String, dynamic>>>(bundledLocalSsds, (value) => pulumi.Input.encodeList<GetMachineTypesMachineTypeBundledLocalSsd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deprecateds': pulumi.Input.mapInputValue<List<GetMachineTypesMachineTypeDeprecated>, List<Map<String, dynamic>>>(deprecateds, (value) => pulumi.Input.encodeList<GetMachineTypesMachineTypeDeprecated, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'guestCpus': guestCpus,
      'isSharedCpus': isSharedCpus,
      'maximumPersistentDisks': maximumPersistentDisks,
      'maximumPersistentDisksSizeGb': maximumPersistentDisksSizeGb,
      'memoryMb': memoryMb,
      'name': name,
      'selfLink': selfLink,
    };
  }

  factory GetMachineTypesMachineType.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesMachineType(
      accelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMachineTypesMachineTypeAccelerator>(map['accelerators']!, (value) => GetMachineTypesMachineTypeAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      bundledLocalSsds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMachineTypesMachineTypeBundledLocalSsd>(map['bundledLocalSsds']!, (value) => GetMachineTypesMachineTypeBundledLocalSsd.fromMap((value as Map).cast<String, dynamic>()))),
      deprecateds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMachineTypesMachineTypeDeprecated>(map['deprecateds']!, (value) => GetMachineTypesMachineTypeDeprecated.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      guestCpus: pulumi.Input.fromValue(map['guestCpus'] as int),
      isSharedCpus: pulumi.Input.fromValue(map['isSharedCpus'] as bool),
      maximumPersistentDisks: pulumi.Input.fromValue(map['maximumPersistentDisks'] as int),
      maximumPersistentDisksSizeGb: pulumi.Input.fromValue(map['maximumPersistentDisksSizeGb'] as int),
      memoryMb: pulumi.Input.fromValue(map['memoryMb'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
    );
  }
}

