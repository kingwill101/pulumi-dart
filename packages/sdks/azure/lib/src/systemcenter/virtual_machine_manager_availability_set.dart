import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_manager_availability_set_args.dart';
import 'virtual_machine_manager_availability_set_state.dart';

/// Manages a System Center Virtual Machine Manager Availability Set.
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
/// const exampleVirtualMachineManagerAvailabilitySet = new azure.systemcenter.VirtualMachineManagerAvailabilitySet("example", {
///     name: "example-scvmmas",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: exampleVirtualMachineManagerServer.customLocationId,
///     systemCenterVirtualMachineManagerServerId: exampleVirtualMachineManagerServer.id,
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
/// example_virtual_machine_manager_availability_set = azure.systemcenter.VirtualMachineManagerAvailabilitySet("example",
///     name="example-scvmmas",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id=example_virtual_machine_manager_server.custom_location_id,
///     system_center_virtual_machine_manager_server_id=example_virtual_machine_manager_server.id)
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
///     var exampleVirtualMachineManagerAvailabilitySet = new Azure.SystemCenter.VirtualMachineManagerAvailabilitySet("example", new()
///     {
///         Name = "example-scvmmas",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = exampleVirtualMachineManagerServer.CustomLocationId,
///         SystemCenterVirtualMachineManagerServerId = exampleVirtualMachineManagerServer.Id,
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
/// 		exampleVirtualMachineManagerServer, err := systemcenter.NewVirtualMachineManagerServer(ctx, "example", &systemcenter.VirtualMachineManagerServerArgs{
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
/// 		_, err = systemcenter.NewVirtualMachineManagerAvailabilitySet(ctx, "example", &systemcenter.VirtualMachineManagerAvailabilitySetArgs{
/// 			Name:              pulumi.String("example-scvmmas"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  exampleVirtualMachineManagerServer.CustomLocationId,
/// 			SystemCenterVirtualMachineManagerServerId: exampleVirtualMachineManagerServer.ID(),
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
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerAvailabilitySet;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerAvailabilitySetArgs;
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
///         var exampleVirtualMachineManagerAvailabilitySet = new VirtualMachineManagerAvailabilitySet("exampleVirtualMachineManagerAvailabilitySet", VirtualMachineManagerAvailabilitySetArgs.builder()
///             .name("example-scvmmas")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId(exampleVirtualMachineManagerServer.customLocationId())
///             .systemCenterVirtualMachineManagerServerId(exampleVirtualMachineManagerServer.id())
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
///   exampleVirtualMachineManagerAvailabilitySet:
///     type: azure:systemcenter:VirtualMachineManagerAvailabilitySet
///     name: example
///     properties:
///       name: example-scvmmas
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: ${exampleVirtualMachineManagerServer.customLocationId}
///       systemCenterVirtualMachineManagerServerId: ${exampleVirtualMachineManagerServer.id}
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
/// System Center Virtual Machine Manager Availability Sets can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:systemcenter/virtualMachineManagerAvailabilitySet:VirtualMachineManagerAvailabilitySet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ScVmm/availabilitySets/availabilitySet1
/// ```
class VirtualMachineManagerAvailabilitySet extends pulumi.CustomResource {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;

  /// The Azure Region where the System Center Virtual Machine Manager Availability Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the System Center Virtual Machine Availability Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> systemCenterVirtualMachineManagerServerId;

  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Availability Set.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [VirtualMachineManagerAvailabilitySet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineManagerAvailabilitySet]. {@macro pulumi_systemcenter_virtual_machine_manager_availability_set_virtual_machine_manager_availability_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineManagerAvailabilitySet(
    String name, {
    VirtualMachineManagerAvailabilitySetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerAvailabilitySet:VirtualMachineManagerAvailabilitySet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    systemCenterVirtualMachineManagerServerId = registerOutput<String>(
      'systemCenterVirtualMachineManagerServerId',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [VirtualMachineManagerAvailabilitySet] resource's state with the given [name] and [id].
  static VirtualMachineManagerAvailabilitySet get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineManagerAvailabilitySetState? state,
  }) {
    return VirtualMachineManagerAvailabilitySet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineManagerAvailabilitySet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerAvailabilitySet:VirtualMachineManagerAvailabilitySet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    systemCenterVirtualMachineManagerServerId = registerOutput<String>(
      'systemCenterVirtualMachineManagerServerId',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
