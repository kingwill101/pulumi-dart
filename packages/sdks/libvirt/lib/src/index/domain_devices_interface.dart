// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_acpi.dart';
import 'domain_devices_interface_alias.dart';
import 'domain_devices_interface_backend.dart';
import 'domain_devices_interface_backend_domain.dart';
import 'domain_devices_interface_bandwidth.dart';
import 'domain_devices_interface_boot.dart';
import 'domain_devices_interface_coalesce.dart';
import 'domain_devices_interface_down_script.dart';
import 'domain_devices_interface_driver.dart';
import 'domain_devices_interface_filter_ref.dart';
import 'domain_devices_interface_guest.dart';
import 'domain_devices_interface_ip.dart';
import 'domain_devices_interface_link.dart';
import 'domain_devices_interface_mac.dart';
import 'domain_devices_interface_model.dart';
import 'domain_devices_interface_mtu.dart';
import 'domain_devices_interface_port_forward.dart';
import 'domain_devices_interface_port_options.dart';
import 'domain_devices_interface_rom.dart';
import 'domain_devices_interface_route.dart';
import 'domain_devices_interface_script.dart';
import 'domain_devices_interface_source.dart';
import 'domain_devices_interface_target.dart';
import 'domain_devices_interface_teaming.dart';
import 'domain_devices_interface_tune.dart';
import 'domain_devices_interface_virtual_port.dart';
import 'domain_devices_interface_vlan.dart';
import 'domain_devices_interface_wait_for_ip.dart';

class DomainDevicesInterface {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesInterfaceAcpi>? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesInterfaceAlias>? alias;
  /// Configures the backend settings for the network interface.
  final pulumi.Input<DomainDevicesInterfaceBackend>? backend;
  /// Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  final pulumi.Input<DomainDevicesInterfaceBackendDomain>? backendDomain;
  /// Configures bandwidth parameters for the interface, controlling the traffic shaping and quality of service settings.
  final pulumi.Input<DomainDevicesInterfaceBandwidth>? bandwidth;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final pulumi.Input<DomainDevicesInterfaceBoot>? boot;
  /// Configures coalescing settings for the interface, optimizing the processing of network packets to reduce overhead and improve performance.
  final pulumi.Input<DomainDevicesInterfaceCoalesce>? coalesce;
  /// Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  final pulumi.Input<DomainDevicesInterfaceDownScript>? downScript;
  /// Configures parameters for the interface driver, which manages the interaction between the virtual network interface and the guest OS.
  final pulumi.Input<DomainDevicesInterfaceDriver>? driver;
  /// Specifies a reference to a filter associated with the network interface.
  final pulumi.Input<DomainDevicesInterfaceFilterRef>? filterRef;
  /// Configures guest settings related to the network interface.
  final pulumi.Input<DomainDevicesInterfaceGuest>? guest;
  /// Configures the IP settings for the network interface.
  final pulumi.Input<List<DomainDevicesInterfaceIp>>? ips;
  /// Defines settings related to the link state of the network interface.
  final pulumi.Input<DomainDevicesInterfaceLink>? link;
  /// Sets the MAC address for the network interface.
  final pulumi.Input<DomainDevicesInterfaceMac>? mac;
  /// Indicates whether the interface is managed by libvirt.
  final pulumi.Input<bool>? managed;
  /// Configures the model type of the network interface.
  final pulumi.Input<DomainDevicesInterfaceModel>? model;
  /// Configures the maximum transmission unit size for the network interface.
  final pulumi.Input<DomainDevicesInterfaceMtu>? mtu;
  /// Configures port forwarding settings for the network interface.
  final pulumi.Input<List<DomainDevicesInterfacePortForward>>? portForwards;
  /// Configures additional options for network interface ports.
  final pulumi.Input<DomainDevicesInterfacePortOptions>? portOptions;
  /// Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  final pulumi.Input<DomainDevicesInterfaceRom>? rom;
  /// Configures routing settings for the network interface.
  final pulumi.Input<List<DomainDevicesInterfaceRoute>>? routes;
  /// Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  final pulumi.Input<DomainDevicesInterfaceScript>? script;
  /// Configures the source of the network interface, specifying how the interface connects to the network.
  final pulumi.Input<DomainDevicesInterfaceSource>? source;
  /// Defines the target interface configuration for the virtual interface.
  final pulumi.Input<DomainDevicesInterfaceTarget>? target;
  /// Configures the teaming settings for the PCI device.
  final pulumi.Input<DomainDevicesInterfaceTeaming>? teaming;
  /// Configures whether to trust guest receive filters on the virtual interface.
  final pulumi.Input<String>? trustGuestRxFilters;
  /// Provides tuning options for the network interface.
  final pulumi.Input<DomainDevicesInterfaceTune>? tune;
  /// Configures the parameters for the virtual port associated with the interface.
  final pulumi.Input<DomainDevicesInterfaceVirtualPort>? virtualPort;
  /// Configures VLAN settings for the virtual network interface.
  final pulumi.Input<DomainDevicesInterfaceVlan>? vlan;
  final pulumi.Input<DomainDevicesInterfaceWaitForIp>? waitForIp;

  /// Creates a new [DomainDevicesInterface].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Configures the backend settings for the network interface.
  /// [backendDomain] Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  /// [bandwidth] Configures bandwidth parameters for the interface, controlling the traffic shaping and quality of service settings.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [coalesce] Configures coalescing settings for the interface, optimizing the processing of network packets to reduce overhead and improve performance.
  /// [downScript] Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  /// [driver] Configures parameters for the interface driver, which manages the interaction between the virtual network interface and the guest OS.
  /// [filterRef] Specifies a reference to a filter associated with the network interface.
  /// [guest] Configures guest settings related to the network interface.
  /// [ips] Configures the IP settings for the network interface.
  /// [link] Defines settings related to the link state of the network interface.
  /// [mac] Sets the MAC address for the network interface.
  /// [managed] Indicates whether the interface is managed by libvirt.
  /// [model] Configures the model type of the network interface.
  /// [mtu] Configures the maximum transmission unit size for the network interface.
  /// [portForwards] Configures port forwarding settings for the network interface.
  /// [portOptions] Configures additional options for network interface ports.
  /// [rom] Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  /// [routes] Configures routing settings for the network interface.
  /// [script] Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  /// [source] Configures the source of the network interface, specifying how the interface connects to the network.
  /// [target] Defines the target interface configuration for the virtual interface.
  /// [teaming] Configures the teaming settings for the PCI device.
  /// [trustGuestRxFilters] Configures whether to trust guest receive filters on the virtual interface.
  /// [tune] Provides tuning options for the network interface.
  /// [virtualPort] Configures the parameters for the virtual port associated with the interface.
  /// [vlan] Configures VLAN settings for the virtual network interface.
  /// [waitForIp] Optional.
  DomainDevicesInterface({
    this.acpi,
    this.address,
    this.alias,
    this.backend,
    this.backendDomain,
    this.bandwidth,
    this.boot,
    this.coalesce,
    this.downScript,
    this.driver,
    this.filterRef,
    this.guest,
    this.ips,
    this.link,
    this.mac,
    this.managed,
    this.model,
    this.mtu,
    this.portForwards,
    this.portOptions,
    this.rom,
    this.routes,
    this.script,
    this.source,
    this.target,
    this.teaming,
    this.trustGuestRxFilters,
    this.tune,
    this.virtualPort,
    this.vlan,
    this.waitForIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceAcpi, Map<String, dynamic>>(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'backend': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceBackend, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'backendDomain': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceBackendDomain, Map<String, dynamic>>(backendDomain, (value) => value.toMap()),
      'bandwidth': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceBandwidth, Map<String, dynamic>>(bandwidth, (value) => value.toMap()),
      'boot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceBoot, Map<String, dynamic>>(boot, (value) => value.toMap()),
      'coalesce': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceCoalesce, Map<String, dynamic>>(coalesce, (value) => value.toMap()),
      'downScript': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceDownScript, Map<String, dynamic>>(downScript, (value) => value.toMap()),
      'driver': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'filterRef': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceFilterRef, Map<String, dynamic>>(filterRef, (value) => value.toMap()),
      'guest': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceGuest, Map<String, dynamic>>(guest, (value) => value.toMap()),
      'ips': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfaceIp>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<DomainDevicesInterfaceIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'link': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceLink, Map<String, dynamic>>(link, (value) => value.toMap()),
      'mac': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceMac, Map<String, dynamic>>(mac, (value) => value.toMap()),
      'managed': ?managed,
      'model': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'mtu': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceMtu, Map<String, dynamic>>(mtu, (value) => value.toMap()),
      'portForwards': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfacePortForward>, List<Map<String, dynamic>>>(portForwards, (value) => pulumi.Input.encodeList<DomainDevicesInterfacePortForward, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portOptions': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfacePortOptions, Map<String, dynamic>>(portOptions, (value) => value.toMap()),
      'rom': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceRom, Map<String, dynamic>>(rom, (value) => value.toMap()),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfaceRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<DomainDevicesInterfaceRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'script': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceScript, Map<String, dynamic>>(script, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'teaming': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceTeaming, Map<String, dynamic>>(teaming, (value) => value.toMap()),
      'trustGuestRxFilters': ?trustGuestRxFilters,
      'tune': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceTune, Map<String, dynamic>>(tune, (value) => value.toMap()),
      'virtualPort': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVirtualPort, Map<String, dynamic>>(virtualPort, (value) => value.toMap()),
      'vlan': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceVlan, Map<String, dynamic>>(vlan, (value) => value.toMap()),
      'waitForIp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceWaitForIp, Map<String, dynamic>>(waitForIp, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterface.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterface(
      acpi: (() { final guardedValue = map['acpi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceAcpi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceBackend.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendDomain: (() { final guardedValue = map['backendDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceBackendDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      boot: (() { final guardedValue = map['boot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceBoot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      coalesce: (() { final guardedValue = map['coalesce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceCoalesce.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      downScript: (() { final guardedValue = map['downScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceDownScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterRef: (() { final guardedValue = map['filterRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceFilterRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guest: (() { final guardedValue = map['guest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceGuest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesInterfaceIp>(guardedValue, (value) => DomainDevicesInterfaceIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      link: (() { final guardedValue = map['link']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mac: (() { final guardedValue = map['mac']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceMac.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceMtu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portForwards: (() { final guardedValue = map['portForwards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesInterfacePortForward>(guardedValue, (value) => DomainDevicesInterfacePortForward.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portOptions: (() { final guardedValue = map['portOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfacePortOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rom: (() { final guardedValue = map['rom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceRom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesInterfaceRoute>(guardedValue, (value) => DomainDevicesInterfaceRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      teaming: (() { final guardedValue = map['teaming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceTeaming.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustGuestRxFilters: (() { final guardedValue = map['trustGuestRxFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tune: (() { final guardedValue = map['tune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceTune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualPort: (() { final guardedValue = map['virtualPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVirtualPort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceVlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForIp: (() { final guardedValue = map['waitForIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceWaitForIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

