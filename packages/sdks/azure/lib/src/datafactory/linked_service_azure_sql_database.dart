import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_sql_database_args.dart';
import 'linked_service_azure_sql_database_key_vault_connection_string.dart';
import 'linked_service_azure_sql_database_key_vault_password.dart';
import 'linked_service_azure_sql_database_state.dart';

/// Manages a Linked Service (connection) between Azure SQL Database and Azure Data Factory.
///
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
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceAzureSqlDatabase = new azure.datafactory.LinkedServiceAzureSqlDatabase("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_azure_sql_database = azure.datafactory.LinkedServiceAzureSqlDatabase("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30")
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
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedServiceAzureSqlDatabase = new Azure.DataFactory.LinkedServiceAzureSqlDatabase("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
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
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceAzureSqlDatabase(ctx, "example", &datafactory.LinkedServiceAzureSqlDatabaseArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectionString: pulumi.String("data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30"),
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
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_datafactory_linkedserviceazuresqldatabase" "example" {
///   name              = "example"
///   data_factory_id   = azure_datafactory_factory.example.id
///   connection_string = "data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30"
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureSqlDatabase;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureSqlDatabaseArgs;
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
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceAzureSqlDatabase = new LinkedServiceAzureSqlDatabase("exampleLinkedServiceAzureSqlDatabase", LinkedServiceAzureSqlDatabaseArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30")
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceAzureSqlDatabase:
///     type: azure:datafactory:LinkedServiceAzureSqlDatabase
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: data source=serverhostname;initial catalog=master;user id=testUser;Password=test;integrated security=False;encrypt=True;connection timeout=30
/// ```
///
///
/// ## Import
///
/// Data Factory Azure SQL Database Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceAzureSqlDatabase:LinkedServiceAzureSqlDatabase example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceAzureSqlDatabase extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service Azure SQL Database.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service Azure SQL Database.
  late final pulumi.Output<List<String>?> annotations;
  /// The connection string in which to authenticate with Azure SQL Database. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  late final pulumi.Output<String?> connectionString;
  /// The name of a User-assigned Managed Identity. Use this argument to authenticate against the linked resource using a User-assigned Managed Identity.
  late final pulumi.Output<String?> credentialName;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service Azure SQL Database.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// A `keyVaultConnectionString` block as defined below. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  late final pulumi.Output<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString?> keyVaultConnectionString;
  /// A `keyVaultPassword` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  late final pulumi.Output<LinkedServiceAzureSqlDatabaseKeyVaultPassword?> keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service Azure SQL Database.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The service principal id in which to authenticate against the Azure SQL Database. Required if `servicePrincipalKey` is set.
  late final pulumi.Output<String?> servicePrincipalId;
  /// The service principal key in which to authenticate against the Azure SQL Database. Required if `servicePrincipalId` is set.
  late final pulumi.Output<String?> servicePrincipalKey;
  /// The tenant id or name in which to authenticate against the Azure SQL Database.
  late final pulumi.Output<String?> tenantId;
  /// Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with `servicePrincipalId` and `servicePrincipalKey`
  late final pulumi.Output<bool?> useManagedIdentity;

  /// Creates a new [LinkedServiceAzureSqlDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceAzureSqlDatabase]. {@macro pulumi_datafactory_linked_service_azure_sql_database_linked_service_azure_sql_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceAzureSqlDatabase(
    String name, {
    LinkedServiceAzureSqlDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureSqlDatabase:LinkedServiceAzureSqlDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionString = registerOutput<String?>('connectionString');
    credentialName = registerOutput<String?>('credentialName');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString = registerOutput<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString?>('keyVaultConnectionString', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureSqlDatabaseKeyVaultConnectionString.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultPassword = registerOutput<LinkedServiceAzureSqlDatabaseKeyVaultPassword?>('keyVaultPassword', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenantId = registerOutput<String?>('tenantId');
    useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }

  /// Gets an existing [LinkedServiceAzureSqlDatabase] resource's state with the given [name] and [id].
  static LinkedServiceAzureSqlDatabase get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceAzureSqlDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LinkedServiceAzureSqlDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LinkedServiceAzureSqlDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureSqlDatabase:LinkedServiceAzureSqlDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionString = registerOutput<String?>('connectionString');
    credentialName = registerOutput<String?>('credentialName');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString = registerOutput<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString?>('keyVaultConnectionString', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureSqlDatabaseKeyVaultConnectionString.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultPassword = registerOutput<LinkedServiceAzureSqlDatabaseKeyVaultPassword?>('keyVaultPassword', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenantId = registerOutput<String?>('tenantId');
    useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }

  /// Creates a typed reference to an existing [LinkedServiceAzureSqlDatabase] resource.
  LinkedServiceAzureSqlDatabase.reference(String urn)
    : super(
        'azure:datafactory/linkedServiceAzureSqlDatabase:LinkedServiceAzureSqlDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionString = registerOutput<String?>('connectionString');
    credentialName = registerOutput<String?>('credentialName');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString = registerOutput<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString?>('keyVaultConnectionString', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureSqlDatabaseKeyVaultConnectionString.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultPassword = registerOutput<LinkedServiceAzureSqlDatabaseKeyVaultPassword?>('keyVaultPassword', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenantId = registerOutput<String?>('tenantId');
    useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }
}
