import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_known_clients_args.dart';
import 'application_known_clients_state.dart';

/// Manages the known client applications for an application registration.
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
/// const client = new azuread.ApplicationRegistration("client", {displayName: "example client"});
/// const exampleApplicationKnownClients = new azuread.ApplicationKnownClients("example", {
///     applicationId: example.id,
///     knownClientIds: [client.clientId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// client = azuread.ApplicationRegistration("client", display_name="example client")
/// example_application_known_clients = azuread.ApplicationKnownClients("example",
///     application_id=example.id,
///     known_client_ids=[client.client_id])
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
///     var client = new AzureAD.ApplicationRegistration("client", new()
///     {
///         DisplayName = "example client",
///     });
///
///     var exampleApplicationKnownClients = new AzureAD.ApplicationKnownClients("example", new()
///     {
///         ApplicationId = example.Id,
///         KnownClientIds = new[]
///         {
///             client.ClientId,
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
/// 		client, err := azuread.NewApplicationRegistration(ctx, "client", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example client"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationKnownClients(ctx, "example", &azuread.ApplicationKnownClientsArgs{
/// 			ApplicationId: example.ID(),
/// 			KnownClientIds: pulumi.StringArray{
/// 				client.ClientId,
/// 			},
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
/// resource "azuread_applicationregistration" "client" {
///   display_name = "example client"
/// }
/// resource "azuread_applicationknownclients" "example" {
///   application_id   = azuread_applicationregistration.example.id
///   known_client_ids = [azuread_applicationregistration.client.client_id]
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
/// import com.pulumi.azuread.ApplicationKnownClients;
/// import com.pulumi.azuread.ApplicationKnownClientsArgs;
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
///         var client = new ApplicationRegistration("client", ApplicationRegistrationArgs.builder()
///             .displayName("example client")
///             .build());
///
///         var exampleApplicationKnownClients = new ApplicationKnownClients("exampleApplicationKnownClients", ApplicationKnownClientsArgs.builder()
///             .applicationId(example.id())
///             .knownClientIds(client.clientId())
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
///   client:
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example client
///   exampleApplicationKnownClients:
///     type: azuread:ApplicationKnownClients
///     name: example
///     properties:
///       applicationId: ${example.id}
///       knownClientIds:
///         - ${client.clientId}
/// ```
///
///
/// ## Import
///
/// Application Known Clients can be imported using the object ID of the application in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationKnownClients:ApplicationKnownClients example /applications/00000000-0000-0000-0000-000000000000/knownClients
/// ```
class ApplicationKnownClients extends pulumi.CustomResource {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// A set of client IDs for the known applications.
  late final pulumi.Output<List<String>> knownClientIds;

  /// Creates a new [ApplicationKnownClients].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationKnownClients]. {@macro pulumi_index_application_known_clients_application_known_clients_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationKnownClients(
    String name, {
    ApplicationKnownClientsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationKnownClients:ApplicationKnownClients',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    knownClientIds = registerOutput<List<String>>('knownClientIds');
  }

  /// Gets an existing [ApplicationKnownClients] resource's state with the given [name] and [id].
  static ApplicationKnownClients get(
    String name,
    pulumi.Input<String> id, {
    ApplicationKnownClientsState? state,
  }) {
    return ApplicationKnownClients._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationKnownClients._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationKnownClients:ApplicationKnownClients',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    knownClientIds = registerOutput<List<String>>('knownClientIds');
  }
}
