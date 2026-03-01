import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'firewall_rule_state.dart';

/// Manages a Firewall Rule for a PostgreSQL Server
///
/// > **Note:** The `azure.postgresql.FirewallRule` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28, please use the `azure.postgresql.FlexibleServerFirewallRule` resource instead. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// ## Example Usage
///
/// ### Single IP Address)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "example-postgre-server",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "GP_Gen5_2",
///     version: "11",
///     sslEnforcementEnabled: true,
/// });
/// const exampleFirewallRule = new azure.postgresql.FirewallRule("example", {
///     name: "office",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     startIpAddress: "40.112.8.12",
///     endIpAddress: "40.112.8.12",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_server = azure.postgresql.Server("example",
///     name="example-postgre-server",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="GP_Gen5_2",
///     version="11",
///     ssl_enforcement_enabled=True)
/// example_firewall_rule = azure.postgresql.FirewallRule("example",
///     name="office",
///     resource_group_name=example.name,
///     server_name=example_server.name,
///     start_ip_address="40.112.8.12",
///     end_ip_address="40.112.8.12")
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "example-postgre-server",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "GP_Gen5_2",
///         Version = "11",
///         SslEnforcementEnabled = true,
///     });
///
///     var exampleFirewallRule = new Azure.PostgreSql.FirewallRule("example", new()
///     {
///         Name = "office",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
///         StartIpAddress = "40.112.8.12",
///         EndIpAddress = "40.112.8.12",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                  pulumi.String("example-postgre-server"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			SkuName:               pulumi.String("GP_Gen5_2"),
/// 			Version:               pulumi.String("11"),
/// 			SslEnforcementEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFirewallRule(ctx, "example", &postgresql.FirewallRuleArgs{
/// 			Name:              pulumi.String("office"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleServer.Name,
/// 			StartIpAddress:    pulumi.String("40.112.8.12"),
/// 			EndIpAddress:      pulumi.String("40.112.8.12"),
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
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
/// import com.pulumi.azure.postgresql.FirewallRule;
/// import com.pulumi.azure.postgresql.FirewallRuleArgs;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-postgre-server")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("GP_Gen5_2")
///             .version("11")
///             .sslEnforcementEnabled(true)
///             .build());
///
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("office")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
///             .startIpAddress("40.112.8.12")
///             .endIpAddress("40.112.8.12")
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
///       name: api-rg-pro
///       location: West Europe
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: example-postgre-server
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: GP_Gen5_2
///       version: '11'
///       sslEnforcementEnabled: true
///   exampleFirewallRule:
///     type: azure:postgresql:FirewallRule
///     name: example
///     properties:
///       name: office
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       startIpAddress: 40.112.8.12
///       endIpAddress: 40.112.8.12
/// ```
///
///
///
/// ### IP Range)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.postgresql.Server("example", {});
/// const exampleFirewallRule = new azure.postgresql.FirewallRule("example", {
///     name: "office",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     startIpAddress: "40.112.0.0",
///     endIpAddress: "40.112.255.255",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_server = azure.postgresql.Server("example")
/// example_firewall_rule = azure.postgresql.FirewallRule("example",
///     name="office",
///     resource_group_name=example.name,
///     server_name=example_server.name,
///     start_ip_address="40.112.0.0",
///     end_ip_address="40.112.255.255")
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example");
///
///     var exampleFirewallRule = new Azure.PostgreSql.FirewallRule("example", new()
///     {
///         Name = "office",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
///         StartIpAddress = "40.112.0.0",
///         EndIpAddress = "40.112.255.255",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFirewallRule(ctx, "example", &postgresql.FirewallRuleArgs{
/// 			Name:              pulumi.String("office"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleServer.Name,
/// 			StartIpAddress:    pulumi.String("40.112.0.0"),
/// 			EndIpAddress:      pulumi.String("40.112.255.255"),
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
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.FirewallRule;
/// import com.pulumi.azure.postgresql.FirewallRuleArgs;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer");
///
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("office")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
///             .startIpAddress("40.112.0.0")
///             .endIpAddress("40.112.255.255")
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
///       name: api-rg-pro
///       location: West Europe
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///   exampleFirewallRule:
///     type: azure:postgresql:FirewallRule
///     name: example
///     properties:
///       name: office
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       startIpAddress: 40.112.0.0
///       endIpAddress: 40.112.255.255
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
///
/// ## Import
///
/// PostgreSQL Firewall Rule's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/firewallRule:FirewallRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforPostgreSQL/servers/server1/firewallRules/rule1
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  late final pulumi.Output<String> endIpAddress;
  /// Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> startIpAddress;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_postgresql_firewall_rule_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.startIpAddress = registerOutput<String>('startIpAddress');
  }

  /// Gets an existing [FirewallRule] resource's state with the given [name] and [id].
  static FirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FirewallRuleState? state,
  }) {
    return FirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.startIpAddress = registerOutput<String>('startIpAddress');
  }
}
