// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_pci_driver.dart';
import 'domain_devices_hostdev_subsys_pci_source.dart';
import 'domain_devices_hostdev_subsys_pci_teaming.dart';

class DomainDevicesHostdevSubsysPci {
  /// Sets the display attributes for the PCI subsystem device.
  final pulumi.Input<String>? display;
  /// Defines the driver configuration for the PCI subsystem device.
  final pulumi.Input<DomainDevicesHostdevSubsysPciDriver>? driver;
  /// Configures the use of framebuffer memory for the PCI device.
  final pulumi.Input<String>? ramFb;
  /// Specifies the source configuration for the PCI device being passed through.
  final pulumi.Input<DomainDevicesHostdevSubsysPciSource>? source;
  /// Configures the teaming settings for the PCI device.
  final pulumi.Input<DomainDevicesHostdevSubsysPciTeaming>? teaming;

  /// Creates a new [DomainDevicesHostdevSubsysPci].
  /// [display] Sets the display attributes for the PCI subsystem device.
  /// [driver] Defines the driver configuration for the PCI subsystem device.
  /// [ramFb] Configures the use of framebuffer memory for the PCI device.
  /// [source] Specifies the source configuration for the PCI device being passed through.
  /// [teaming] Configures the teaming settings for the PCI device.
  DomainDevicesHostdevSubsysPci({
    this.display,
    this.driver,
    this.ramFb,
    this.source,
    this.teaming,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'display': ?display,
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysPciDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'ramFb': ?ramFb,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysPciSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'teaming': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevSubsysPciTeaming, Map<String, dynamic>>(teaming, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevSubsysPci.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPci(
      display: map['display'] == null ? null : (map['display'] as String).input(),
      driver: map['driver'] == null ? null : (DomainDevicesHostdevSubsysPciDriver.fromMap((map['driver'] as Map).cast<String, dynamic>())).input(),
      ramFb: map['ramFb'] == null ? null : (map['ramFb'] as String).input(),
      source: map['source'] == null ? null : (DomainDevicesHostdevSubsysPciSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      teaming: map['teaming'] == null ? null : (DomainDevicesHostdevSubsysPciTeaming.fromMap((map['teaming'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

