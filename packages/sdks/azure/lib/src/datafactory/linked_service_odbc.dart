import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_odbc_args.dart';
import 'linked_service_odbc_basic_authentication.dart';
import 'linked_service_odbc_state.dart';

/// Manages a Linked Service (connection) between a Database and Azure Data Factory through ODBC protocol.
///
/// > **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
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
/// const anonymous = new azure.datafactory.LinkedServiceOdbc("anonymous", {
///     name: "anonymous",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;",
/// });
/// const basicAuth = new azure.datafactory.LinkedServiceOdbc("basic_auth", {
///     name: "basic_auth",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;",
///     basicAuthentication: {
///         username: "onrylmz",
///         password: "Ch4ngeM3!",
///     },
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
/// anonymous = azure.datafactory.LinkedServiceOdbc("anonymous",
///     name="anonymous",
///     data_factory_id=example_factory.id,
///     connection_string="Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;")
/// basic_auth = azure.datafactory.LinkedServiceOdbc("basic_auth",
///     name="basic_auth",
///     data_factory_id=example_factory.id,
///     connection_string="Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;",
///     basic_authentication={
///         "username": "onrylmz",
///         "password": "Ch4ngeM3!",
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
///     var anonymous = new Azure.DataFactory.LinkedServiceOdbc("anonymous", new()
///     {
///         Name = "anonymous",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;",
///     });
///
///     var basicAuth = new Azure.DataFactory.LinkedServiceOdbc("basic_auth", new()
///     {
///         Name = "basic_auth",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;",
///         BasicAuthentication = new Azure.DataFactory.Inputs.LinkedServiceOdbcBasicAuthenticationArgs
///         {
///             Username = "onrylmz",
///             Password = "Ch4ngeM3!",
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
/// 		_, err = datafactory.NewLinkedServiceOdbc(ctx, "anonymous", &datafactory.LinkedServiceOdbcArgs{
/// 			Name:             pulumi.String("anonymous"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceOdbc(ctx, "basic_auth", &datafactory.LinkedServiceOdbcArgs{
/// 			Name:             pulumi.String("basic_auth"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;"),
/// 			BasicAuthentication: &datafactory.LinkedServiceOdbcBasicAuthenticationArgs{
/// 				Username: pulumi.String("onrylmz"),
/// 				Password: pulumi.String("Ch4ngeM3!"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceOdbc;
/// import com.pulumi.azure.datafactory.LinkedServiceOdbcArgs;
/// import com.pulumi.azure.datafactory.inputs.LinkedServiceOdbcBasicAuthenticationArgs;
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
///         var anonymous = new LinkedServiceOdbc("anonymous", LinkedServiceOdbcArgs.builder()
///             .name("anonymous")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;")
///             .build());
///
///         var basicAuth = new LinkedServiceOdbc("basicAuth", LinkedServiceOdbcArgs.builder()
///             .name("basic_auth")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;")
///             .basicAuthentication(LinkedServiceOdbcBasicAuthenticationArgs.builder()
///                 .username("onrylmz")
///                 .password("Ch4ngeM3!")
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   anonymous:
///     type: azure:datafactory:LinkedServiceOdbc
///     properties:
///       name: anonymous
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;
///   basicAuth:
///     type: azure:datafactory:LinkedServiceOdbc
///     name: basic_auth
///     properties:
///       name: basic_auth
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Driver={SQL Server};Server=test;Database=test;Uid=test;Pwd=test;
///       basicAuthentication:
///         username: onrylmz
///         password: Ch4ngeM3!
/// ```
///
///
/// ## Import
///
/// Data Factory ODBC Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceOdbc:LinkedServiceOdbc example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceOdbc extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service ODBC.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service ODBC.
  late final pulumi.Output<List<String>?> annotations;
  /// A `basic_authentication` block as defined below.
  late final pulumi.Output<LinkedServiceOdbcBasicAuthentication?> basicAuthentication;
  /// The connection string in which to authenticate with ODBC.
  late final pulumi.Output<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service ODBC.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service ODBC.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service ODBC. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service ODBC.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Creates a new [LinkedServiceOdbc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceOdbc]. {@macro pulumi_datafactory_linked_service_odbc_linked_service_odbc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceOdbc(
    String name, {
    LinkedServiceOdbcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceOdbc:LinkedServiceOdbc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.basicAuthentication = registerOutput<LinkedServiceOdbcBasicAuthentication?>('basicAuthentication');
    this.connectionString = registerOutput<String>('connectionString');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
  }

  /// Gets an existing [LinkedServiceOdbc] resource's state with the given [name] and [id].
  static LinkedServiceOdbc get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceOdbcState? state,
  }) {
    return LinkedServiceOdbc._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceOdbc._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceOdbc:LinkedServiceOdbc',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.basicAuthentication = registerOutput<LinkedServiceOdbcBasicAuthentication?>('basicAuthentication');
    this.connectionString = registerOutput<String>('connectionString');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
  }
}
