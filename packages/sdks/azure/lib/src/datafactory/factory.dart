import 'package:pulumi/pulumi.dart' as pulumi;
import 'factory_args.dart';
import 'factory_github_configuration.dart';
import 'factory_global_parameter.dart';
import 'factory_identity.dart';
import 'factory_state.dart';
import 'factory_vsts_configuration.dart';

/// Manages an Azure Data Factory (Version 2).
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
/// 		_, err = datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/factory:Factory example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example
/// ```
class Factory extends pulumi.CustomResource {
  /// Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity.
  late final pulumi.Output<String> customerManagedKeyId;
  /// Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied at factory creation if `customer_managed_key_id` is set. Can be left empty once factory is created to use the system assigned identity. See the [Microsoft documentation](https://learn.microsoft.com/en-us/azure/data-factory/enable-customer-managed-key) for more information.
  late final pulumi.Output<String> customerManagedKeyIdentityId;
  /// A `github_configuration` block as defined below.
  late final pulumi.Output<FactoryGithubConfiguration?> githubConfiguration;
  /// A list of `global_parameter` blocks as defined above.
  late final pulumi.Output<List<FactoryGlobalParameter>?> globalParameters;
  /// An `identity` block as defined below.
  late final pulumi.Output<FactoryIdentity?> identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Is Managed Virtual Network enabled?
  late final pulumi.Output<bool?> managedVirtualNetworkEnabled;
  /// Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// Is the Data Factory visible to the public network? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkEnabled;
  /// Specifies the ID of the purview account resource associated with the Data Factory.
  late final pulumi.Output<String?> purviewId;
  /// The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `vsts_configuration` block as defined below.
  late final pulumi.Output<FactoryVstsConfiguration?> vstsConfiguration;

  /// Creates a new [Factory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Factory]. {@macro pulumi_datafactory_factory_factory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Factory(
    String name, {
    FactoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/factory:Factory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customerManagedKeyId = registerOutput<String>('customerManagedKeyId');
    this.customerManagedKeyIdentityId = registerOutput<String>('customerManagedKeyIdentityId');
    this.githubConfiguration = registerOutput<FactoryGithubConfiguration?>('githubConfiguration');
    this.globalParameters = registerOutput<List<FactoryGlobalParameter>?>('globalParameters');
    this.identity = registerOutput<FactoryIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.managedVirtualNetworkEnabled = registerOutput<bool?>('managedVirtualNetworkEnabled');
    this.name = registerOutput<String>('name');
    this.publicNetworkEnabled = registerOutput<bool?>('publicNetworkEnabled');
    this.purviewId = registerOutput<String?>('purviewId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vstsConfiguration = registerOutput<FactoryVstsConfiguration?>('vstsConfiguration');
  }

  /// Gets an existing [Factory] resource's state with the given [name] and [id].
  static Factory get(
    String name,
    pulumi.Input<String> id, {
    FactoryState? state,
  }) {
    return Factory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Factory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/factory:Factory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customerManagedKeyId = registerOutput<String>('customerManagedKeyId');
    this.customerManagedKeyIdentityId = registerOutput<String>('customerManagedKeyIdentityId');
    this.githubConfiguration = registerOutput<FactoryGithubConfiguration?>('githubConfiguration');
    this.globalParameters = registerOutput<List<FactoryGlobalParameter>?>('globalParameters');
    this.identity = registerOutput<FactoryIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.managedVirtualNetworkEnabled = registerOutput<bool?>('managedVirtualNetworkEnabled');
    this.name = registerOutput<String>('name');
    this.publicNetworkEnabled = registerOutput<bool?>('publicNetworkEnabled');
    this.purviewId = registerOutput<String?>('purviewId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vstsConfiguration = registerOutput<FactoryVstsConfiguration?>('vstsConfiguration');
  }
}
