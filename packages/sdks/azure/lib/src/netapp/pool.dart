import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_state.dart';

/// Manages a Pool within a NetApp Account.
///
/// ## NetApp Pool Usage
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
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "example-netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: "example-netapppool",
///     accountName: exampleAccount.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     serviceLevel: "Premium",
///     sizeInTb: 4,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.netapp.Account("example",
///     name="example-netappaccount",
///     location=example.location,
///     resource_group_name=example.name)
/// example_pool = azure.netapp.Pool("example",
///     name="example-netapppool",
///     account_name=example_account.name,
///     location=example.location,
///     resource_group_name=example.name,
///     service_level="Premium",
///     size_in_tb=4)
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
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "example-netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = "example-netapppool",
///         AccountName = exampleAccount.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServiceLevel = "Premium",
///         SizeInTb = 4,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
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
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.String("example-netapppool"),
/// 			AccountName:       exampleAccount.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ServiceLevel:      pulumi.String("Premium"),
/// 			SizeInTb:          pulumi.Int(4),
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
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("example-netapppool")
///             .accountName(exampleAccount.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .serviceLevel("Premium")
///             .sizeInTb(4)
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
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: example-netapppool
///       accountName: ${exampleAccount.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       serviceLevel: Premium
///       sizeInTb: 4
/// ```
///
///
/// ## NetApp Pool with Flexible Service Level Usage
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
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "example-netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: "example-netapppool",
///     accountName: exampleAccount.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     serviceLevel: "Flexible",
///     sizeInTb: 4,
///     qosType: "Manual",
///     customThroughputMibps: 256,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.netapp.Account("example",
///     name="example-netappaccount",
///     location=example.location,
///     resource_group_name=example.name)
/// example_pool = azure.netapp.Pool("example",
///     name="example-netapppool",
///     account_name=example_account.name,
///     location=example.location,
///     resource_group_name=example.name,
///     service_level="Flexible",
///     size_in_tb=4,
///     qos_type="Manual",
///     custom_throughput_mibps=256)
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
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "example-netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = "example-netapppool",
///         AccountName = exampleAccount.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServiceLevel = "Flexible",
///         SizeInTb = 4,
///         QosType = "Manual",
///         CustomThroughputMibps = 256,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
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
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:                  pulumi.String("example-netapppool"),
/// 			AccountName:           exampleAccount.Name,
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ServiceLevel:          pulumi.String("Flexible"),
/// 			SizeInTb:              pulumi.Int(4),
/// 			QosType:               pulumi.String("Manual"),
/// 			CustomThroughputMibps: pulumi.Int(256),
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
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("example-netapppool")
///             .accountName(exampleAccount.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .serviceLevel("Flexible")
///             .sizeInTb(4)
///             .qosType("Manual")
///             .customThroughputMibps(256)
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
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: example-netapppool
///       accountName: ${exampleAccount.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       serviceLevel: Flexible
///       sizeInTb: 4
///       qosType: Manual
///       customThroughputMibps: 256
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
///
/// ## Import
///
/// NetApp Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/pool:Pool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
/// ```
class Pool extends pulumi.CustomResource {
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;

  /// Whether the NetApp Pool can hold cool access enabled volumes. Defaults to `false`.
  ///
  /// &gt; **Note:** Disabling `cool_access_enabled` is not allowed and forces a new resource to be created.
  late final pulumi.Output<bool?> coolAccessEnabled;

  /// The custom throughput for the pool in MiB/s. Minimum value is `128`. This field can only be set when `service_level` is set to `Flexible` and `qos_type` is set to `Manual`.
  late final pulumi.Output<int?> customThroughputMibps;

  /// The encryption type of the pool. Valid values include `Single`, and `Double`. Defaults to `Single`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> encryptionType;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the NetApp Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// QoS Type of the pool. Valid values include `Auto` or `Manual`. Defaults to `Auto`.
  late final pulumi.Output<String?> qosType;

  /// The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The service level of the file system. Valid values include `Premium`, `Standard`, `Ultra`, and `Flexible`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceLevel;

  /// Provisioned size of the pool in TB. Value must be between `1` and `2048`.
  ///
  /// &gt; **Note:** `2` TB capacity pool sizing is currently in preview. You can only take advantage of the `2` TB minimum if all the volumes in the capacity pool are using `Standard` network features. If any volume is using `Basic` network features, the minimum size is `4` TB. Please see the product [documentation](https://learn.microsoft.com/azure/azure-netapp-files/azure-netapp-files-set-up-capacity-pool) for more information.
  ///
  /// &gt; **Note:** The maximum `size_in_tb` is goverened by regional quotas. You may request additional capacity from Azure, currently up to `2048`.
  late final pulumi.Output<int> sizeInTb;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_netapp_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:netapp/pool:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accountName = registerOutput<String>('accountName');
    coolAccessEnabled = registerOutput<bool?>('coolAccessEnabled');
    customThroughputMibps = registerOutput<int?>('customThroughputMibps');
    encryptionType = registerOutput<String?>('encryptionType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    qosType = registerOutput<String?>('qosType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceLevel = registerOutput<String>('serviceLevel');
    sizeInTb = registerOutput<int>('sizeInTb');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Pool] resource's state with the given [name] and [id].
  static Pool get(String name, pulumi.Input<String> id, {PoolState? state}) {
    return Pool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:netapp/pool:Pool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String>('accountName');
    coolAccessEnabled = registerOutput<bool?>('coolAccessEnabled');
    customThroughputMibps = registerOutput<int?>('customThroughputMibps');
    encryptionType = registerOutput<String?>('encryptionType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    qosType = registerOutput<String?>('qosType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceLevel = registerOutput<String>('serviceLevel');
    sizeInTb = registerOutput<int>('sizeInTb');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
