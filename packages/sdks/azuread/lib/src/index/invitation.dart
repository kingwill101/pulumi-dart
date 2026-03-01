import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_args.dart';
import 'invitation_message.dart';
import 'invitation_state.dart';

/// Manages an invitation of a guest user within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `User.Invite.All`, `User.ReadWrite.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Guest Inviter`, `User Administrator` or `Global Administrator`
///
/// ## Example Usage
///
/// *Basic example*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Invitation("example", {
///     userEmailAddress: "jdoe@example.com",
///     redirectUrl: "https://portal.azure.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Invitation("example",
///     user_email_address="jdoe@example.com",
///     redirect_url="https://portal.azure.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Invitation("example", new()
///     {
///         UserEmailAddress = "jdoe@example.com",
///         RedirectUrl = "https://portal.azure.com",
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
/// 		_, err := azuread.NewInvitation(ctx, "example", &azuread.InvitationArgs{
/// 			UserEmailAddress: pulumi.String("jdoe@example.com"),
/// 			RedirectUrl:      pulumi.String("https://portal.azure.com"),
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
/// import com.pulumi.azuread.Invitation;
/// import com.pulumi.azuread.InvitationArgs;
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
///         var example = new Invitation("example", InvitationArgs.builder()
///             .userEmailAddress("jdoe@example.com")
///             .redirectUrl("https://portal.azure.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Invitation
///     properties:
///       userEmailAddress: jdoe@example.com
///       redirectUrl: https://portal.azure.com
/// ```
///
///
/// *Invitation with standard message*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Invitation("example", {
///     userEmailAddress: "jdoe@example.com",
///     redirectUrl: "https://portal.azure.com",
///     message: {
///         language: "en-US",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Invitation("example",
///     user_email_address="jdoe@example.com",
///     redirect_url="https://portal.azure.com",
///     message={
///         "language": "en-US",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Invitation("example", new()
///     {
///         UserEmailAddress = "jdoe@example.com",
///         RedirectUrl = "https://portal.azure.com",
///         Message = new AzureAD.Inputs.InvitationMessageArgs
///         {
///             Language = "en-US",
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
/// 		_, err := azuread.NewInvitation(ctx, "example", &azuread.InvitationArgs{
/// 			UserEmailAddress: pulumi.String("jdoe@example.com"),
/// 			RedirectUrl:      pulumi.String("https://portal.azure.com"),
/// 			Message: &azuread.InvitationMessageArgs{
/// 				Language: pulumi.String("en-US"),
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
/// import com.pulumi.azuread.Invitation;
/// import com.pulumi.azuread.InvitationArgs;
/// import com.pulumi.azuread.inputs.InvitationMessageArgs;
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
///         var example = new Invitation("example", InvitationArgs.builder()
///             .userEmailAddress("jdoe@example.com")
///             .redirectUrl("https://portal.azure.com")
///             .message(InvitationMessageArgs.builder()
///                 .language("en-US")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Invitation
///     properties:
///       userEmailAddress: jdoe@example.com
///       redirectUrl: https://portal.azure.com
///       message:
///         language: en-US
/// ```
///
///
/// *Invitation with custom message body and an additional recipient*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Invitation("example", {
///     userDisplayName: "Bob Bobson",
///     userEmailAddress: "bbobson@example.com",
///     redirectUrl: "https://portal.azure.com",
///     message: {
///         additionalRecipients: "aaliceberg@example.com",
///         body: "Hello there! You are invited to join my Azure tenant!",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Invitation("example",
///     user_display_name="Bob Bobson",
///     user_email_address="bbobson@example.com",
///     redirect_url="https://portal.azure.com",
///     message={
///         "additional_recipients": "aaliceberg@example.com",
///         "body": "Hello there! You are invited to join my Azure tenant!",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Invitation("example", new()
///     {
///         UserDisplayName = "Bob Bobson",
///         UserEmailAddress = "bbobson@example.com",
///         RedirectUrl = "https://portal.azure.com",
///         Message = new AzureAD.Inputs.InvitationMessageArgs
///         {
///             AdditionalRecipients = "aaliceberg@example.com",
///             Body = "Hello there! You are invited to join my Azure tenant!",
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
/// 		_, err := azuread.NewInvitation(ctx, "example", &azuread.InvitationArgs{
/// 			UserDisplayName:  pulumi.String("Bob Bobson"),
/// 			UserEmailAddress: pulumi.String("bbobson@example.com"),
/// 			RedirectUrl:      pulumi.String("https://portal.azure.com"),
/// 			Message: &azuread.InvitationMessageArgs{
/// 				AdditionalRecipients: pulumi.String("aaliceberg@example.com"),
/// 				Body:                 pulumi.String("Hello there! You are invited to join my Azure tenant!"),
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
/// import com.pulumi.azuread.Invitation;
/// import com.pulumi.azuread.InvitationArgs;
/// import com.pulumi.azuread.inputs.InvitationMessageArgs;
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
///         var example = new Invitation("example", InvitationArgs.builder()
///             .userDisplayName("Bob Bobson")
///             .userEmailAddress("bbobson@example.com")
///             .redirectUrl("https://portal.azure.com")
///             .message(InvitationMessageArgs.builder()
///                 .additionalRecipients("aaliceberg@example.com")
///                 .body("Hello there! You are invited to join my Azure tenant!")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Invitation
///     properties:
///       userDisplayName: Bob Bobson
///       userEmailAddress: bbobson@example.com
///       redirectUrl: https://portal.azure.com
///       message:
///         additionalRecipients: aaliceberg@example.com
///         body: Hello there! You are invited to join my Azure tenant!
/// ```
///
///
/// ## Import
///
/// This resource does not support importing.
class Invitation extends pulumi.CustomResource {
  /// A `message` block as documented below, which configures the message being sent to the invited user. If this block is omitted, no message will be sent.
  late final pulumi.Output<InvitationMessage?> message;
  /// The URL the user can use to redeem their invitation.
  late final pulumi.Output<String> redeemUrl;
  /// The URL that the user should be redirected to once the invitation is redeemed.
  late final pulumi.Output<String> redirectUrl;
  /// The display name of the user being invited.
  late final pulumi.Output<String?> userDisplayName;
  /// The email address of the user being invited.
  late final pulumi.Output<String> userEmailAddress;
  /// Object ID of the invited user.
  late final pulumi.Output<String> userId;
  /// The user type of the user being invited. Must be one of `Guest` or `Member`. Only Global Administrators can invite users as members. Defaults to `Guest`.
  late final pulumi.Output<String?> userType;

  /// Creates a new [Invitation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Invitation]. {@macro pulumi_index_invitation_invitation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Invitation(
    String name, {
    InvitationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/invitation:Invitation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.message = registerOutput<InvitationMessage?>('message');
    this.redeemUrl = registerOutput<String>('redeemUrl');
    this.redirectUrl = registerOutput<String>('redirectUrl');
    this.userDisplayName = registerOutput<String?>('userDisplayName');
    this.userEmailAddress = registerOutput<String>('userEmailAddress');
    this.userId = registerOutput<String>('userId');
    this.userType = registerOutput<String?>('userType');
  }

  /// Gets an existing [Invitation] resource's state with the given [name] and [id].
  static Invitation get(
    String name,
    pulumi.Input<String> id, {
    InvitationState? state,
  }) {
    return Invitation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Invitation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/invitation:Invitation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.message = registerOutput<InvitationMessage?>('message');
    this.redeemUrl = registerOutput<String>('redeemUrl');
    this.redirectUrl = registerOutput<String>('redirectUrl');
    this.userDisplayName = registerOutput<String?>('userDisplayName');
    this.userEmailAddress = registerOutput<String>('userEmailAddress');
    this.userId = registerOutput<String>('userId');
    this.userType = registerOutput<String?>('userType');
  }
}
