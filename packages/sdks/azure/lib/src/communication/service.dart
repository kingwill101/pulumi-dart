import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_state.dart';

/// Manages a Communication Service.
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
/// const exampleService = new azure.communication.Service("example", {
///     name: "example-communicationservice",
///     resourceGroupName: example.name,
///     dataLocation: "United States",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.communication.Service("example",
///     name="example-communicationservice",
///     resource_group_name=example.name,
///     data_location="United States")
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
///     var exampleService = new Azure.Communication.Service("example", new()
///     {
///         Name = "example-communicationservice",
///         ResourceGroupName = example.Name,
///         DataLocation = "United States",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/communication"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		_, err = communication.NewService(ctx, "example", &communication.ServiceArgs{
/// 			Name:              pulumi.String("example-communicationservice"),
/// 			ResourceGroupName: example.Name,
/// 			DataLocation:      pulumi.String("United States"),
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
/// import com.pulumi.azure.communication.Service;
/// import com.pulumi.azure.communication.ServiceArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-communicationservice")
///             .resourceGroupName(example.name())
///             .dataLocation("United States")
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
///   exampleService:
///     type: azure:communication:Service
///     name: example
///     properties:
///       name: example-communicationservice
///       resourceGroupName: ${example.name}
///       dataLocation: United States
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Communication` - 2023-03-31
///
/// ## Import
///
/// Communication Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:communication/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Communication/communicationServices/communicationService1
/// ```
class Service extends pulumi.CustomResource {
  /// The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created.
  late final pulumi.Output<String?> dataLocation;
  /// The hostname of the Communication Service
  late final pulumi.Output<String> hostname;
  /// The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  late final pulumi.Output<String> name;
  /// The primary connection string of the Communication Service.
  late final pulumi.Output<String> primaryConnectionString;
  /// The primary key of the Communication Service.
  late final pulumi.Output<String> primaryKey;
  /// The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary connection string of the Communication Service.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The secondary key of the Communication Service.
  late final pulumi.Output<String> secondaryKey;
  /// A mapping of tags which should be assigned to the Communication Service.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_communication_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataLocation = registerOutput<String?>('dataLocation');
    this.hostname = registerOutput<String>('hostname');
    this.name = registerOutput<String>('name');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataLocation = registerOutput<String?>('dataLocation');
    this.hostname = registerOutput<String>('hostname');
    this.name = registerOutput<String>('name');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
