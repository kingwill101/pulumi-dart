// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_video_acpi.dart';
import 'domain_devices_video_alias.dart';
import 'domain_devices_video_driver.dart';
import 'domain_devices_video_model.dart';

class DomainDevicesVideo {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesVideoAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesVideoAlias>? alias;
  /// Configures the driver properties for the video device.
  final pulumi.Input<DomainDevicesVideoDriver>? driver;
  /// Defines the specific model of the video device being used.
  final pulumi.Input<DomainDevicesVideoModel>? model;

  /// Creates a new [DomainDevicesVideo].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [driver] Configures the driver properties for the video device.
  /// [model] Defines the specific model of the video device being used.
  DomainDevicesVideo({
    this.acpi,
    this.address,
    this.alias,
    this.driver,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVideoAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVideoAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVideoDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'model': ?pulumi.Input.mapOptionalInputValue<DomainDevicesVideoModel, Map<String, dynamic>>(model, (value) => value.toMap()),
    };
  }

  factory DomainDevicesVideo.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideo(
      acpi: map['acpi'] == null ? null : (DomainDevicesVideoAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address'] as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesVideoAlias.fromMap((map['alias'] as Map).cast<String, dynamic>())).input(),
      driver: map['driver'] == null ? null : (DomainDevicesVideoDriver.fromMap((map['driver'] as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (DomainDevicesVideoModel.fromMap((map['model'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

