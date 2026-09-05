import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_feature_registration_args.dart';
import 'resource_provider_feature_registration_state.dart';

/// Manages the registration of a feature within a Resource Provider.
///
/// &gt; **Note:** The Resource Provider must be registered before a feature can be registered.
///
/// &gt; **Note:** Only Preview Features which have an `ApprovalType` of `AutoApproval` can be managed in Terraform, features which require manual approval by Service Teams are unsupported. [More information on Resource Provider Preview Features can be found in this document](https://docs.microsoft.com/rest/api/resources/features)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceProviderFeatureRegistration("example", {
///     name: "EncryptionAtHost",
///     providerName: "Microsoft.Compute",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceProviderFeatureRegistration("example",
///     name="EncryptionAtHost",
///     provider_name="Microsoft.Compute")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceProviderFeatureRegistration("example", new()
///     {
///         Name = "EncryptionAtHost",
///         ProviderName = "Microsoft.Compute",
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
/// 		_, err := core.NewResourceProviderFeatureRegistration(ctx, "example", &core.ResourceProviderFeatureRegistrationArgs{
/// 			Name:         pulumi.String("EncryptionAtHost"),
/// 			ProviderName: pulumi.String("Microsoft.Compute"),
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
/// resource "azure_core_resourceproviderfeatureregistration" "example" {
///   name          = "EncryptionAtHost"
///   provider_name = "Microsoft.Compute"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceProviderFeatureRegistration;
/// import com.pulumi.azure.core.ResourceProviderFeatureRegistrationArgs;
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
///         var example = new ResourceProviderFeatureRegistration("example", ResourceProviderFeatureRegistrationArgs.builder()
///             .name("EncryptionAtHost")
///             .providerName("Microsoft.Compute")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceProviderFeatureRegistration
///     properties:
///       name: EncryptionAtHost
///       providerName: Microsoft.Compute
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Features` - 2021-07-01
///
/// ## Import
///
/// Features Registrations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceProviderFeatureRegistration:ResourceProviderFeatureRegistration example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Features/providers/{ResourceProviderName}/features/{FeatureName}
/// ```
class ResourceProviderFeatureRegistration extends pulumi.CustomResource {
  /// Specifies the name of the feature to register. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Resource Provider name. Changing this forces a new resource to be created.
  late final pulumi.Output<String> providerName;

  /// Creates a new [ResourceProviderFeatureRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceProviderFeatureRegistration]. {@macro pulumi_core_resource_provider_feature_registration_resource_provider_feature_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceProviderFeatureRegistration(
    String name, {
    ResourceProviderFeatureRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceProviderFeatureRegistration:ResourceProviderFeatureRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
  }

  /// Gets an existing [ResourceProviderFeatureRegistration] resource's state with the given [name] and [id].
  static ResourceProviderFeatureRegistration get(
    String name,
    pulumi.Input<String> id, {
    ResourceProviderFeatureRegistrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceProviderFeatureRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceProviderFeatureRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceProviderFeatureRegistration:ResourceProviderFeatureRegistration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
  }

  /// Creates a typed reference to an existing [ResourceProviderFeatureRegistration] resource.
  ResourceProviderFeatureRegistration.reference(String urn)
    : super(
        'azure:core/resourceProviderFeatureRegistration:ResourceProviderFeatureRegistration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    providerName = registerOutput<String>('providerName');
  }
}
