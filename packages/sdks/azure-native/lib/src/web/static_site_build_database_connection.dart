import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_build_database_connection_args.dart';
import 'system_data_response.dart';

/// Static Site Database Connection resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a database connection for a static site build
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticSiteBuildDatabaseConnection = new AzureNative.Web.StaticSiteBuildDatabaseConnection("staticSiteBuildDatabaseConnection", new()
///     {
///         ConnectionIdentity = "SystemAssigned",
///         ConnectionString = "AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;",
///         DatabaseConnectionName = "default",
///         EnvironmentName = "default",
///         Name = "testStaticSite0",
///         Region = "West US 2",
///         ResourceGroupName = "rg",
///         ResourceId = "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewStaticSiteBuildDatabaseConnection(ctx, "staticSiteBuildDatabaseConnection", &web.StaticSiteBuildDatabaseConnectionArgs{
/// 			ConnectionIdentity:     pulumi.String("SystemAssigned"),
/// 			ConnectionString:       pulumi.String("AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;"),
/// 			DatabaseConnectionName: pulumi.String("default"),
/// 			EnvironmentName:        pulumi.String("default"),
/// 			Name:                   pulumi.String("testStaticSite0"),
/// 			Region:                 pulumi.String("West US 2"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			ResourceId:             pulumi.String("/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_web_staticsitebuilddatabaseconnection" "staticSiteBuildDatabaseConnection" {
///   connection_identity      = "SystemAssigned"
///   connection_string        = "AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;"
///   database_connection_name = "default"
///   environment_name         = "default"
///   name                     = "testStaticSite0"
///   region                   = "West US 2"
///   resource_group_name      = "rg"
///   resource_id              = "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.StaticSiteBuildDatabaseConnection;
/// import com.pulumi.azurenative.web.StaticSiteBuildDatabaseConnectionArgs;
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
///         var staticSiteBuildDatabaseConnection = new StaticSiteBuildDatabaseConnection("staticSiteBuildDatabaseConnection", StaticSiteBuildDatabaseConnectionArgs.builder()
///             .connectionIdentity("SystemAssigned")
///             .connectionString("AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;")
///             .databaseConnectionName("default")
///             .environmentName("default")
///             .name("testStaticSite0")
///             .region("West US 2")
///             .resourceGroupName("rg")
///             .resourceId("/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const staticSiteBuildDatabaseConnection = new azure_native.web.StaticSiteBuildDatabaseConnection("staticSiteBuildDatabaseConnection", {
///     connectionIdentity: "SystemAssigned",
///     connectionString: "AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;",
///     databaseConnectionName: "default",
///     environmentName: "default",
///     name: "testStaticSite0",
///     region: "West US 2",
///     resourceGroupName: "rg",
///     resourceId: "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_site_build_database_connection = azure_native.web.StaticSiteBuildDatabaseConnection("staticSiteBuildDatabaseConnection",
///     connection_identity="SystemAssigned",
///     connection_string="AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;",
///     database_connection_name="default",
///     environment_name="default",
///     name="testStaticSite0",
///     region="West US 2",
///     resource_group_name="rg",
///     resource_id="/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName")
///
/// ```
///
/// ```yaml
/// resources:
///   staticSiteBuildDatabaseConnection:
///     type: azure-native:web:StaticSiteBuildDatabaseConnection
///     properties:
///       connectionIdentity: SystemAssigned
///       connectionString: AccountEndpoint=https://exampleDatabaseName.documents.azure.com:443/;Database=mydb;
///       databaseConnectionName: default
///       environmentName: default
///       name: testStaticSite0
///       region: West US 2
///       resourceGroupName: rg
///       resourceId: /subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/databaseRG/providers/Microsoft.DocumentDB/databaseAccounts/exampleDatabaseName
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:StaticSiteBuildDatabaseConnection default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/staticSites/{name}/builds/{environmentName}/databaseConnections/{databaseConnectionName}
/// ```
class StaticSiteBuildDatabaseConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A list of configuration files associated with this database connection.
  late final pulumi.Output<List<Map<String, dynamic>>> configurationFiles;
  /// If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  late final pulumi.Output<String?> connectionIdentity;
  /// The connection string to use to connect to the database.
  late final pulumi.Output<String?> connectionString;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The region of the database resource.
  late final pulumi.Output<String> region;
  /// The resource id of the database.
  late final pulumi.Output<String> resourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StaticSiteBuildDatabaseConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSiteBuildDatabaseConnection]. {@macro pulumi_web_static_site_build_database_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSiteBuildDatabaseConnection(
    String name, {
    StaticSiteBuildDatabaseConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:StaticSiteBuildDatabaseConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationFiles = registerOutput<List<Map<String, dynamic>>>('configurationFiles');
    connectionIdentity = registerOutput<String?>('connectionIdentity');
    connectionString = registerOutput<String?>('connectionString');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
