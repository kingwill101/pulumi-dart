import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_mysql_association_args.dart';
import 'spring_cloud_app_mysql_association_state.dart';

/// Associates a Spring Cloud Application with a MySQL Database.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudAppMysqlAssociation` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example-fsserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "adminTerraform",
///     administratorPassword: "QAZwsx123",
///     skuName: "B_Standard_B1ms",
///     zone: "2",
/// });
/// const exampleFlexibleDatabase = new azure.mysql.FlexibleDatabase("example", {
///     name: "exampledb",
///     resourceGroupName: example.name,
///     serverName: exampleFlexibleServer.name,
///     charset: "utf8",
///     collation: "utf8_unicode_ci",
/// });
/// const exampleSpringCloudAppMysqlAssociation = new azure.appplatform.SpringCloudAppMysqlAssociation("example", {
///     name: "example-bind",
///     springCloudAppId: exampleSpringCloudApp.id,
///     mysqlServerId: exampleFlexibleServer.id,
///     databaseName: exampleFlexibleDatabase.name,
///     username: exampleFlexibleServer.administratorLogin,
///     password: exampleFlexibleServer.administratorLoginPassword,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name)
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example-fsserver",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="adminTerraform",
///     administrator_password="QAZwsx123",
///     sku_name="B_Standard_B1ms",
///     zone="2")
/// example_flexible_database = azure.mysql.FlexibleDatabase("example",
///     name="exampledb",
///     resource_group_name=example.name,
///     server_name=example_flexible_server.name,
///     charset="utf8",
///     collation="utf8_unicode_ci")
/// example_spring_cloud_app_mysql_association = azure.appplatform.SpringCloudAppMysqlAssociation("example",
///     name="example-bind",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     mysql_server_id=example_flexible_server.id,
///     database_name=example_flexible_database.name,
///     username=example_flexible_server.administrator_login,
///     password=example_flexible_server.administrator_login_password)
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///     });
///
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example-fsserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "adminTerraform",
///         AdministratorPassword = "QAZwsx123",
///         SkuName = "B_Standard_B1ms",
///         Zone = "2",
///     });
///
///     var exampleFlexibleDatabase = new Azure.MySql.FlexibleDatabase("example", new()
///     {
///         Name = "exampledb",
///         ResourceGroupName = example.Name,
///         ServerName = exampleFlexibleServer.Name,
///         Charset = "utf8",
///         Collation = "utf8_unicode_ci",
///     });
///
///     var exampleSpringCloudAppMysqlAssociation = new Azure.AppPlatform.SpringCloudAppMysqlAssociation("example", new()
///     {
///         Name = "example-bind",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         MysqlServerId = exampleFlexibleServer.Id,
///         DatabaseName = exampleFlexibleDatabase.Name,
///         Username = exampleFlexibleServer.AdministratorLogin,
///         Password = exampleFlexibleServer.AdministratorLoginPassword,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
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
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-fsserver"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			SkuName:               pulumi.String("B_Standard_B1ms"),
/// 			Zone:                  pulumi.String("2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleDatabase, err := mysql.NewFlexibleDatabase(ctx, "example", &mysql.FlexibleDatabaseArgs{
/// 			Name:              pulumi.String("exampledb"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleFlexibleServer.Name,
/// 			Charset:           pulumi.String("utf8"),
/// 			Collation:         pulumi.String("utf8_unicode_ci"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudAppMysqlAssociation(ctx, "example", &appplatform.SpringCloudAppMysqlAssociationArgs{
/// 			Name:             pulumi.String("example-bind"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID().ToIDOutput().ToStringOutput(),
/// 			MysqlServerId:    exampleFlexibleServer.ID().ToIDOutput().ToStringOutput(),
/// 			DatabaseName:     exampleFlexibleDatabase.Name,
/// 			Username:         exampleFlexibleServer.AdministratorLogin,
/// 			Password:         exampleFlexibleServer.AdministratorLoginPassword,
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
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example-springcloud"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_appplatform_springcloudapp" "example" {
///   name                = "example-springcloudapp"
///   resource_group_name = azure_core_resourcegroup.example.name
///   service_name        = azure_appplatform_springcloudservice.example.name
/// }
/// resource "azure_mysql_flexibleserver" "example" {
///   name                   = "example-fsserver"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_login    = "adminTerraform"
///   administrator_password = "QAZwsx123"
///   sku_name               = "B_Standard_B1ms"
///   zone                   = "2"
/// }
/// resource "azure_mysql_flexibledatabase" "example" {
///   name                = "exampledb"
///   resource_group_name = azure_core_resourcegroup.example.name
///   server_name         = azure_mysql_flexibleserver.example.name
///   charset             = "utf8"
///   collation           = "utf8_unicode_ci"
/// }
/// resource "azure_appplatform_springcloudappmysqlassociation" "example" {
///   name                = "example-bind"
///   spring_cloud_app_id = azure_appplatform_springcloudapp.example.id
///   mysql_server_id     = azure_mysql_flexibleserver.example.id
///   database_name       = azure_mysql_flexibledatabase.example.name
///   username            = azure_mysql_flexibleserver.example.administrator_login
///   password            = azure_mysql_flexibleserver.example.administratorLoginPassword
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.mysql.FlexibleDatabase;
/// import com.pulumi.azure.mysql.FlexibleDatabaseArgs;
/// import com.pulumi.azure.appplatform.SpringCloudAppMysqlAssociation;
/// import com.pulumi.azure.appplatform.SpringCloudAppMysqlAssociationArgs;
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
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-fsserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("adminTerraform")
///             .administratorPassword("QAZwsx123")
///             .skuName("B_Standard_B1ms")
///             .zone("2")
///             .build());
///
///         var exampleFlexibleDatabase = new FlexibleDatabase("exampleFlexibleDatabase", FlexibleDatabaseArgs.builder()
///             .name("exampledb")
///             .resourceGroupName(example.name())
///             .serverName(exampleFlexibleServer.name())
///             .charset("utf8")
///             .collation("utf8_unicode_ci")
///             .build());
///
///         var exampleSpringCloudAppMysqlAssociation = new SpringCloudAppMysqlAssociation("exampleSpringCloudAppMysqlAssociation", SpringCloudAppMysqlAssociationArgs.builder()
///             .name("example-bind")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .mysqlServerId(exampleFlexibleServer.id())
///             .databaseName(exampleFlexibleDatabase.name())
///             .username(exampleFlexibleServer.administratorLogin())
///             .password(exampleFlexibleServer.administratorLoginPassword())
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///   exampleFlexibleServer:
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example-fsserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: adminTerraform
///       administratorPassword: QAZwsx123
///       skuName: B_Standard_B1ms
///       zone: '2'
///   exampleFlexibleDatabase:
///     type: azure:mysql:FlexibleDatabase
///     name: example
///     properties:
///       name: exampledb
///       resourceGroupName: ${example.name}
///       serverName: ${exampleFlexibleServer.name}
///       charset: utf8
///       collation: utf8_unicode_ci
///   exampleSpringCloudAppMysqlAssociation:
///     type: azure:appplatform:SpringCloudAppMysqlAssociation
///     name: example
///     properties:
///       name: example-bind
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       mysqlServerId: ${exampleFlexibleServer.id}
///       databaseName: ${exampleFlexibleDatabase.name}
///       username: ${exampleFlexibleServer.administratorLogin}
///       password: ${exampleFlexibleServer.administratorLoginPassword}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Application MySQL Association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudAppMysqlAssociation:SpringCloudAppMysqlAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.AppPlatform/spring/service1/apps/app1/bindings/bind1
/// ```
class SpringCloudAppMysqlAssociation extends pulumi.CustomResource {
  /// Specifies the name of the MySQL Database which the Spring Cloud App should be associated with.
  late final pulumi.Output<String> databaseName;
  /// Specifies the ID of the MySQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> mysqlServerId;
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the password which should be used when connecting to the MySQL Database from the Spring Cloud App.
  late final pulumi.Output<String> password;
  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudAppId;
  /// Specifies the username which should be used when connecting to the MySQL Database from the Spring Cloud App.
  late final pulumi.Output<String> username;

  /// Creates a new [SpringCloudAppMysqlAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudAppMysqlAssociation]. {@macro pulumi_appplatform_spring_cloud_app_mysql_association_spring_cloud_app_mysql_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudAppMysqlAssociation(
    String name, {
    SpringCloudAppMysqlAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppMysqlAssociation:SpringCloudAppMysqlAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    databaseName = registerOutput<String>('databaseName');
    mysqlServerId = registerOutput<String>('mysqlServerId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    springCloudAppId = registerOutput<String>('springCloudAppId');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [SpringCloudAppMysqlAssociation] resource's state with the given [name] and [id].
  static SpringCloudAppMysqlAssociation get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudAppMysqlAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudAppMysqlAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudAppMysqlAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppMysqlAssociation:SpringCloudAppMysqlAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    databaseName = registerOutput<String>('databaseName');
    mysqlServerId = registerOutput<String>('mysqlServerId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    springCloudAppId = registerOutput<String>('springCloudAppId');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [SpringCloudAppMysqlAssociation] resource.
  SpringCloudAppMysqlAssociation.reference(String urn)
    : super(
        'azure:appplatform/springCloudAppMysqlAssociation:SpringCloudAppMysqlAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    databaseName = registerOutput<String>('databaseName');
    mysqlServerId = registerOutput<String>('mysqlServerId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password', isSecret: true);
    springCloudAppId = registerOutput<String>('springCloudAppId');
    username = registerOutput<String>('username');
  }
}
