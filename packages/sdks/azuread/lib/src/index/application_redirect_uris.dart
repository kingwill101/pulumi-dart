import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_redirect_uris_args.dart';
import 'application_redirect_uris_state.dart';

/// Manages the redirect URIs for an application registration.
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
/// const examplePublic = new azuread.ApplicationRedirectUris("example_public", {
///     applicationId: example.id,
///     type: "PublicClient",
///     redirectUris: [
///         "myapp://auth",
///         "sample.mobile.app.bundie.id://auth",
///         "https://login.microsoftonline.com/common/oauth2/nativeclient",
///         "https://login.live.com/oauth20_desktop.srf",
///         "ms-appx-web://Microsoft.AAD.BrokerPlugin/00000000-1111-1111-1111-222222222222",
///         "urn:ietf:wg:oauth:2.0:foo",
///     ],
/// });
/// const exampleSpa = new azuread.ApplicationRedirectUris("example_spa", {
///     applicationId: example.id,
///     type: "SPA",
///     redirectUris: [
///         "https://mobile.example.com/",
///         "https://beta.example.com/",
///     ],
/// });
/// const exampleWeb = new azuread.ApplicationRedirectUris("example_web", {
///     applicationId: example.id,
///     type: "Web",
///     redirectUris: [
///         "https://app.example.com/",
///         "https://classic.example.com/",
///         "urn:ietf:wg:oauth:2.0:oob",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_public = azuread.ApplicationRedirectUris("example_public",
///     application_id=example.id,
///     type="PublicClient",
///     redirect_uris=[
///         "myapp://auth",
///         "sample.mobile.app.bundie.id://auth",
///         "https://login.microsoftonline.com/common/oauth2/nativeclient",
///         "https://login.live.com/oauth20_desktop.srf",
///         "ms-appx-web://Microsoft.AAD.BrokerPlugin/00000000-1111-1111-1111-222222222222",
///         "urn:ietf:wg:oauth:2.0:foo",
///     ])
/// example_spa = azuread.ApplicationRedirectUris("example_spa",
///     application_id=example.id,
///     type="SPA",
///     redirect_uris=[
///         "https://mobile.example.com/",
///         "https://beta.example.com/",
///     ])
/// example_web = azuread.ApplicationRedirectUris("example_web",
///     application_id=example.id,
///     type="Web",
///     redirect_uris=[
///         "https://app.example.com/",
///         "https://classic.example.com/",
///         "urn:ietf:wg:oauth:2.0:oob",
///     ])
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
///     var examplePublic = new AzureAD.ApplicationRedirectUris("example_public", new()
///     {
///         ApplicationId = example.Id,
///         Type = "PublicClient",
///         RedirectUris = new[]
///         {
///             "myapp://auth",
///             "sample.mobile.app.bundie.id://auth",
///             "https://login.microsoftonline.com/common/oauth2/nativeclient",
///             "https://login.live.com/oauth20_desktop.srf",
///             "ms-appx-web://Microsoft.AAD.BrokerPlugin/00000000-1111-1111-1111-222222222222",
///             "urn:ietf:wg:oauth:2.0:foo",
///         },
///     });
///
///     var exampleSpa = new AzureAD.ApplicationRedirectUris("example_spa", new()
///     {
///         ApplicationId = example.Id,
///         Type = "SPA",
///         RedirectUris = new[]
///         {
///             "https://mobile.example.com/",
///             "https://beta.example.com/",
///         },
///     });
///
///     var exampleWeb = new AzureAD.ApplicationRedirectUris("example_web", new()
///     {
///         ApplicationId = example.Id,
///         Type = "Web",
///         RedirectUris = new[]
///         {
///             "https://app.example.com/",
///             "https://classic.example.com/",
///             "urn:ietf:wg:oauth:2.0:oob",
///         },
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
/// 		_, err = azuread.NewApplicationRedirectUris(ctx, "example_public", &azuread.ApplicationRedirectUrisArgs{
/// 			ApplicationId: example.ID(),
/// 			Type:          pulumi.String("PublicClient"),
/// 			RedirectUris: pulumi.StringArray{
/// 				pulumi.String("myapp://auth"),
/// 				pulumi.String("sample.mobile.app.bundie.id://auth"),
/// 				pulumi.String("https://login.microsoftonline.com/common/oauth2/nativeclient"),
/// 				pulumi.String("https://login.live.com/oauth20_desktop.srf"),
/// 				pulumi.String("ms-appx-web://Microsoft.AAD.BrokerPlugin/00000000-1111-1111-1111-222222222222"),
/// 				pulumi.String("urn:ietf:wg:oauth:2.0:foo"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationRedirectUris(ctx, "example_spa", &azuread.ApplicationRedirectUrisArgs{
/// 			ApplicationId: example.ID(),
/// 			Type:          pulumi.String("SPA"),
/// 			RedirectUris: pulumi.StringArray{
/// 				pulumi.String("https://mobile.example.com/"),
/// 				pulumi.String("https://beta.example.com/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationRedirectUris(ctx, "example_web", &azuread.ApplicationRedirectUrisArgs{
/// 			ApplicationId: example.ID(),
/// 			Type:          pulumi.String("Web"),
/// 			RedirectUris: pulumi.StringArray{
/// 				pulumi.String("https://app.example.com/"),
/// 				pulumi.String("https://classic.example.com/"),
/// 				pulumi.String("urn:ietf:wg:oauth:2.0:oob"),
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
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationRedirectUris;
/// import com.pulumi.azuread.ApplicationRedirectUrisArgs;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var examplePublic = new ApplicationRedirectUris("examplePublic", ApplicationRedirectUrisArgs.builder()
///             .applicationId(example.id())
///             .type("PublicClient")
///             .redirectUris(
///                 "myapp://auth",
///                 "sample.mobile.app.bundie.id://auth",
///                 "https://login.microsoftonline.com/common/oauth2/nativeclient",
///                 "https://login.live.com/oauth20_desktop.srf",
///                 "ms-appx-web://Microsoft.AAD.BrokerPlugin/00000000-1111-1111-1111-222222222222",
///                 "urn:ietf:wg:oauth:2.0:foo")
///             .build());
///
///         var exampleSpa = new ApplicationRedirectUris("exampleSpa", ApplicationRedirectUrisArgs.builder()
///             .applicationId(example.id())
///             .type("SPA")
///             .redirectUris(
///                 "https://mobile.example.com/",
///                 "https://beta.example.com/")
///             .build());
///
///         var exampleWeb = new ApplicationRedirectUris("exampleWeb", ApplicationRedirectUrisArgs.builder()
///             .applicationId(example.id())
///             .type("Web")
///             .redirectUris(
///                 "https://app.example.com/",
///                 "https://classic.example.com/",
///                 "urn:ietf:wg:oauth:2.0:oob")
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
///   examplePublic:
///     type: azuread:ApplicationRedirectUris
///     name: example_public
///     properties:
///       applicationId: ${example.id}
///       type: PublicClient
///       redirectUris:
///         - myapp://auth
///         - sample.mobile.app.bundie.id://auth
///         - https://login.microsoftonline.com/common/oauth2/nativeclient
///         - https://login.live.com/oauth20_desktop.srf
///         - ms-appx-web://Microsoft.AAD.BrokerPlugin/00000000-1111-1111-1111-222222222222
///         - urn:ietf:wg:oauth:2.0:foo
///   exampleSpa:
///     type: azuread:ApplicationRedirectUris
///     name: example_spa
///     properties:
///       applicationId: ${example.id}
///       type: SPA
///       redirectUris:
///         - https://mobile.example.com/
///         - https://beta.example.com/
///   exampleWeb:
///     type: azuread:ApplicationRedirectUris
///     name: example_web
///     properties:
///       applicationId: ${example.id}
///       type: Web
///       redirectUris:
///         - https://app.example.com/
///         - https://classic.example.com/
///         - urn:ietf:wg:oauth:2.0:oob
/// ```
///
///
/// ## Import
///
/// Application API Access can be imported using the object ID of the application and the URI type, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationRedirectUris:ApplicationRedirectUris example /applications/00000000-0000-0000-0000-000000000000/redirectUris/Web
/// ```
class ApplicationRedirectUris extends pulumi.CustomResource {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// A set of redirect URIs to assign to the application.
  late final pulumi.Output<List<String>> redirectUris;
  /// The type of redirect URIs to manage. Must be one of: `PublicClient`, `SPA`, or `Web`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationRedirectUris].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationRedirectUris]. {@macro pulumi_index_application_redirect_uris_application_redirect_uris_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationRedirectUris(
    String name, {
    ApplicationRedirectUrisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationRedirectUris:ApplicationRedirectUris',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    redirectUris = registerOutput<List<String>>('redirectUris');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ApplicationRedirectUris] resource's state with the given [name] and [id].
  static ApplicationRedirectUris get(
    String name,
    pulumi.Input<String> id, {
    ApplicationRedirectUrisState? state,
  }) {
    return ApplicationRedirectUris._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationRedirectUris._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationRedirectUris:ApplicationRedirectUris',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    redirectUris = registerOutput<List<String>>('redirectUris');
    type = registerOutput<String>('type');
  }
}
