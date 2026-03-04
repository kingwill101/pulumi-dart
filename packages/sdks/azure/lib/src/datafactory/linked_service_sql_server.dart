import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sql_server_args.dart';
import 'linked_service_sql_server_key_vault_connection_string.dart';
import 'linked_service_sql_server_key_vault_password.dart';
import 'linked_service_sql_server_state.dart';

/// Manages a Linked Service (connection) between a SQL Server and Azure Data Factory.
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
/// const exampleLinkedServiceSqlServer = new azure.datafactory.LinkedServiceSqlServer("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test",
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
/// example_linked_service_sql_server = azure.datafactory.LinkedServiceSqlServer("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test")
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
///     var exampleLinkedServiceSqlServer = new Azure.DataFactory.LinkedServiceSqlServer("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test",
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
/// 		_, err = datafactory.NewLinkedServiceSqlServer(ctx, "example", &datafactory.LinkedServiceSqlServerArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test"),
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceSqlServer;
/// import com.pulumi.azure.datafactory.LinkedServiceSqlServerArgs;
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
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceSqlServer = new LinkedServiceSqlServer("exampleLinkedServiceSqlServer", LinkedServiceSqlServerArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test")
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
///   exampleLinkedServiceSqlServer:
///     type: azure:datafactory:LinkedServiceSqlServer
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test
/// ```
///
///
///
/// ### With Password In Key Vault
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
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceKeyVault = new azure.datafactory.LinkedServiceKeyVault("example", {
///     name: "kvlink",
///     dataFactoryId: exampleFactory.id,
///     keyVaultId: exampleKeyVault.id,
/// });
/// const exampleLinkedServiceSqlServer = new azure.datafactory.LinkedServiceSqlServer("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;",
///     keyVaultPassword: {
///         linkedServiceName: exampleLinkedServiceKeyVault.name,
///         secretName: "secret",
///     },
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
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_key_vault = azure.datafactory.LinkedServiceKeyVault("example",
///     name="kvlink",
///     data_factory_id=example_factory.id,
///     key_vault_id=example_key_vault.id)
/// example_linked_service_sql_server = azure.datafactory.LinkedServiceSqlServer("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;",
///     key_vault_password={
///         "linked_service_name": example_linked_service_key_vault.name,
///         "secret_name": "secret",
///     })
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedServiceKeyVault = new Azure.DataFactory.LinkedServiceKeyVault("example", new()
///     {
///         Name = "kvlink",
///         DataFactoryId = exampleFactory.Id,
///         KeyVaultId = exampleKeyVault.Id,
///     });
///
///     var exampleLinkedServiceSqlServer = new Azure.DataFactory.LinkedServiceSqlServer("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;",
///         KeyVaultPassword = new Azure.DataFactory.Inputs.LinkedServiceSqlServerKeyVaultPasswordArgs
///         {
///             LinkedServiceName = exampleLinkedServiceKeyVault.Name,
///             SecretName = "secret",
///         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("standard"),
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
/// 		exampleLinkedServiceKeyVault, err := datafactory.NewLinkedServiceKeyVault(ctx, "example", &datafactory.LinkedServiceKeyVaultArgs{
/// 			Name:          pulumi.String("kvlink"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			KeyVaultId:    exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceSqlServer(ctx, "example", &datafactory.LinkedServiceSqlServerArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;"),
/// 			KeyVaultPassword: &datafactory.LinkedServiceSqlServerKeyVaultPasswordArgs{
/// 				LinkedServiceName: exampleLinkedServiceKeyVault.Name,
/// 				SecretName:        pulumi.String("secret"),
/// 			},
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
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceKeyVault;
/// import com.pulumi.azure.datafactory.LinkedServiceKeyVaultArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceSqlServer;
/// import com.pulumi.azure.datafactory.LinkedServiceSqlServerArgs;
/// import com.pulumi.azure.datafactory.inputs.LinkedServiceSqlServerKeyVaultPasswordArgs;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceKeyVault = new LinkedServiceKeyVault("exampleLinkedServiceKeyVault", LinkedServiceKeyVaultArgs.builder()
///             .name("kvlink")
///             .dataFactoryId(exampleFactory.id())
///             .keyVaultId(exampleKeyVault.id())
///             .build());
///
///         var exampleLinkedServiceSqlServer = new LinkedServiceSqlServer("exampleLinkedServiceSqlServer", LinkedServiceSqlServerArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;")
///             .keyVaultPassword(LinkedServiceSqlServerKeyVaultPasswordArgs.builder()
///                 .linkedServiceName(exampleLinkedServiceKeyVault.name())
///                 .secretName("secret")
///                 .build())
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceKeyVault:
///     type: azure:datafactory:LinkedServiceKeyVault
///     name: example
///     properties:
///       name: kvlink
///       dataFactoryId: ${exampleFactory.id}
///       keyVaultId: ${exampleKeyVault.id}
///   exampleLinkedServiceSqlServer:
///     type: azure:datafactory:LinkedServiceSqlServer
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;
///       keyVaultPassword:
///         linkedServiceName: ${exampleLinkedServiceKeyVault.name}
///         secretName: secret
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Data Factory SQL Server Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceSqlServer:LinkedServiceSqlServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceSqlServer extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service SQL Server.
  late final pulumi.Output<Map<String, String>?> additionalProperties;

  /// List of tags that can be used for describing the Data Factory Linked Service SQL Server.
  late final pulumi.Output<List<String>?> annotations;

  /// The connection string in which to authenticate with the SQL Server. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  late final pulumi.Output<String?> connectionString;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;

  /// The description for the Data Factory Linked Service SQL Server.
  late final pulumi.Output<String?> description;

  /// The integration runtime reference to associate with the Data Factory Linked Service SQL Server.
  late final pulumi.Output<String?> integrationRuntimeName;

  /// A `key_vault_connection_string` block as defined below. Use this argument to store SQL Server connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  late final pulumi.Output<LinkedServiceSqlServerKeyVaultConnectionString?>
  keyVaultConnectionString;

  /// A `key_vault_password` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  late final pulumi.Output<LinkedServiceSqlServerKeyVaultPassword?>
  keyVaultPassword;

  /// Specifies the name of the Data Factory Linked Service SQL Server. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;

  /// A map of parameters to associate with the Data Factory Linked Service SQL Server.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// The on-premises Windows authentication user name.
  late final pulumi.Output<String?> userName;

  /// Creates a new [LinkedServiceSqlServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceSqlServer]. {@macro pulumi_datafactory_linked_service_sql_server_linked_service_sql_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceSqlServer(
    String name, {
    LinkedServiceSqlServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/linkedServiceSqlServer:LinkedServiceSqlServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString =
        registerOutput<LinkedServiceSqlServerKeyVaultConnectionString?>(
          'keyVaultConnectionString',
        );
    keyVaultPassword = registerOutput<LinkedServiceSqlServerKeyVaultPassword?>(
      'keyVaultPassword',
    );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    userName = registerOutput<String?>('userName');
  }

  /// Gets an existing [LinkedServiceSqlServer] resource's state with the given [name] and [id].
  static LinkedServiceSqlServer get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceSqlServerState? state,
  }) {
    return LinkedServiceSqlServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceSqlServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/linkedServiceSqlServer:LinkedServiceSqlServer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString =
        registerOutput<LinkedServiceSqlServerKeyVaultConnectionString?>(
          'keyVaultConnectionString',
        );
    keyVaultPassword = registerOutput<LinkedServiceSqlServerKeyVaultPassword?>(
      'keyVaultPassword',
    );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    userName = registerOutput<String?>('userName');
  }
}
