import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_federated_identity_credential_args.dart';
import 'application_federated_identity_credential_state.dart';

/// Manages a federated identity credential associated with an application within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// > When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationFederatedIdentityCredential = new azuread.ApplicationFederatedIdentityCredential("example", {
///     applicationId: example.id,
///     displayName: "my-repo-deploy",
///     description: "Deployments for my-repo",
///     audiences: ["api://AzureADTokenExchange"],
///     issuer: "https://token.actions.githubusercontent.com",
///     subject: "repo:my-organization/my-repo:environment:prod",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_federated_identity_credential = azuread.ApplicationFederatedIdentityCredential("example",
///     application_id=example.id,
///     display_name="my-repo-deploy",
///     description="Deployments for my-repo",
///     audiences=["api://AzureADTokenExchange"],
///     issuer="https://token.actions.githubusercontent.com",
///     subject="repo:my-organization/my-repo:environment:prod")
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
///     var exampleApplicationFederatedIdentityCredential = new AzureAD.ApplicationFederatedIdentityCredential("example", new()
///     {
///         ApplicationId = example.Id,
///         DisplayName = "my-repo-deploy",
///         Description = "Deployments for my-repo",
///         Audiences = new[]
///         {
///             "api://AzureADTokenExchange",
///         },
///         Issuer = "https://token.actions.githubusercontent.com",
///         Subject = "repo:my-organization/my-repo:environment:prod",
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
/// 		_, err = azuread.NewApplicationFederatedIdentityCredential(ctx, "example", &azuread.ApplicationFederatedIdentityCredentialArgs{
/// 			ApplicationId: example.ID(),
/// 			DisplayName:   pulumi.String("my-repo-deploy"),
/// 			Description:   pulumi.String("Deployments for my-repo"),
/// 			Audiences: pulumi.StringArray{
/// 				pulumi.String("api://AzureADTokenExchange"),
/// 			},
/// 			Issuer:  pulumi.String("https://token.actions.githubusercontent.com"),
/// 			Subject: pulumi.String("repo:my-organization/my-repo:environment:prod"),
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
/// import com.pulumi.azuread.ApplicationFederatedIdentityCredential;
/// import com.pulumi.azuread.ApplicationFederatedIdentityCredentialArgs;
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
///         var exampleApplicationFederatedIdentityCredential = new ApplicationFederatedIdentityCredential("exampleApplicationFederatedIdentityCredential", ApplicationFederatedIdentityCredentialArgs.builder()
///             .applicationId(example.id())
///             .displayName("my-repo-deploy")
///             .description("Deployments for my-repo")
///             .audiences("api://AzureADTokenExchange")
///             .issuer("https://token.actions.githubusercontent.com")
///             .subject("repo:my-organization/my-repo:environment:prod")
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
///   exampleApplicationFederatedIdentityCredential:
///     type: azuread:ApplicationFederatedIdentityCredential
///     name: example
///     properties:
///       applicationId: ${example.id}
///       displayName: my-repo-deploy
///       description: Deployments for my-repo
///       audiences:
///         - api://AzureADTokenExchange
///       issuer: https://token.actions.githubusercontent.com
///       subject: repo:my-organization/my-repo:environment:prod
/// ```
///
///
/// ## Import
///
/// Federated Identity Credentials can be imported using the object ID of the associated application and the ID of the federated identity credential, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/applicationFederatedIdentityCredential:ApplicationFederatedIdentityCredential example 00000000-0000-0000-0000-000000000000/federatedIdentityCredential/11111111-1111-1111-1111-111111111111
/// ```
///
/// > This ID format is unique to Terraform and is composed of the application's object ID, the string "federatedIdentityCredential" and the credential ID in the format `{ObjectId}/federatedIdentityCredential/{CredentialId}`.
class ApplicationFederatedIdentityCredential extends pulumi.CustomResource {
  /// The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  late final pulumi.Output<List<String>> audiences;
  /// A UUID used to uniquely identify this federated identity credential.
  late final pulumi.Output<String> credentialId;
  /// A description for the federated identity credential.
  late final pulumi.Output<String?> description;
  /// A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  late final pulumi.Output<String> displayName;
  /// The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app.
  late final pulumi.Output<String> issuer;
  /// The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app.
  late final pulumi.Output<String> subject;

  /// Creates a new [ApplicationFederatedIdentityCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationFederatedIdentityCredential]. {@macro pulumi_index_application_federated_identity_credential_application_federated_identity_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationFederatedIdentityCredential(
    String name, {
    ApplicationFederatedIdentityCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationFederatedIdentityCredential:ApplicationFederatedIdentityCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.audiences = registerOutput<List<String>>('audiences');
    this.credentialId = registerOutput<String>('credentialId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.issuer = registerOutput<String>('issuer');
    this.subject = registerOutput<String>('subject');
  }

  /// Gets an existing [ApplicationFederatedIdentityCredential] resource's state with the given [name] and [id].
  static ApplicationFederatedIdentityCredential get(
    String name,
    pulumi.Input<String> id, {
    ApplicationFederatedIdentityCredentialState? state,
  }) {
    return ApplicationFederatedIdentityCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationFederatedIdentityCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationFederatedIdentityCredential:ApplicationFederatedIdentityCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.audiences = registerOutput<List<String>>('audiences');
    this.credentialId = registerOutput<String>('credentialId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.issuer = registerOutput<String>('issuer');
    this.subject = registerOutput<String>('subject');
  }
}
