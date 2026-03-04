import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_dns_alias_args.dart';
import 'server_dns_alias_state.dart';

/// Manages a MS SQL Server DNS Alias.
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
///     name: "example-sqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "AdminPassword123!",
/// });
/// const exampleServerDnsAlias = new azure.mssql.ServerDnsAlias("example", {
///     name: "example-dns-alias",
///     mssqlServerId: exampleServer.id,
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
///     name="example-sqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="AdminPassword123!")
/// example_server_dns_alias = azure.mssql.ServerDnsAlias("example",
///     name="example-dns-alias",
///     mssql_server_id=example_server.id)
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
///         Name = "example-sqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "AdminPassword123!",
///     });
///
///     var exampleServerDnsAlias = new Azure.MSSql.ServerDnsAlias("example", new()
///     {
///         Name = "example-dns-alias",
///         MssqlServerId = exampleServer.Id,
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
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("AdminPassword123!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServerDnsAlias(ctx, "example", &mssql.ServerDnsAliasArgs{
/// 			Name:          pulumi.String("example-dns-alias"),
/// 			MssqlServerId: exampleServer.ID(),
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.ServerDnsAlias;
/// import com.pulumi.azure.mssql.ServerDnsAliasArgs;
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
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-sqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("AdminPassword123!")
///             .build());
///
///         var exampleServerDnsAlias = new ServerDnsAlias("exampleServerDnsAlias", ServerDnsAliasArgs.builder()
///             .name("example-dns-alias")
///             .mssqlServerId(exampleServer.id())
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
///       name: example-sqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: AdminPassword123!
///   exampleServerDnsAlias:
///     type: azure:mssql:ServerDnsAlias
///     name: example
///     properties:
///       name: example-dns-alias
///       mssqlServerId: ${exampleServer.id}
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
/// MSSQL Server DNS Aliass can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/serverDnsAlias:ServerDnsAlias example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/dnsAliases/default
/// ```
class ServerDnsAlias extends pulumi.CustomResource {
  /// The fully qualified DNS record for alias.
  late final pulumi.Output<String> dnsRecord;

  /// The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
  late final pulumi.Output<String> mssqlServerId;

  /// The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [ServerDnsAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerDnsAlias]. {@macro pulumi_mssql_server_dns_alias_server_dns_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerDnsAlias(
    String name, {
    ServerDnsAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/serverDnsAlias:ServerDnsAlias',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dnsRecord = registerOutput<String>('dnsRecord');
    mssqlServerId = registerOutput<String>('mssqlServerId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ServerDnsAlias] resource's state with the given [name] and [id].
  static ServerDnsAlias get(
    String name,
    pulumi.Input<String> id, {
    ServerDnsAliasState? state,
  }) {
    return ServerDnsAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerDnsAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/serverDnsAlias:ServerDnsAlias',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dnsRecord = registerOutput<String>('dnsRecord');
    mssqlServerId = registerOutput<String>('mssqlServerId');
    this.name = registerOutput<String>('name');
  }
}
