import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_registration_args.dart';
import 'resource_provider_registration_feature.dart';
import 'resource_provider_registration_state.dart';

/// Manages the registration of a Resource Provider - which allows access to the API's supported by this Resource Provider.
///
/// > **Note:** The Azure Provider will automatically register all of the Resource Providers which it supports on launch (unless opted-out using the `skip_provider_registration` field within the provider block).
///
/// !> **Note:** The errors returned from the Azure API when a Resource Provider is unregistered are unclear (example `API version '2019-01-01' was not found for 'Microsoft.Foo'`) - please ensure that all of the necessary Resource Providers you're using are registered - if in doubt **we strongly recommend letting the provider register these for you**.
///
/// > **Note:** Adding or Removing a Preview Feature will re-register the Resource Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceProviderRegistration("example", {name: "Microsoft.PolicyInsights"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceProviderRegistration("example", name="Microsoft.PolicyInsights")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceProviderRegistration("example", new()
///     {
///         Name = "Microsoft.PolicyInsights",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceProviderRegistration(ctx, "example", &core.ResourceProviderRegistrationArgs{
/// 			Name: pulumi.String("Microsoft.PolicyInsights"),
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
/// import com.pulumi.azure.core.ResourceProviderRegistration;
/// import com.pulumi.azure.core.ResourceProviderRegistrationArgs;
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
///         var example = new ResourceProviderRegistration("example", ResourceProviderRegistrationArgs.builder()
///             .name("Microsoft.PolicyInsights")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceProviderRegistration
///     properties:
///       name: Microsoft.PolicyInsights
/// ```
///
///
///
/// ### Registering A Preview Feature)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceProviderRegistration("example", {
///     name: "Microsoft.ContainerService",
///     features: [{
///         name: "AKS-DataPlaneAutoApprove",
///         registered: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceProviderRegistration("example",
///     name="Microsoft.ContainerService",
///     features=[{
///         "name": "AKS-DataPlaneAutoApprove",
///         "registered": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceProviderRegistration("example", new()
///     {
///         Name = "Microsoft.ContainerService",
///         Features = new[]
///         {
///             new Azure.Core.Inputs.ResourceProviderRegistrationFeatureArgs
///             {
///                 Name = "AKS-DataPlaneAutoApprove",
///                 Registered = true,
///             },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceProviderRegistration(ctx, "example", &core.ResourceProviderRegistrationArgs{
/// 			Name: pulumi.String("Microsoft.ContainerService"),
/// 			Features: core.ResourceProviderRegistrationFeatureArray{
/// 				&core.ResourceProviderRegistrationFeatureArgs{
/// 					Name:       pulumi.String("AKS-DataPlaneAutoApprove"),
/// 					Registered: pulumi.Bool(true),
/// 				},
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
/// import com.pulumi.azure.core.ResourceProviderRegistration;
/// import com.pulumi.azure.core.ResourceProviderRegistrationArgs;
/// import com.pulumi.azure.core.inputs.ResourceProviderRegistrationFeatureArgs;
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
///         var example = new ResourceProviderRegistration("example", ResourceProviderRegistrationArgs.builder()
///             .name("Microsoft.ContainerService")
///             .features(ResourceProviderRegistrationFeatureArgs.builder()
///                 .name("AKS-DataPlaneAutoApprove")
///                 .registered(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceProviderRegistration
///     properties:
///       name: Microsoft.ContainerService
///       features:
///         - name: AKS-DataPlaneAutoApprove
///           registered: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Features` - 2021-07-01
///
/// ## Import
///
/// Resource Provider Registrations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceProviderRegistration:ResourceProviderRegistration example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.PolicyInsights
/// ```
class ResourceProviderRegistration extends pulumi.CustomResource {
  /// A list of `feature` blocks as defined below.
  ///
  /// > **Note:** The `feature` block allows a Preview Feature to be explicitly Registered or Unregistered for this Resource Provider - once a Feature has been explicitly Registered or Unregistered, it must be specified in the Terraform Configuration (it's not possible to reset this to the default, unspecified, state).
  late final pulumi.Output<List<ResourceProviderRegistrationFeature>?> features;
  /// The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [ResourceProviderRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceProviderRegistration]. {@macro pulumi_core_resource_provider_registration_resource_provider_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceProviderRegistration(
    String name, {
    ResourceProviderRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceProviderRegistration:ResourceProviderRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.features = registerOutput<List<ResourceProviderRegistrationFeature>?>('features');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ResourceProviderRegistration] resource's state with the given [name] and [id].
  static ResourceProviderRegistration get(
    String name,
    pulumi.Input<String> id, {
    ResourceProviderRegistrationState? state,
  }) {
    return ResourceProviderRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceProviderRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceProviderRegistration:ResourceProviderRegistration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.features = registerOutput<List<ResourceProviderRegistrationFeature>?>('features');
    this.name = registerOutput<String>('name');
  }
}
