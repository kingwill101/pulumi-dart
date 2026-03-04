import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_manager_server_args.dart';
import 'virtual_machine_manager_server_state.dart';

/// Manages a System Center Virtual Machine Manager Server.
///
/// &gt; **Note:** By request of the service team the provider no longer automatically registering the `Microsoft.ScVmm` Resource Provider for this resource. To register it you can run `az provider register --namespace Microsoft.ScVmm`.
///
/// &gt; **Note:** This resource depends on an existing `System Center Virtual Machine Manager Host Machine`, `Arc Resource Bridge` and `Custom Location`. Installing and configuring these dependencies is outside the scope of this document. See [Virtual Machine Manager documentation](https://learn.microsoft.com/en-us/system-center/vmm/?view=sc-vmm-2022) and [Install VMM](https://learn.microsoft.com/en-us/system-center/vmm/install?view=sc-vmm-2022) for more details of `System Center Virtual Machine Manager Host Machine`. See [What is Azure Arc resource bridge](https://learn.microsoft.com/en-us/azure/azure-arc/resource-bridge/overview) and [Overview of Arc-enabled System Center Virtual Machine Manager](https://learn.microsoft.com/en-us/azure/azure-arc/system-center-virtual-machine-manager/overview) for more details of `Arc Resource Bridge/Appliance`. See [Create and manage custom locations on Azure Arc-enabled Kubernetes](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/custom-locations) for more details of `Custom Location`. If you encounter issues while configuring, we'd recommend opening a ticket with Microsoft Support.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualMachineManagerServer = new azure.systemcenter.VirtualMachineManagerServer("example", {
///     name: "example-scvmmms",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1",
///     fqdn: "example.labtest",
///     username: "testUser",
///     password: "H@Sh1CoR3!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_machine_manager_server = azure.systemcenter.VirtualMachineManagerServer("example",
///     name="example-scvmmms",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id="/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1",
///     fqdn="example.labtest",
///     username="testUser",
///     password="H@Sh1CoR3!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualMachineManagerServer = new Azure.SystemCenter.VirtualMachineManagerServer("example", new()
///     {
///         Name = "example-scvmmms",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1",
///         Fqdn = "example.labtest",
///         Username = "testUser",
///         Password = "H@Sh1CoR3!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/systemcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = systemcenter.NewVirtualMachineManagerServer(ctx, "example", &systemcenter.VirtualMachineManagerServerArgs{
/// 			Name:              pulumi.String("example-scvmmms"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1"),
/// 			Fqdn:              pulumi.String("example.labtest"),
/// 			Username:          pulumi.String("testUser"),
/// 			Password:          pulumi.String("H@Sh1CoR3!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerServer;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerServerArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualMachineManagerServer = new VirtualMachineManagerServer("exampleVirtualMachineManagerServer", VirtualMachineManagerServerArgs.builder()
///             .name("example-scvmmms")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId("/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1")
///             .fqdn("example.labtest")
///             .username("testUser")
///             .password("H@Sh1CoR3!")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleVirtualMachineManagerServer:
///     type: azure:systemcenter:VirtualMachineManagerServer
///     name: example
///     properties:
///       name: example-scvmmms
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1
///       fqdn: example.labtest
///       username: testUser
///       password: H@Sh1CoR3!
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ScVmm` - 2023-10-07
///
/// ## Import
///
/// System Center Virtual Machine Manager Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:systemcenter/virtualMachineManagerServer:VirtualMachineManagerServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ScVmm/vmmServers/vmmServer1
/// ```
class VirtualMachineManagerServer extends pulumi.CustomResource {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;

  /// The FQDN of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> fqdn;

  /// The Azure Region where the System Center Virtual Machine Manager Server should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The password that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> password;

  /// The port on which the System Center Virtual Machine Manager Server is listening. Possible values are between `1` and `65535`. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> port;

  /// The name of the Resource Group where the System Center Virtual Machine Manager should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Server.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The username that is used to connect to the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> username;

  /// Creates a new [VirtualMachineManagerServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineManagerServer]. {@macro pulumi_systemcenter_virtual_machine_manager_server_virtual_machine_manager_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineManagerServer(
    String name, {
    VirtualMachineManagerServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerServer:VirtualMachineManagerServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    fqdn = registerOutput<String>('fqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    port = registerOutput<int?>('port');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [VirtualMachineManagerServer] resource's state with the given [name] and [id].
  static VirtualMachineManagerServer get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineManagerServerState? state,
  }) {
    return VirtualMachineManagerServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineManagerServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerServer:VirtualMachineManagerServer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    fqdn = registerOutput<String>('fqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    port = registerOutput<int?>('port');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    username = registerOutput<String>('username');
  }
}
