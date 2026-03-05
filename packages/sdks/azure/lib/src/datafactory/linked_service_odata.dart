import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_odata_args.dart';
import 'linked_service_odata_basic_authentication.dart';
import 'linked_service_odata_state.dart';

/// Manages a Linked Service (connection) between a Database and Azure Data Factory through OData protocol.
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
/// const anonymous = new azure.datafactory.LinkedServiceOdata("anonymous", {
///     name: "anonymous",
///     dataFactoryId: exampleFactory.id,
///     url: "https://services.odata.org/v4/TripPinServiceRW/People",
/// });
/// const basicAuth = new azure.datafactory.LinkedServiceOdata("basic_auth", {
///     name: "basic_auth",
///     dataFactoryId: exampleFactory.id,
///     url: "https://services.odata.org/v4/TripPinServiceRW/People",
///     basicAuthentication: {
///         username: "emma",
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
/// anonymous = azure.datafactory.LinkedServiceOdata("anonymous",
///     name="anonymous",
///     data_factory_id=example_factory.id,
///     url="https://services.odata.org/v4/TripPinServiceRW/People")
/// basic_auth = azure.datafactory.LinkedServiceOdata("basic_auth",
///     name="basic_auth",
///     data_factory_id=example_factory.id,
///     url="https://services.odata.org/v4/TripPinServiceRW/People",
///     basic_authentication={
///         "username": "emma",
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
///     var anonymous = new Azure.DataFactory.LinkedServiceOdata("anonymous", new()
///     {
///         Name = "anonymous",
///         DataFactoryId = exampleFactory.Id,
///         Url = "https://services.odata.org/v4/TripPinServiceRW/People",
///     });
///
///     var basicAuth = new Azure.DataFactory.LinkedServiceOdata("basic_auth", new()
///     {
///         Name = "basic_auth",
///         DataFactoryId = exampleFactory.Id,
///         Url = "https://services.odata.org/v4/TripPinServiceRW/People",
///         BasicAuthentication = new Azure.DataFactory.Inputs.LinkedServiceOdataBasicAuthenticationArgs
///         {
///             Username = "emma",
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
/// 		_, err = datafactory.NewLinkedServiceOdata(ctx, "anonymous", &datafactory.LinkedServiceOdataArgs{
/// 			Name:          pulumi.String("anonymous"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Url:           pulumi.String("https://services.odata.org/v4/TripPinServiceRW/People"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceOdata(ctx, "basic_auth", &datafactory.LinkedServiceOdataArgs{
/// 			Name:          pulumi.String("basic_auth"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Url:           pulumi.String("https://services.odata.org/v4/TripPinServiceRW/People"),
/// 			BasicAuthentication: &datafactory.LinkedServiceOdataBasicAuthenticationArgs{
/// 				Username: pulumi.String("emma"),
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
/// import com.pulumi.azure.datafactory.LinkedServiceOdata;
/// import com.pulumi.azure.datafactory.LinkedServiceOdataArgs;
/// import com.pulumi.azure.datafactory.inputs.LinkedServiceOdataBasicAuthenticationArgs;
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
///         var anonymous = new LinkedServiceOdata("anonymous", LinkedServiceOdataArgs.builder()
///             .name("anonymous")
///             .dataFactoryId(exampleFactory.id())
///             .url("https://services.odata.org/v4/TripPinServiceRW/People")
///             .build());
///
///         var basicAuth = new LinkedServiceOdata("basicAuth", LinkedServiceOdataArgs.builder()
///             .name("basic_auth")
///             .dataFactoryId(exampleFactory.id())
///             .url("https://services.odata.org/v4/TripPinServiceRW/People")
///             .basicAuthentication(LinkedServiceOdataBasicAuthenticationArgs.builder()
///                 .username("emma")
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
///     type: azure:datafactory:LinkedServiceOdata
///     properties:
///       name: anonymous
///       dataFactoryId: ${exampleFactory.id}
///       url: https://services.odata.org/v4/TripPinServiceRW/People
///   basicAuth:
///     type: azure:datafactory:LinkedServiceOdata
///     name: basic_auth
///     properties:
///       name: basic_auth
///       dataFactoryId: ${exampleFactory.id}
///       url: https://services.odata.org/v4/TripPinServiceRW/People
///       basicAuthentication:
///         username: emma
///         password: Ch4ngeM3!
/// ```
///
///
/// ## Import
///
/// Data Factory OData Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceOdata:LinkedServiceOdata example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceOdata extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service OData.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service OData.
  late final pulumi.Output<List<String>?> annotations;
  /// A `basic_authentication` block as defined below.
  late final pulumi.Output<LinkedServiceOdataBasicAuthentication?> basicAuthentication;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service OData.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service OData.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service OData.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The URL of the OData service endpoint.
  late final pulumi.Output<String> url;

  /// Creates a new [LinkedServiceOdata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceOdata]. {@macro pulumi_datafactory_linked_service_odata_linked_service_odata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceOdata(
    String name, {
    LinkedServiceOdataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceOdata:LinkedServiceOdata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    basicAuthentication = registerOutput<LinkedServiceOdataBasicAuthentication?>('basicAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceOdataBasicAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [LinkedServiceOdata] resource's state with the given [name] and [id].
  static LinkedServiceOdata get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceOdataState? state,
  }) {
    return LinkedServiceOdata._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceOdata._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceOdata:LinkedServiceOdata',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    basicAuthentication = registerOutput<LinkedServiceOdataBasicAuthentication?>('basicAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedServiceOdataBasicAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    url = registerOutput<String>('url');
  }
}
