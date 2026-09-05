import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_firewall_rule_args.dart';
import 'flexible_server_firewall_rule_state.dart';

/// Manages a PostgreSQL Flexible Server Firewall Rule.
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
/// const exampleFlexibleServer = new azure.postgresql.FlexibleServer("example", {
///     name: "example-psqlflexibleserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12",
///     administratorLogin: "psqladmin",
///     administratorPassword: "H@Sh1CoR3!",
///     storageMb: 32768,
///     skuName: "GP_Standard_D4s_v3",
/// });
/// const exampleFlexibleServerFirewallRule = new azure.postgresql.FlexibleServerFirewallRule("example", {
///     name: "example-fw",
///     serverId: exampleFlexibleServer.id,
///     startIpAddress: "122.122.0.0",
///     endIpAddress: "122.122.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_flexible_server = azure.postgresql.FlexibleServer("example",
///     name="example-psqlflexibleserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12",
///     administrator_login="psqladmin",
///     administrator_password="H@Sh1CoR3!",
///     storage_mb=32768,
///     sku_name="GP_Standard_D4s_v3")
/// example_flexible_server_firewall_rule = azure.postgresql.FlexibleServerFirewallRule("example",
///     name="example-fw",
///     server_id=example_flexible_server.id,
///     start_ip_address="122.122.0.0",
///     end_ip_address="122.122.0.0")
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
///     var exampleFlexibleServer = new Azure.PostgreSql.FlexibleServer("example", new()
///     {
///         Name = "example-psqlflexibleserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12",
///         AdministratorLogin = "psqladmin",
///         AdministratorPassword = "H@Sh1CoR3!",
///         StorageMb = 32768,
///         SkuName = "GP_Standard_D4s_v3",
///     });
///
///     var exampleFlexibleServerFirewallRule = new Azure.PostgreSql.FlexibleServerFirewallRule("example", new()
///     {
///         Name = "example-fw",
///         ServerId = exampleFlexibleServer.Id,
///         StartIpAddress = "122.122.0.0",
///         EndIpAddress = "122.122.0.0",
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := postgresql.NewFlexibleServer(ctx, "example", &postgresql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-psqlflexibleserver"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			Version:               pulumi.String("12"),
/// 			AdministratorLogin:    pulumi.String("psqladmin"),
/// 			AdministratorPassword: pulumi.String("H@Sh1CoR3!"),
/// 			StorageMb:             pulumi.Int(32768),
/// 			SkuName:               pulumi.String("GP_Standard_D4s_v3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFlexibleServerFirewallRule(ctx, "example", &postgresql.FlexibleServerFirewallRuleArgs{
/// 			Name:           pulumi.String("example-fw"),
/// 			ServerId:       exampleFlexibleServer.ID().ToIDOutput().ToStringOutput(),
/// 			StartIpAddress: pulumi.String("122.122.0.0"),
/// 			EndIpAddress:   pulumi.String("122.122.0.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_postgresql_flexibleserver" "example" {
///   name                   = "example-psqlflexibleserver"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   version                = "12"
///   administrator_login    = "psqladmin"
///   administrator_password = "H@Sh1CoR3!"
///   storage_mb             = 32768
///   sku_name               = "GP_Standard_D4s_v3"
/// }
/// resource "azure_postgresql_flexibleserverfirewallrule" "example" {
///   name             = "example-fw"
///   server_id        = azure_postgresql_flexibleserver.example.id
///   start_ip_address = "122.122.0.0"
///   end_ip_address   = "122.122.0.0"
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
/// import com.pulumi.azure.postgresql.FlexibleServer;
/// import com.pulumi.azure.postgresql.FlexibleServerArgs;
/// import com.pulumi.azure.postgresql.FlexibleServerFirewallRule;
/// import com.pulumi.azure.postgresql.FlexibleServerFirewallRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-psqlflexibleserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12")
///             .administratorLogin("psqladmin")
///             .administratorPassword("H@Sh1CoR3!")
///             .storageMb(32768)
///             .skuName("GP_Standard_D4s_v3")
///             .build());
///
///         var exampleFlexibleServerFirewallRule = new FlexibleServerFirewallRule("exampleFlexibleServerFirewallRule", FlexibleServerFirewallRuleArgs.builder()
///             .name("example-fw")
///             .serverId(exampleFlexibleServer.id())
///             .startIpAddress("122.122.0.0")
///             .endIpAddress("122.122.0.0")
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
///   exampleFlexibleServer:
///     type: azure:postgresql:FlexibleServer
///     name: example
///     properties:
///       name: example-psqlflexibleserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12'
///       administratorLogin: psqladmin
///       administratorPassword: H@Sh1CoR3!
///       storageMb: 32768
///       skuName: GP_Standard_D4s_v3
///   exampleFlexibleServerFirewallRule:
///     type: azure:postgresql:FlexibleServerFirewallRule
///     name: example
///     properties:
///       name: example-fw
///       serverId: ${exampleFlexibleServer.id}
///       startIpAddress: 122.122.0.0
///       endIpAddress: 122.122.0.0
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2025-08-01
///
/// ## Import
///
/// PostgreSQL Flexible Server Firewall Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServerFirewallRule:FlexibleServerFirewallRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServer1/firewallRules/firewallRule1
/// ```
class FlexibleServerFirewallRule extends pulumi.CustomResource {
  /// The IPv4 Address defining the end of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  late final pulumi.Output<String> endIpAddress;
  /// The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  late final pulumi.Output<String> name;
  /// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  late final pulumi.Output<String> serverId;
  /// The IPv4 Address defining the start of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  late final pulumi.Output<String> startIpAddress;

  /// Creates a new [FlexibleServerFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerFirewallRule]. {@macro pulumi_postgresql_flexible_server_firewall_rule_flexible_server_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerFirewallRule(
    String name, {
    FlexibleServerFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerFirewallRule:FlexibleServerFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
    startIpAddress = registerOutput<String>('startIpAddress');
  }

  /// Gets an existing [FlexibleServerFirewallRule] resource's state with the given [name] and [id].
  static FlexibleServerFirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerFirewallRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlexibleServerFirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlexibleServerFirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerFirewallRule:FlexibleServerFirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
    startIpAddress = registerOutput<String>('startIpAddress');
  }

  /// Creates a typed reference to an existing [FlexibleServerFirewallRule] resource.
  FlexibleServerFirewallRule.reference(String urn)
    : super(
        'azure:postgresql/flexibleServerFirewallRule:FlexibleServerFirewallRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
    startIpAddress = registerOutput<String>('startIpAddress');
  }
}
