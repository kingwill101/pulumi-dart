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
      acpi: map['acpi'] == null ? null : (DomainDevicesInterfaceAcpi.fromMap((map['acpi']! as Map).cast<String, dynamic>())).input(),
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesInterfaceAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      backend: map['backend'] == null ? null : (DomainDevicesInterfaceBackend.fromMap((map['backend']! as Map).cast<String, dynamic>())).input(),
      backendDomain: map['backendDomain'] == null ? null : (DomainDevicesInterfaceBackendDomain.fromMap((map['backendDomain']! as Map).cast<String, dynamic>())).input(),
      bandwidth: map['bandwidth'] == null ? null : (DomainDevicesInterfaceBandwidth.fromMap((map['bandwidth']! as Map).cast<String, dynamic>())).input(),
      boot: map['boot'] == null ? null : (DomainDevicesInterfaceBoot.fromMap((map['boot']! as Map).cast<String, dynamic>())).input(),
      coalesce: map['coalesce'] == null ? null : (DomainDevicesInterfaceCoalesce.fromMap((map['coalesce']! as Map).cast<String, dynamic>())).input(),
      downScript: map['downScript'] == null ? null : (DomainDevicesInterfaceDownScript.fromMap((map['downScript']! as Map).cast<String, dynamic>())).input(),
      driver: map['driver'] == null ? null : (DomainDevicesInterfaceDriver.fromMap((map['driver']! as Map).cast<String, dynamic>())).input(),
      filterRef: map['filterRef'] == null ? null : (DomainDevicesInterfaceFilterRef.fromMap((map['filterRef']! as Map).cast<String, dynamic>())).input(),
      guest: map['guest'] == null ? null : (DomainDevicesInterfaceGuest.fromMap((map['guest']! as Map).cast<String, dynamic>())).input(),
      ips: map['ips'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterfaceIp>(map['ips']!, (value) => DomainDevicesInterfaceIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      link: map['link'] == null ? null : (DomainDevicesInterfaceLink.fromMap((map['link']! as Map).cast<String, dynamic>())).input(),
      mac: map['mac'] == null ? null : (DomainDevicesInterfaceMac.fromMap((map['mac']! as Map).cast<String, dynamic>())).input(),
      managed: map['managed'] == null ? null : (map['managed']! as bool).input(),
      model: map['model'] == null ? null : (DomainDevicesInterfaceModel.fromMap((map['model']! as Map).cast<String, dynamic>())).input(),
      mtu: map['mtu'] == null ? null : (DomainDevicesInterfaceMtu.fromMap((map['mtu']! as Map).cast<String, dynamic>())).input(),
      portForwards: map['portForwards'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterfacePortForward>(map['portForwards']!, (value) => DomainDevicesInterfacePortForward.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portOptions: map['portOptions'] == null ? null : (DomainDevicesInterfacePortOptions.fromMap((map['portOptions']! as Map).cast<String, dynamic>())).input(),
      rom: map['rom'] == null ? null : (DomainDevicesInterfaceRom.fromMap((map['rom']! as Map).cast<String, dynamic>())).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterfaceRoute>(map['routes']!, (value) => DomainDevicesInterfaceRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      script: map['script'] == null ? null : (DomainDevicesInterfaceScript.fromMap((map['script']! as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (DomainDevicesInterfaceSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (DomainDevicesInterfaceTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
      teaming: map['teaming'] == null ? null : (DomainDevicesInterfaceTeaming.fromMap((map['teaming']! as Map).cast<String, dynamic>())).input(),
      trustGuestRxFilters: map['trustGuestRxFilters'] == null ? null : (map['trustGuestRxFilters']! as String).input(),
      tune: map['tune'] == null ? null : (DomainDevicesInterfaceTune.fromMap((map['tune']! as Map).cast<String, dynamic>())).input(),
      virtualPort: map['virtualPort'] == null ? null : (DomainDevicesInterfaceVirtualPort.fromMap((map['virtualPort']! as Map).cast<String, dynamic>())).input(),
      vlan: map['vlan'] == null ? null : (DomainDevicesInterfaceVlan.fromMap((map['vlan']! as Map).cast<String, dynamic>())).input(),
      waitForIp: map['waitForIp'] == null ? null : (DomainDevicesInterfaceWaitForIp.fromMap((map['waitForIp']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

