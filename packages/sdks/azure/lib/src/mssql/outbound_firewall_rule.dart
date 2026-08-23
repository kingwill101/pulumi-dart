import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_firewall_rule_args.dart';
import 'outbound_firewall_rule_state.dart';

/// Allows you to manage an Azure SQL Outbound Firewall Rule.
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
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "mysqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
///     outboundNetworkRestrictionEnabled: true,
/// });
/// const exampleOutboundFirewallRule = new azure.mssql.OutboundFirewallRule("example", {
///     name: "sqlexamplefdqn.database.windows.net",
///     serverId: exampleServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_server = azure.mssql.Server("example",
///     name="mysqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd",
///     outbound_network_restriction_enabled=True)
/// example_outbound_firewall_rule = azure.mssql.OutboundFirewallRule("example",
///     name="sqlexamplefdqn.database.windows.net",
///     server_id=example_server.id)
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
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "mysqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///         OutboundNetworkRestrictionEnabled = true,
///     });
///
///     var exampleOutboundFirewallRule = new Azure.MSSql.OutboundFirewallRule("example", new()
///     {
///         Name = "sqlexamplefdqn.database.windows.net",
///         ServerId = exampleServer.Id,
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
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                              pulumi.String("mysqlserver"),
/// 			ResourceGroupName:                 example.Name,
/// 			Location:                          example.Location,
/// 			Version:                           pulumi.String("12.0"),
/// 			AdministratorLogin:                pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword:        pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 			OutboundNetworkRestrictionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewOutboundFirewallRule(ctx, "example", &mssql.OutboundFirewallRuleArgs{
/// 			Name:     pulumi.String("sqlexamplefdqn.database.windows.net"),
/// 			ServerId: exampleServer.ID(),
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
/// resource "azure_mssql_server" "example" {
///   name                                 = "mysqlserver"
///   resource_group_name                  = azure_core_resourcegroup.example.name
///   location                             = azure_core_resourcegroup.example.location
///   version                              = "12.0"
///   administrator_login                  = "4dm1n157r470r"
///   administrator_login_password         = "4-v3ry-53cr37-p455w0rd"
///   outbound_network_restriction_enabled = true
/// }
/// resource "azure_mssql_outboundfirewallrule" "example" {
///   name      = "sqlexamplefdqn.database.windows.net"
///   server_id = azure_mssql_server.example.id
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.OutboundFirewallRule;
/// import com.pulumi.azure.mssql.OutboundFirewallRuleArgs;
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
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("mysqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .outboundNetworkRestrictionEnabled(true)
///             .build());
///
///         var exampleOutboundFirewallRule = new OutboundFirewallRule("exampleOutboundFirewallRule", OutboundFirewallRuleArgs.builder()
///             .name("sqlexamplefdqn.database.windows.net")
///             .serverId(exampleServer.id())
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
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: mysqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///       outboundNetworkRestrictionEnabled: true
///   exampleOutboundFirewallRule:
///     type: azure:mssql:OutboundFirewallRule
///     name: example
///     properties:
///       name: sqlexamplefdqn.database.windows.net
///       serverId: ${exampleServer.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// SQL Outbound Firewall Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/outboundFirewallRule:OutboundFirewallRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/servers/myserver/outboundFirewallRules/fqdn1
/// ```
class OutboundFirewallRule extends pulumi.CustomResource {
  /// The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;

  /// Creates a new [OutboundFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundFirewallRule]. {@macro pulumi_mssql_outbound_firewall_rule_outbound_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundFirewallRule(
    String name, {
    OutboundFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/outboundFirewallRule:OutboundFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }

  /// Gets an existing [OutboundFirewallRule] resource's state with the given [name] and [id].
  static OutboundFirewallRule get(
    String name,
    pulumi.Input<String> id, {
    OutboundFirewallRuleState? state,
  }) {
    return OutboundFirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutboundFirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/outboundFirewallRule:OutboundFirewallRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }
}
