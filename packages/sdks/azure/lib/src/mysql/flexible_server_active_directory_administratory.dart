import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_active_directory_administratory_args.dart';
import 'flexible_server_active_directory_administratory_state.dart';

/// Manages an Active Directory administrator on a MySQL Flexible Server
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "exampleUAI",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example-mysqlfs",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "_admin_Terraform_892123456789312",
///     administratorPassword: "QAZwsx123",
///     skuName: "B_Standard_B1ms",
///     zone: "2",
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const exampleFlexibleServerActiveDirectoryAdministratory = new azure.mysql.FlexibleServerActiveDirectoryAdministratory("example", {
///     serverId: exampleFlexibleServer.id,
///     identityId: exampleUserAssignedIdentity.id,
///     login: "sqladmin",
///     objectId: current.then(current => current.clientId),
///     tenantId: current.then(current => current.tenantId),
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
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="exampleUAI",
///     resource_group_name=example.name,
///     location=example.location)
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example-mysqlfs",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="_admin_Terraform_892123456789312",
///     administrator_password="QAZwsx123",
///     sku_name="B_Standard_B1ms",
///     zone="2",
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// example_flexible_server_active_directory_administratory = azure.mysql.FlexibleServerActiveDirectoryAdministratory("example",
///     server_id=example_flexible_server.id,
///     identity_id=example_user_assigned_identity.id,
///     login="sqladmin",
///     object_id=current.client_id,
///     tenant_id=current.tenant_id)
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "exampleUAI",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example-mysqlfs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "_admin_Terraform_892123456789312",
///         AdministratorPassword = "QAZwsx123",
///         SkuName = "B_Standard_B1ms",
///         Zone = "2",
///         Identity = new Azure.MySql.Inputs.FlexibleServerIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var exampleFlexibleServerActiveDirectoryAdministratory = new Azure.MySql.FlexibleServerActiveDirectoryAdministratory("example", new()
///     {
///         ServerId = exampleFlexibleServer.Id,
///         IdentityId = exampleUserAssignedIdentity.Id,
///         Login = "sqladmin",
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
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
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("exampleUAI"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-mysqlfs"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("_admin_Terraform_892123456789312"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			SkuName:               pulumi.String("B_Standard_B1ms"),
/// 			Zone:                  pulumi.String("2"),
/// 			Identity: &mysql.FlexibleServerIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleServerActiveDirectoryAdministratory(ctx, "example", &mysql.FlexibleServerActiveDirectoryAdministratoryArgs{
/// 			ServerId:   exampleFlexibleServer.ID().ToIDOutput().ToStringOutput(),
/// 			IdentityId: exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
/// 			Login:      pulumi.String("sqladmin"),
/// 			ObjectId:   pulumi.String(current.ClientId),
/// 			TenantId:   pulumi.String(current.TenantId),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_mysql_flexibleserver" "example" {
///   name                   = "example-mysqlfs"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_login    = "_admin_Terraform_892123456789312"
///   administrator_password = "QAZwsx123"
///   sku_name               = "B_Standard_B1ms"
///   zone                   = "2"
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = [azure_authorization_userassignedidentity.example.id]
///   }
/// }
/// resource "azure_authorization_userassignedidentity" "example" {
///   name                = "exampleUAI"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_mysql_flexibleserveractivedirectoryadministratory" "example" {
///   server_id   = azure_mysql_flexibleserver.example.id
///   identity_id = azure_authorization_userassignedidentity.example.id
///   login       = "sqladmin"
///   object_id   = data.azure_core_getclientconfig.current.client_id
///   tenant_id   = data.azure_core_getclientconfig.current.tenant_id
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.mysql.inputs.FlexibleServerIdentityArgs;
/// import com.pulumi.azure.mysql.FlexibleServerActiveDirectoryAdministratory;
/// import com.pulumi.azure.mysql.FlexibleServerActiveDirectoryAdministratoryArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("exampleUAI")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-mysqlfs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("_admin_Terraform_892123456789312")
///             .administratorPassword("QAZwsx123")
///             .skuName("B_Standard_B1ms")
///             .zone("2")
///             .identity(FlexibleServerIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var exampleFlexibleServerActiveDirectoryAdministratory = new FlexibleServerActiveDirectoryAdministratory("exampleFlexibleServerActiveDirectoryAdministratory", FlexibleServerActiveDirectoryAdministratoryArgs.builder()
///             .serverId(exampleFlexibleServer.id())
///             .identityId(exampleUserAssignedIdentity.id())
///             .login("sqladmin")
///             .objectId(current.clientId())
///             .tenantId(current.tenantId())
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
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example-mysqlfs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: _admin_Terraform_892123456789312
///       administratorPassword: QAZwsx123
///       skuName: B_Standard_B1ms
///       zone: '2'
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: exampleUAI
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleFlexibleServerActiveDirectoryAdministratory:
///     type: azure:mysql:FlexibleServerActiveDirectoryAdministratory
///     name: example
///     properties:
///       serverId: ${exampleFlexibleServer.id}
///       identityId: ${exampleUserAssignedIdentity.id}
///       login: sqladmin
///       objectId: ${current.clientId}
///       tenantId: ${current.tenantId}
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
/// * `Microsoft.DBforMySQL` - 2023-12-30
///
/// ## Import
///
/// A MySQL Flexible Server Active Directory Administrator can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mysql/flexibleServerActiveDirectoryAdministratory:FlexibleServerActiveDirectoryAdministratory example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DBforMySQL/flexibleServers/server1/administrators/ActiveDirectory
/// ```
class FlexibleServerActiveDirectoryAdministratory extends pulumi.CustomResource {
  /// The resource ID of the identity used for AAD Authentication.
  late final pulumi.Output<String> identityId;
  /// The login name of the principal to set as the server administrator
  late final pulumi.Output<String> login;
  /// The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  late final pulumi.Output<String> objectId;
  /// The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;
  /// The Azure Tenant ID.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [FlexibleServerActiveDirectoryAdministratory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerActiveDirectoryAdministratory]. {@macro pulumi_mysql_flexible_server_active_directory_administratory_flexible_server_active_directory_administratory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerActiveDirectoryAdministratory(
    String name, {
    FlexibleServerActiveDirectoryAdministratoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServerActiveDirectoryAdministratory:FlexibleServerActiveDirectoryAdministratory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    identityId = registerOutput<String>('identityId');
    login = registerOutput<String>('login');
    objectId = registerOutput<String>('objectId');
    serverId = registerOutput<String>('serverId');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [FlexibleServerActiveDirectoryAdministratory] resource's state with the given [name] and [id].
  static FlexibleServerActiveDirectoryAdministratory get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerActiveDirectoryAdministratoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlexibleServerActiveDirectoryAdministratory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlexibleServerActiveDirectoryAdministratory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServerActiveDirectoryAdministratory:FlexibleServerActiveDirectoryAdministratory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identityId = registerOutput<String>('identityId');
    login = registerOutput<String>('login');
    objectId = registerOutput<String>('objectId');
    serverId = registerOutput<String>('serverId');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Creates a typed reference to an existing [FlexibleServerActiveDirectoryAdministratory] resource.
  FlexibleServerActiveDirectoryAdministratory.reference(String urn)
    : super(
        'azure:mysql/flexibleServerActiveDirectoryAdministratory:FlexibleServerActiveDirectoryAdministratory',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    identityId = registerOutput<String>('identityId');
    login = registerOutput<String>('login');
    objectId = registerOutput<String>('objectId');
    serverId = registerOutput<String>('serverId');
    tenantId = registerOutput<String>('tenantId');
  }
}
