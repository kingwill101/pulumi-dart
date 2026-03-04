import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_administrator_args.dart';
import 'active_directory_administrator_state.dart';

/// Allows you to set a user or group as the AD administrator for an PostgreSQL server in Azure
///
/// &gt; **Note:** The `azure.postgresql.ActiveDirectoryAdministrator` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28, please use the `azure.postgresql.FlexibleServerActiveDirectoryAdministrator` resource instead. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "example-psqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "9.6",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
///     skuName: "GP_Gen5_2",
///     sslEnforcementEnabled: true,
/// });
/// const exampleActiveDirectoryAdministrator = new azure.postgresql.ActiveDirectoryAdministrator("example", {
///     serverName: exampleServer.name,
///     resourceGroupName: example.name,
///     login: "sqladmin",
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_server = azure.postgresql.Server("example",
///     name="example-psqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="9.6",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd",
///     sku_name="GP_Gen5_2",
///     ssl_enforcement_enabled=True)
/// example_active_directory_administrator = azure.postgresql.ActiveDirectoryAdministrator("example",
///     server_name=example_server.name,
///     resource_group_name=example.name,
///     login="sqladmin",
///     tenant_id=current.tenant_id,
///     object_id=current.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "example-psqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "9.6",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///         SkuName = "GP_Gen5_2",
///         SslEnforcementEnabled = true,
///     });
///
///     var exampleActiveDirectoryAdministrator = new Azure.PostgreSql.ActiveDirectoryAdministrator("example", new()
///     {
///         ServerName = exampleServer.Name,
///         ResourceGroupName = example.Name,
///         Login = "sqladmin",
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
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
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                       pulumi.String("example-psqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("9.6"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 			SkuName:                    pulumi.String("GP_Gen5_2"),
/// 			SslEnforcementEnabled:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewActiveDirectoryAdministrator(ctx, "example", &postgresql.ActiveDirectoryAdministratorArgs{
/// 			ServerName:        exampleServer.Name,
/// 			ResourceGroupName: example.Name,
/// 			Login:             pulumi.String("sqladmin"),
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			ObjectId:          pulumi.String(current.ObjectId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
/// import com.pulumi.azure.postgresql.ActiveDirectoryAdministrator;
/// import com.pulumi.azure.postgresql.ActiveDirectoryAdministratorArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-psqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("9.6")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .skuName("GP_Gen5_2")
///             .sslEnforcementEnabled(true)
///             .build());
///
///         var exampleActiveDirectoryAdministrator = new ActiveDirectoryAdministrator("exampleActiveDirectoryAdministrator", ActiveDirectoryAdministratorArgs.builder()
///             .serverName(exampleServer.name())
///             .resourceGroupName(example.name())
///             .login("sqladmin")
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
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
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: example-psqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '9.6'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///       skuName: GP_Gen5_2
///       sslEnforcementEnabled: true
///   exampleActiveDirectoryAdministrator:
///     type: azure:postgresql:ActiveDirectoryAdministrator
///     name: example
///     properties:
///       serverName: ${exampleServer.name}
///       resourceGroupName: ${example.name}
///       login: sqladmin
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
///
/// ## Import
///
/// A PostgreSQL Active Directory Administrator can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/activeDirectoryAdministrator:ActiveDirectoryAdministrator administrator /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.DBforPostgreSQL/servers/myserver
/// ```
class ActiveDirectoryAdministrator extends pulumi.CustomResource {
  /// The login name of the principal to set as the server administrator
  late final pulumi.Output<String> login;

  /// The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  late final pulumi.Output<String> objectId;

  /// The name of the resource group for the PostgreSQL server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The name of the PostgreSQL Server on which to set the administrator. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;

  /// The Azure Tenant ID
  late final pulumi.Output<String> tenantId;

  /// Creates a new [ActiveDirectoryAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActiveDirectoryAdministrator]. {@macro pulumi_postgresql_active_directory_administrator_active_directory_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActiveDirectoryAdministrator(
    String name, {
    ActiveDirectoryAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:postgresql/activeDirectoryAdministrator:ActiveDirectoryAdministrator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    login = registerOutput<String>('login');
    objectId = registerOutput<String>('objectId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [ActiveDirectoryAdministrator] resource's state with the given [name] and [id].
  static ActiveDirectoryAdministrator get(
    String name,
    pulumi.Input<String> id, {
    ActiveDirectoryAdministratorState? state,
  }) {
    return ActiveDirectoryAdministrator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ActiveDirectoryAdministrator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:postgresql/activeDirectoryAdministrator:ActiveDirectoryAdministrator',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    login = registerOutput<String>('login');
    objectId = registerOutput<String>('objectId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
    tenantId = registerOutput<String>('tenantId');
  }
}
