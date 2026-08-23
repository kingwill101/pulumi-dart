import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_fallback_public_client_args.dart';
import 'application_fallback_public_client_state.dart';

/// Manages the Fallback Public Client setting for an application registration.
///
/// &gt; This resource is incompatible with the `azuread.Application` resource, instead use this with the `azuread.ApplicationRegistration` resource.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationFallbackPublicClient = new azuread.ApplicationFallbackPublicClient("example", {
///     applicationId: example.id,
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_fallback_public_client = azuread.ApplicationFallbackPublicClient("example",
///     application_id=example.id,
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleApplicationFallbackPublicClient = new AzureAD.ApplicationFallbackPublicClient("example", new()
///     {
///         ApplicationId = example.Id,
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationFallbackPublicClient(ctx, "example", &azuread.ApplicationFallbackPublicClientArgs{
/// 			ApplicationId: example.ID(),
/// 			Enabled:       pulumi.Bool(true),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_applicationregistration" "example" {
///   display_name = "example"
/// }
/// resource "azuread_applicationfallbackpublicclient" "example" {
///   application_id = azuread_applicationregistration.example.id
///   enabled        = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationFallbackPublicClient;
/// import com.pulumi.azuread.ApplicationFallbackPublicClientArgs;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleApplicationFallbackPublicClient = new ApplicationFallbackPublicClient("exampleApplicationFallbackPublicClient", ApplicationFallbackPublicClientArgs.builder()
///             .applicationId(example.id())
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example
///   exampleApplicationFallbackPublicClient:
///     type: azuread:ApplicationFallbackPublicClient
///     name: example
///     properties:
///       applicationId: ${example.id}
///       enabled: true
/// ```
///
///
/// ## Import
///
/// The Application Fallback Public Client setting can be imported using the object ID of the application, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationFallbackPublicClient:ApplicationFallbackPublicClient example /applications/00000000-0000-0000-0000-000000000000/fallbackPublicClient
/// ```
class ApplicationFallbackPublicClient extends pulumi.CustomResource {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// Whether to enable the application as a fallback public client.
  ///
  /// &gt; Some configurations may require the Fallback Public Client setting to be `null`, for this case simply destroy this resource (or don't use it)
  late final pulumi.Output<bool?> enabled;

  /// Creates a new [ApplicationFallbackPublicClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationFallbackPublicClient]. {@macro pulumi_index_application_fallback_public_client_application_fallback_public_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationFallbackPublicClient(
    String name, {
    ApplicationFallbackPublicClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationFallbackPublicClient:ApplicationFallbackPublicClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    enabled = registerOutput<bool?>('enabled');
  }

  /// Gets an existing [ApplicationFallbackPublicClient] resource's state with the given [name] and [id].
  static ApplicationFallbackPublicClient get(
    String name,
    pulumi.Input<String> id, {
    ApplicationFallbackPublicClientState? state,
  }) {
    return ApplicationFallbackPublicClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationFallbackPublicClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationFallbackPublicClient:ApplicationFallbackPublicClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    enabled = registerOutput<bool?>('enabled');
  }
}
