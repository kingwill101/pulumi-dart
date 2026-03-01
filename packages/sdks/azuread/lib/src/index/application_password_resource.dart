import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_password_args.dart';
import 'application_password_state.dart';

/// Manages a password credential associated with an application within Azure Active Directory. These are also referred to as client secrets during authentication.
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
/// *Basic example*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationPassword = new azuread.ApplicationPassword("example", {applicationId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_password = azuread.ApplicationPassword("example", application_id=example.id)
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
///     var exampleApplicationPassword = new AzureAD.ApplicationPassword("example", new()
///     {
///         ApplicationId = example.Id,
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
/// 		_, err = azuread.NewApplicationPassword(ctx, "example", &azuread.ApplicationPasswordArgs{
/// 			ApplicationId: example.ID(),
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
/// import com.pulumi.azuread.ApplicationPassword;
/// import com.pulumi.azuread.ApplicationPasswordArgs;
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
///         var exampleApplicationPassword = new ApplicationPassword("exampleApplicationPassword", ApplicationPasswordArgs.builder()
///             .applicationId(example.id())
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
///   exampleApplicationPassword:
///     type: azuread:ApplicationPassword
///     name: example
///     properties:
///       applicationId: ${example.id}
/// ```
///
///
/// *Time-based rotation*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as time from "@pulumiverse/time";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleRotating = new time.Rotating("example", {rotationDays: 7});
/// const exampleApplicationPassword = new azuread.ApplicationPassword("example", {
///     applicationId: example.id,
///     rotateWhenChanged: {
///         rotation: exampleRotating.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumiverse_time as time
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_rotating = time.Rotating("example", rotation_days=7)
/// example_application_password = azuread.ApplicationPassword("example",
///     application_id=example.id,
///     rotate_when_changed={
///         "rotation": example_rotating.id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleRotating = new Time.Rotating("example", new()
///     {
///         RotationDays = 7,
///     });
///
///     var exampleApplicationPassword = new AzureAD.ApplicationPassword("example", new()
///     {
///         ApplicationId = example.Id,
///         RotateWhenChanged =
///         {
///             { "rotation", exampleRotating.Id },
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
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
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
/// 		exampleRotating, err := time.NewRotating(ctx, "example", &time.RotatingArgs{
/// 			RotationDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationPassword(ctx, "example", &azuread.ApplicationPasswordArgs{
/// 			ApplicationId: example.ID(),
/// 			RotateWhenChanged: pulumi.StringMap{
/// 				"rotation": exampleRotating.ID(),
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
/// import com.pulumiverse.time.Rotating;
/// import com.pulumiverse.time.RotatingArgs;
/// import com.pulumi.azuread.ApplicationPassword;
/// import com.pulumi.azuread.ApplicationPasswordArgs;
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
///         var exampleRotating = new Rotating("exampleRotating", RotatingArgs.builder()
///             .rotationDays(7)
///             .build());
///
///         var exampleApplicationPassword = new ApplicationPassword("exampleApplicationPassword", ApplicationPasswordArgs.builder()
///             .applicationId(example.id())
///             .rotateWhenChanged(Map.of("rotation", exampleRotating.id()))
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
///   exampleRotating:
///     type: time:Rotating
///     name: example
///     properties:
///       rotationDays: 7
///   exampleApplicationPassword:
///     type: azuread:ApplicationPassword
///     name: example
///     properties:
///       applicationId: ${example.id}
///       rotateWhenChanged:
///         rotation: ${exampleRotating.id}
/// ```
///
///
/// ## Import
///
/// This resource does not support importing.
class ApplicationPasswordResource extends pulumi.CustomResource {
  /// The resource ID of the application for which this password should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// A display name for the password. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> displayName;
  /// The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  late final pulumi.Output<String> endDate;
  /// A relative duration for which the password is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  late final pulumi.Output<String?> endDateRelative;
  /// A UUID used to uniquely identify this password credential.
  late final pulumi.Output<String> keyId;
  /// A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> rotateWhenChanged;
  /// The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  late final pulumi.Output<String> startDate;
  /// The password for this application, which is generated by Azure Active Directory.
  late final pulumi.Output<String> value;

  /// Creates a new [ApplicationPasswordResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationPasswordResource]. {@macro pulumi_index_application_password_application_password_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationPasswordResource(
    String name, {
    ApplicationPasswordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationPassword:ApplicationPassword',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.displayName = registerOutput<String>('displayName');
    this.endDate = registerOutput<String>('endDate');
    this.endDateRelative = registerOutput<String?>('endDateRelative');
    this.keyId = registerOutput<String>('keyId');
    this.rotateWhenChanged = registerOutput<Map<String, String>?>('rotateWhenChanged');
    this.startDate = registerOutput<String>('startDate');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [ApplicationPasswordResource] resource's state with the given [name] and [id].
  static ApplicationPasswordResource get(
    String name,
    pulumi.Input<String> id, {
    ApplicationPasswordState? state,
  }) {
    return ApplicationPasswordResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationPasswordResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationPassword:ApplicationPassword',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.displayName = registerOutput<String>('displayName');
    this.endDate = registerOutput<String>('endDate');
    this.endDateRelative = registerOutput<String?>('endDateRelative');
    this.keyId = registerOutput<String>('keyId');
    this.rotateWhenChanged = registerOutput<Map<String, String>?>('rotateWhenChanged');
    this.startDate = registerOutput<String>('startDate');
    this.value = registerOutput<String>('value');
  }
}
