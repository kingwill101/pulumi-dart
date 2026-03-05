import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_group_args.dart';
import 'virtual_machine_group_state.dart';
import 'virtual_machine_group_wsfc_domain_profile.dart';

/// Manages a Microsoft SQL Virtual Machine Group.
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
/// const exampleVirtualMachineGroup = new azure.mssql.VirtualMachineGroup("example", {
///     name: "examplegroup",
///     resourceGroupName: example.name,
///     location: example.location,
///     sqlImageOffer: "SQL2017-WS2016",
///     sqlImageSku: "Developer",
///     wsfcDomainProfile: {
///         fqdn: "testdomain.com",
///         clusterSubnetType: "SingleSubnet",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_machine_group = azure.mssql.VirtualMachineGroup("example",
///     name="examplegroup",
///     resource_group_name=example.name,
///     location=example.location,
///     sql_image_offer="SQL2017-WS2016",
///     sql_image_sku="Developer",
///     wsfc_domain_profile={
///         "fqdn": "testdomain.com",
///         "cluster_subnet_type": "SingleSubnet",
///     })
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
///     var exampleVirtualMachineGroup = new Azure.MSSql.VirtualMachineGroup("example", new()
///     {
///         Name = "examplegroup",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SqlImageOffer = "SQL2017-WS2016",
///         SqlImageSku = "Developer",
///         WsfcDomainProfile = new Azure.MSSql.Inputs.VirtualMachineGroupWsfcDomainProfileArgs
///         {
///             Fqdn = "testdomain.com",
///             ClusterSubnetType = "SingleSubnet",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
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
/// 		_, err = mssql.NewVirtualMachineGroup(ctx, "example", &mssql.VirtualMachineGroupArgs{
/// 			Name:              pulumi.String("examplegroup"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SqlImageOffer:     pulumi.String("SQL2017-WS2016"),
/// 			SqlImageSku:       pulumi.String("Developer"),
/// 			WsfcDomainProfile: &mssql.VirtualMachineGroupWsfcDomainProfileArgs{
/// 				Fqdn:              pulumi.String("testdomain.com"),
/// 				ClusterSubnetType: pulumi.String("SingleSubnet"),
/// 			},
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
/// import com.pulumi.azure.mssql.VirtualMachineGroup;
/// import com.pulumi.azure.mssql.VirtualMachineGroupArgs;
/// import com.pulumi.azure.mssql.inputs.VirtualMachineGroupWsfcDomainProfileArgs;
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
///         var exampleVirtualMachineGroup = new VirtualMachineGroup("exampleVirtualMachineGroup", VirtualMachineGroupArgs.builder()
///             .name("examplegroup")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sqlImageOffer("SQL2017-WS2016")
///             .sqlImageSku("Developer")
///             .wsfcDomainProfile(VirtualMachineGroupWsfcDomainProfileArgs.builder()
///                 .fqdn("testdomain.com")
///                 .clusterSubnetType("SingleSubnet")
///                 .build())
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
///   exampleVirtualMachineGroup:
///     type: azure:mssql:VirtualMachineGroup
///     name: example
///     properties:
///       name: examplegroup
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sqlImageOffer: SQL2017-WS2016
///       sqlImageSku: Developer
///       wsfcDomainProfile:
///         fqdn: testdomain.com
///         clusterSubnetType: SingleSubnet
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SqlVirtualMachine` - 2023-10-01
///
/// ## Import
///
/// Microsoft SQL Virtual Machine Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/virtualMachineGroup:VirtualMachineGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/vmgroup1
/// ```
class VirtualMachineGroup extends pulumi.CustomResource {
  /// The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sqlImageOffer;
  /// The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`.
  late final pulumi.Output<String> sqlImageSku;
  /// A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `wsfc_domain_profile` block as defined below.
  late final pulumi.Output<VirtualMachineGroupWsfcDomainProfile> wsfcDomainProfile;

  /// Creates a new [VirtualMachineGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineGroup]. {@macro pulumi_mssql_virtual_machine_group_virtual_machine_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineGroup(
    String name, {
    VirtualMachineGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/virtualMachineGroup:VirtualMachineGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sqlImageOffer = registerOutput<String>('sqlImageOffer');
    sqlImageSku = registerOutput<String>('sqlImageSku');
    tags = registerOutput<Map<String, String>?>('tags');
    wsfcDomainProfile = registerOutput<VirtualMachineGroupWsfcDomainProfile>('wsfcDomainProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineGroupWsfcDomainProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [VirtualMachineGroup] resource's state with the given [name] and [id].
  static VirtualMachineGroup get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineGroupState? state,
  }) {
    return VirtualMachineGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/virtualMachineGroup:VirtualMachineGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sqlImageOffer = registerOutput<String>('sqlImageOffer');
    sqlImageSku = registerOutput<String>('sqlImageSku');
    tags = registerOutput<Map<String, String>?>('tags');
    wsfcDomainProfile = registerOutput<VirtualMachineGroupWsfcDomainProfile>('wsfcDomainProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineGroupWsfcDomainProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
