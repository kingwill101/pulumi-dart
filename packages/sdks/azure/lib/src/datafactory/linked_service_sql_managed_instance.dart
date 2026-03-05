import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sql_managed_instance_args.dart';
import 'linked_service_sql_managed_instance_key_vault_connection_string.dart';
import 'linked_service_sql_managed_instance_key_vault_password.dart';
import 'linked_service_sql_managed_instance_state.dart';

/// Manages a Linked Service (connection) between Azure SQL Managed Instance and Azure Data Factory.
///
/// &gt; **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
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
/// const exampleLinkedServiceSqlManagedInstance = new azure.datafactory.LinkedServiceSqlManagedInstance("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Server=myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;",
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
/// example_linked_service_sql_managed_instance = azure.datafactory.LinkedServiceSqlManagedInstance("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Server=myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;")
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
///     var exampleLinkedServiceSqlManagedInstance = new Azure.DataFactory.LinkedServiceSqlManagedInstance("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Server=myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;",
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
/// 		_, err = datafactory.NewLinkedServiceSqlManagedInstance(ctx, "example", &datafactory.LinkedServiceSqlManagedInstanceArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Server=myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;"),
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
/// import com.pulumi.azure.datafactory.LinkedServiceSqlManagedInstance;
/// import com.pulumi.azure.datafactory.LinkedServiceSqlManagedInstanceArgs;
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
///         var exampleLinkedServiceSqlManagedInstance = new LinkedServiceSqlManagedInstance("exampleLinkedServiceSqlManagedInstance", LinkedServiceSqlManagedInstanceArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Server=myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;")
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
///   exampleLinkedServiceSqlManagedInstance:
///     type: azure:datafactory:LinkedServiceSqlManagedInstance
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Server=myserver.database.windows.net;Database=mydatabase;User ID=myuser;Password=mypassword;
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Linked Service SQL Managed Instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceSqlManagedInstance:LinkedServiceSqlManagedInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.DataFactory/factories/example/linkedServices/example
/// ```
class LinkedServiceSqlManagedInstance extends pulumi.CustomResource {
  /// List of tags that can be used for describing the Data Factory Linked Service SQL Managed Instance.
  late final pulumi.Output<List<String>?> annotations;

  /// The connection string in which to authenticate with the SQL Managed Instance. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  ///
  /// &gt; **Note:** When using service principal authentication, the connection string must not contain authentication values like `User Id`.
  late final pulumi.Output<String?> connectionString;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataFactoryId;

  /// The description for the Data Factory Linked Service SQL Managed Instance.
  late final pulumi.Output<String?> description;

  /// The integration runtime reference to associate with the Data Factory Linked Service SQL Managed Instance.
  late final pulumi.Output<String?> integrationRuntimeName;

  /// A `key_vault_connection_string` block as defined below. Use this argument to store SQL Managed Instance connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  late final pulumi.Output<
    LinkedServiceSqlManagedInstanceKeyVaultConnectionString?
  >
  keyVaultConnectionString;

  /// A `key_vault_password` block as defined below. Use this argument to store SQL Managed Instance password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  late final pulumi.Output<LinkedServiceSqlManagedInstanceKeyVaultPassword?>
  keyVaultPassword;

  /// Specifies the name of the Data Factory Linked Service SQL Managed Instance. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;

  /// A map of parameters to associate with the Data Factory Linked Service SQL Managed Instance.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// The service principal id in which to authenticate against the Azure SQL Managed Instance.
  late final pulumi.Output<String?> servicePrincipalId;

  /// The service principal key in which to authenticate against the Azure SQL Managed Instance.
  late final pulumi.Output<String?> servicePrincipalKey;

  /// The tenant id or name in which to authenticate against the Azure SQL Managed Instance.
  late final pulumi.Output<String?> tenant;

  /// Creates a new [LinkedServiceSqlManagedInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceSqlManagedInstance]. {@macro pulumi_datafactory_linked_service_sql_managed_instance_linked_service_sql_managed_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceSqlManagedInstance(
    String name, {
    LinkedServiceSqlManagedInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/linkedServiceSqlManagedInstance:LinkedServiceSqlManagedInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString =
        registerOutput<
          LinkedServiceSqlManagedInstanceKeyVaultConnectionString?
        >(
          'keyVaultConnectionString',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LinkedServiceSqlManagedInstanceKeyVaultConnectionString.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    keyVaultPassword =
        registerOutput<LinkedServiceSqlManagedInstanceKeyVaultPassword?>(
          'keyVaultPassword',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LinkedServiceSqlManagedInstanceKeyVaultPassword.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenant = registerOutput<String?>('tenant');
  }

  /// Gets an existing [LinkedServiceSqlManagedInstance] resource's state with the given [name] and [id].
  static LinkedServiceSqlManagedInstance get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceSqlManagedInstanceState? state,
  }) {
    return LinkedServiceSqlManagedInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceSqlManagedInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/linkedServiceSqlManagedInstance:LinkedServiceSqlManagedInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    keyVaultConnectionString =
        registerOutput<
          LinkedServiceSqlManagedInstanceKeyVaultConnectionString?
        >(
          'keyVaultConnectionString',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LinkedServiceSqlManagedInstanceKeyVaultConnectionString.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    keyVaultPassword =
        registerOutput<LinkedServiceSqlManagedInstanceKeyVaultPassword?>(
          'keyVaultPassword',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return LinkedServiceSqlManagedInstanceKeyVaultPassword.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    tenant = registerOutput<String?>('tenant');
  }
}
