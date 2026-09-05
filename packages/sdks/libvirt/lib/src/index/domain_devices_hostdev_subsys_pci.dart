// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_pci_driver.dart';
import 'domain_devices_hostdev_subsys_pci_source.dart';
import 'domain_devices_hostdev_subsys_pci_teaming.dart';

class DomainDevicesHostdevSubsysPci {
  /// Sets the display attributes for the PCI subsystem device.
  final pulumi.Input<String?>? display;
  /// Defines the driver configuration for the PCI subsystem device.
  final pulumi.Input<DomainDevicesHostdevSubsysPciDriver?>? driver;
  /// Configures the use of framebuffer memory for the PCI device.
  final pulumi.Input<String?>? ramFb;
  /// Specifies the source configuration for the PCI device being passed through.
  final pulumi.Input<DomainDevicesHostdevSubsysPciSource?>? source;
  /// Configures the teaming settings for the PCI device.
  final pulumi.Input<DomainDevicesHostdevSubsysPciTeaming?>? teaming;

  /// Creates a new [DomainDevicesHostdevSubsysPci].
  /// [display] Sets the display attributes for the PCI subsystem device.
  /// [driver] Defines the driver configuration for the PCI subsystem device.
  /// [ramFb] Configures the use of framebuffer memory for the PCI device.
  /// [source] Specifies the source configuration for the PCI device being passed through.
  /// [teaming] Configures the teaming settings for the PCI device.
  const DomainDevicesHostdevSubsysPci({
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
      display: (() { final guardedValue = map['display']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysPciDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ramFb: (() { final guardedValue = map['ramFb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysPciSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      teaming: (() { final guardedValue = map['teaming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevSubsysPciTeaming.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
