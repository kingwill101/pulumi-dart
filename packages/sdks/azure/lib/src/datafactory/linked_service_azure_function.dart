import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_function_args.dart';
import 'linked_service_azure_function_key_vault_key.dart';
import 'linked_service_azure_function_state.dart';

/// Manages a Linked Service (connection) between an Azure Function and Azure Data Factory.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.appservice.getFunctionAppOutput({
///     name: "test-azure-functions",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleLinkedServiceAzureFunction = new azure.datafactory.LinkedServiceAzureFunction("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     url: pulumi.interpolate`https://${example.defaultHostname}`,
///     key: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.appservice.get_function_app_output(name="test-azure-functions",
///     resource_group_name=example_resource_group.name)
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_linked_service_azure_function = azure.datafactory.LinkedServiceAzureFunction("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     url=example.apply(lambda example: f"https://{example.default_hostname}"),
///     key="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.AppService.GetFunctionApp.Invoke(new()
///     {
///         Name = "test-azure-functions",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleLinkedServiceAzureFunction = new Azure.DataFactory.LinkedServiceAzureFunction("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Url = $"https://{example.Apply(getFunctionAppResult => getFunctionAppResult.DefaultHostname)}",
///         Key = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := appservice.LookupFunctionAppOutput(ctx, appservice.GetFunctionAppOutputArgs{
/// 			Name:              pulumi.String("test-azure-functions"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceAzureFunction(ctx, "example", &datafactory.LinkedServiceAzureFunctionArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			Url: example.ApplyT(func(example appservice.GetFunctionAppResult) (string, error) {
/// 				return fmt.Sprintf("https://%v", example.DefaultHostname), nil
/// 			}).(pulumi.StringOutput),
/// 			Key: pulumi.String("foo"),
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
/// data "azure_appservice_getfunctionapp" "example" {
///   name                = "test-azure-functions"
///   resource_group_name = azure_core_resourcegroup.example.name
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
/// resource "azure_datafactory_linkedserviceazurefunction" "example" {
///   name            = "example"
///   data_factory_id = azure_datafactory_factory.example.id
///   url             ="https://${data.azure_appservice_getfunctionapp.example.default_hostname}"
///   key             = "foo"
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
/// import com.pulumi.azure.appservice.AppserviceFunctions;
/// import com.pulumi.azure.appservice.inputs.GetFunctionAppArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureFunction;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureFunctionArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = AppserviceFunctions.getFunctionApp(GetFunctionAppArgs.builder()
///             .name("test-azure-functions")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleLinkedServiceAzureFunction = new LinkedServiceAzureFunction("exampleLinkedServiceAzureFunction", LinkedServiceAzureFunctionArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .url(example.applyValue(_example -> String.format("https://%s", _example.defaultHostname())))
///             .key("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleLinkedServiceAzureFunction:
///     type: azure:datafactory:LinkedServiceAzureFunction
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       url: https://${example.defaultHostname}
///       key: foo
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appservice:getFunctionApp
///       arguments:
///         name: test-azure-functions
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceAzureFunction:LinkedServiceAzureFunction example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceAzureFunction extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Function Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// The system key of the Azure Function. Exactly one of either `key` or `keyVaultKey` is required
  late final pulumi.Output<String?> key;
  /// A `keyVaultKey` block as defined below. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `key` or `keyVaultKey` is required.
  late final pulumi.Output<LinkedServiceAzureFunctionKeyVaultKey?> keyVaultKey;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The url of the Azure Function.
  late final pulumi.Output<String> url;

  /// Creates a new [LinkedServiceAzureFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceAzureFunction]. {@macro pulumi_datafactory_linked_service_azure_function_linked_service_azure_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceAzureFunction(
    String name, {
    LinkedServiceAzureFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureFunction:LinkedServiceAzureFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['key'],
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    key = registerOutput<String?>('key', isSecret: true);
    keyVaultKey = registerOutput<LinkedServiceAzureFunctionKeyVaultKey?>('keyVaultKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureFunctionKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    url = registerOutput<String>('url');
  }

  /// Gets an existing [LinkedServiceAzureFunction] resource's state with the given [name] and [id].
  static LinkedServiceAzureFunction get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceAzureFunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LinkedServiceAzureFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LinkedServiceAzureFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureFunction:LinkedServiceAzureFunction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    key = registerOutput<String?>('key', isSecret: true);
    keyVaultKey = registerOutput<LinkedServiceAzureFunctionKeyVaultKey?>('keyVaultKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureFunctionKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [LinkedServiceAzureFunction] resource.
  LinkedServiceAzureFunction.reference(String urn)
    : super(
        'azure:datafactory/linkedServiceAzureFunction:LinkedServiceAzureFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['key'],
        isResourceReference: true,
      ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    key = registerOutput<String?>('key', isSecret: true);
    keyVaultKey = registerOutput<LinkedServiceAzureFunctionKeyVaultKey?>('keyVaultKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceAzureFunctionKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    url = registerOutput<String>('url');
  }
}
