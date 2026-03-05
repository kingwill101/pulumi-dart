import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_interface_addresses_args.dart';
import 'get_domain_interface_addresses_result.dart';
import 'get_node_device_info_args.dart';
import 'get_node_device_info_result.dart';
import 'get_node_devices_args.dart';
import 'get_node_devices_result.dart';
import 'get_node_info_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// Queries IP addresses for a libvirt domain's network interfaces.
///
/// This data source uses libvirt's `virDomainInterfaceAddresses` API to retrieve IP address information from DHCP leases or the QEMU guest agent.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domain_interface_addresses_get_domain_interface_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainInterfaceAddressesResult> getDomainInterfaceAddresses(
  GetDomainInterfaceAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'libvirt:index/getDomainInterfaceAddresses:getDomainInterfaceAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return GetDomainInterfaceAddressesResult.fromMap(result);
}

/// Fetches detailed information about a specific libvirt host node device.
///
/// This data source provides comprehensive details about hardware devices, including PCI devices for passthrough, USB devices, network interfaces, and storage devices.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_node_device_info_get_node_device_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeDeviceInfoResult> getNodeDeviceInfo(
  GetNodeDeviceInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'libvirt:index/getNodeDeviceInfo:getNodeDeviceInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return GetNodeDeviceInfoResult.fromMap(result);
}

/// Enumerates devices available on the libvirt host node.
///
/// This data source lists devices by capability type, useful for discovering PCI devices for passthrough, USB devices, network interfaces, storage devices, and more.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as libvirt from "@pulumi/libvirt";
///
/// // List all devices
/// const all = libvirt.getNodeDevices({});
/// // List only PCI devices (useful for GPU passthrough)
/// const pci = libvirt.getNodeDevices({
///     capability: "pci",
/// });
/// // List only network interfaces
/// const network = libvirt.getNodeDevices({
///     capability: "net",
/// });
/// // List only USB devices
/// const usb = libvirt.getNodeDevices({
///     capability: "usb_device",
/// });
/// // List only storage devices
/// const storage = libvirt.getNodeDevices({
///     capability: "storage",
/// });
/// export const allDevices = all.then(all => all.devices);
/// export const pciDevices = pci.then(pci => pci.devices);
/// export const networkInterfaces = network.then(network => network.devices);
/// ```
/// ```python
/// import pulumi
/// import pulumi_libvirt as libvirt
///
/// # List all devices
/// all = libvirt.get_node_devices()
/// # List only PCI devices (useful for GPU passthrough)
/// pci = libvirt.get_node_devices(capability="pci")
/// # List only network interfaces
/// network = libvirt.get_node_devices(capability="net")
/// # List only USB devices
/// usb = libvirt.get_node_devices(capability="usb_device")
/// # List only storage devices
/// storage = libvirt.get_node_devices(capability="storage")
/// pulumi.export("allDevices", all.devices)
/// pulumi.export("pciDevices", pci.devices)
/// pulumi.export("networkInterfaces", network.devices)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Libvirt = Pulumi.Libvirt;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // List all devices
///     var all = Libvirt.GetNodeDevices.Invoke();
///
///     // List only PCI devices (useful for GPU passthrough)
///     var pci = Libvirt.GetNodeDevices.Invoke(new()
///     {
///         Capability = "pci",
///     });
///
///     // List only network interfaces
///     var network = Libvirt.GetNodeDevices.Invoke(new()
///     {
///         Capability = "net",
///     });
///
///     // List only USB devices
///     var usb = Libvirt.GetNodeDevices.Invoke(new()
///     {
///         Capability = "usb_device",
///     });
///
///     // List only storage devices
///     var storage = Libvirt.GetNodeDevices.Invoke(new()
///     {
///         Capability = "storage",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["allDevices"] = all.Apply(getNodeDevicesResult => getNodeDevicesResult.Devices),
///         ["pciDevices"] = pci.Apply(getNodeDevicesResult => getNodeDevicesResult.Devices),
///         ["networkInterfaces"] = network.Apply(getNodeDevicesResult => getNodeDevicesResult.Devices),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-terraform-provider/sdks/go/libvirt/libvirt"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// List all devices
/// 		all, err := libvirt.GetNodeDevices(ctx, &libvirt.GetNodeDevicesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// List only PCI devices (useful for GPU passthrough)
/// 		pci, err := libvirt.GetNodeDevices(ctx, &libvirt.GetNodeDevicesArgs{
/// 			Capability: pulumi.StringRef("pci"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// List only network interfaces
/// 		network, err := libvirt.GetNodeDevices(ctx, &libvirt.GetNodeDevicesArgs{
/// 			Capability: pulumi.StringRef("net"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// List only USB devices
/// 		_, err = libvirt.GetNodeDevices(ctx, &libvirt.GetNodeDevicesArgs{
/// 			Capability: pulumi.StringRef("usb_device"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// List only storage devices
/// 		_, err = libvirt.GetNodeDevices(ctx, &libvirt.GetNodeDevicesArgs{
/// 			Capability: pulumi.StringRef("storage"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("allDevices", all.Devices)
/// 		ctx.Export("pciDevices", pci.Devices)
/// 		ctx.Export("networkInterfaces", network.Devices)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.libvirt.LibvirtFunctions;
/// import com.pulumi.libvirt.inputs.GetNodeDevicesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // List all devices
///         final var all = LibvirtFunctions.getNodeDevices(GetNodeDevicesArgs.builder()
///             .build());
///
///         // List only PCI devices (useful for GPU passthrough)
///         final var pci = LibvirtFunctions.getNodeDevices(GetNodeDevicesArgs.builder()
///             .capability("pci")
///             .build());
///
///         // List only network interfaces
///         final var network = LibvirtFunctions.getNodeDevices(GetNodeDevicesArgs.builder()
///             .capability("net")
///             .build());
///
///         // List only USB devices
///         final var usb = LibvirtFunctions.getNodeDevices(GetNodeDevicesArgs.builder()
///             .capability("usb_device")
///             .build());
///
///         // List only storage devices
///         final var storage = LibvirtFunctions.getNodeDevices(GetNodeDevicesArgs.builder()
///             .capability("storage")
///             .build());
///
///         ctx.export("allDevices", all.devices());
///         ctx.export("pciDevices", pci.devices());
///         ctx.export("networkInterfaces", network.devices());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # List all devices
///   all:
///     fn::invoke:
///       function: libvirt:getNodeDevices
///       arguments: {}
///   # List only PCI devices (useful for GPU passthrough)
///   pci:
///     fn::invoke:
///       function: libvirt:getNodeDevices
///       arguments:
///         capability: pci
///   # List only network interfaces
///   network:
///     fn::invoke:
///       function: libvirt:getNodeDevices
///       arguments:
///         capability: net
///   # List only USB devices
///   usb:
///     fn::invoke:
///       function: libvirt:getNodeDevices
///       arguments:
///         capability: usb_device
///   # List only storage devices
///   storage:
///     fn::invoke:
///       function: libvirt:getNodeDevices
///       arguments:
///         capability: storage
/// outputs:
///   allDevices: ${all.devices}
///   pciDevices: ${pci.devices}
///   networkInterfaces: ${network.devices}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_node_devices_get_node_devices_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeDevicesResult> getNodeDevices(
  GetNodeDevicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'libvirt:index/getNodeDevices:getNodeDevices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return GetNodeDevicesResult.fromMap(result);
}

/// Fetches information about the libvirt host node.
///
/// This data source provides details about the host system's hardware capabilities, including CPU model, memory, and processor topology.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as libvirt from "@pulumi/libvirt";
///
/// const host = libvirt.getNodeInfo({});
/// export const hostCpuModel = host.then(host => host.cpuModel);
/// export const hostMemoryGb = host.then(host => host.memoryTotalKb / 1024 / 1024);
/// export const hostCpuTopology = {
///     sockets: host.then(host => host.cpuSockets),
///     coresPerSocket: host.then(host => host.cpuCoresPerSocket),
///     threadsPerCore: host.then(host => host.cpuThreadsPerCore),
///     totalCores: host.then(host => host.cpuCoresTotal),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_libvirt as libvirt
///
/// host = libvirt.get_node_info()
/// pulumi.export("hostCpuModel", host.cpu_model)
/// pulumi.export("hostMemoryGb", host.memory_total_kb / 1024 / 1024)
/// pulumi.export("hostCpuTopology", {
///     "sockets": host.cpu_sockets,
///     "coresPerSocket": host.cpu_cores_per_socket,
///     "threadsPerCore": host.cpu_threads_per_core,
///     "totalCores": host.cpu_cores_total,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Libvirt = Pulumi.Libvirt;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var host = Libvirt.GetNodeInfo.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["hostCpuModel"] = host.Apply(getNodeInfoResult => getNodeInfoResult.CpuModel),
///         ["hostMemoryGb"] = host.Apply(getNodeInfoResult => getNodeInfoResult.MemoryTotalKb) / 1024 / 1024,
///         ["hostCpuTopology"] =
///         {
///             { "sockets", host.Apply(getNodeInfoResult => getNodeInfoResult.CpuSockets) },
///             { "coresPerSocket", host.Apply(getNodeInfoResult => getNodeInfoResult.CpuCoresPerSocket) },
///             { "threadsPerCore", host.Apply(getNodeInfoResult => getNodeInfoResult.CpuThreadsPerCore) },
///             { "totalCores", host.Apply(getNodeInfoResult => getNodeInfoResult.CpuCoresTotal) },
///         },
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-terraform-provider/sdks/go/libvirt/libvirt"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		host, err := libvirt.GetNodeInfo(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hostCpuModel", host.CpuModel)
/// 		ctx.Export("hostMemoryGb", pulumi.Float64(host.MemoryTotalKb/1024/1024))
/// 		ctx.Export("hostCpuTopology", pulumi.Float64Map{
/// 			"sockets":        host.CpuSockets,
/// 			"coresPerSocket": host.CpuCoresPerSocket,
/// 			"threadsPerCore": host.CpuThreadsPerCore,
/// 			"totalCores":     host.CpuCoresTotal,
/// 		})
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.libvirt.LibvirtFunctions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var host = LibvirtFunctions.getNodeInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("hostCpuModel", host.cpuModel());
///         ctx.export("hostMemoryGb", host.memoryTotalKb() / 1024 / 1024);
///         ctx.export("hostCpuTopology", Map.ofEntries(
///             Map.entry("sockets", host.cpuSockets()),
///             Map.entry("coresPerSocket", host.cpuCoresPerSocket()),
///             Map.entry("threadsPerCore", host.cpuThreadsPerCore()),
///             Map.entry("totalCores", host.cpuCoresTotal())
///         ));
///     }
/// }
/// ```
/// [options] Invoke options controlling this call.
Future<GetNodeInfoResult> getNodeInfo({pulumi.InvokeOptions? options}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'libvirt:index/getNodeInfo:getNodeInfo',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
    registerPackageRequest: package_registration.registerPackageRequest,
  );
  return GetNodeInfoResult.fromMap(result);
}
