// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_types_machine_type_accelerator.dart';
import 'get_machine_types_machine_type_bundled_local_ssd.dart';
import 'get_machine_types_machine_type_deprecated.dart';

class GetMachineTypesMachineType {
  /// A list of accelerator configurations assigned to this machine type. Structure is documented below.
  final List<GetMachineTypesMachineTypeAccelerator> accelerators;
  /// The configuration of bundled local SSD for the machine type. Structure is documented below.
  final List<GetMachineTypesMachineTypeBundledLocalSsd> bundledLocalSsds;
  /// The deprecation status associated with this machine type. Structure is documented below.
  final List<GetMachineTypesMachineTypeDeprecated> deprecateds;
  /// A textual description of the machine type.
  final String description;
  /// The number of virtual CPUs that are available to the instance.
  final int guestCpus;
  /// Whether this machine type has a shared CPU.
  final bool isSharedCpus;
  /// The maximum persistent disks allowed.
  final int maximumPersistentDisks;
  /// The maximum total persistent disks size (GB) allowed.
  final int maximumPersistentDisksSizeGb;
  /// The amount of physical memory available to the instance, defined in MB.
  final int memoryMb;
  /// The name of the machine type.
  final String name;
  /// The server-defined URL for the machine type.
  final String selfLink;

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
      'accelerators': pulumi.Input.encodeList<GetMachineTypesMachineTypeAccelerator, Map<String, dynamic>>(accelerators, (value) => value.toMap()),
      'bundledLocalSsds': pulumi.Input.encodeList<GetMachineTypesMachineTypeBundledLocalSsd, Map<String, dynamic>>(bundledLocalSsds, (value) => value.toMap()),
      'deprecateds': pulumi.Input.encodeList<GetMachineTypesMachineTypeDeprecated, Map<String, dynamic>>(deprecateds, (value) => value.toMap()),
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
      accelerators: pulumi.Input.decodeList<GetMachineTypesMachineTypeAccelerator>(map['accelerators'], (value) => GetMachineTypesMachineTypeAccelerator.fromMap((value as Map).cast<String, dynamic>())),
      bundledLocalSsds: pulumi.Input.decodeList<GetMachineTypesMachineTypeBundledLocalSsd>(map['bundledLocalSsds'], (value) => GetMachineTypesMachineTypeBundledLocalSsd.fromMap((value as Map).cast<String, dynamic>())),
      deprecateds: pulumi.Input.decodeList<GetMachineTypesMachineTypeDeprecated>(map['deprecateds'], (value) => GetMachineTypesMachineTypeDeprecated.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      guestCpus: map['guestCpus'] as int,
      isSharedCpus: map['isSharedCpus'] as bool,
      maximumPersistentDisks: map['maximumPersistentDisks'] as int,
      maximumPersistentDisksSizeGb: map['maximumPersistentDisksSizeGb'] as int,
      memoryMb: map['memoryMb'] as int,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}

