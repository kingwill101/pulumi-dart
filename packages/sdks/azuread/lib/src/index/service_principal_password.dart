import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_password_args.dart';
import 'service_principal_password_state.dart';

/// Manages a password credential associated with a service principal within Azure Active Directory. See also the azuread.ApplicationPassword resource.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of _both_ the linked application registration, _and_ the service principal being managed.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
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
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleServicePrincipalPassword = new azuread.ServicePrincipalPassword("example", {servicePrincipalId: exampleServicePrincipal.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_service_principal_password = azuread.ServicePrincipalPassword("example", service_principal_id=example_service_principal.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleServicePrincipalPassword = new AzureAD.ServicePrincipalPassword("example", new()
///     {
///         ServicePrincipalId = exampleServicePrincipal.Id,
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
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalPassword(ctx, "example", &azuread.ServicePrincipalPasswordArgs{
/// 			ServicePrincipalId: exampleServicePrincipal.ID(),
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.ServicePrincipalPassword;
/// import com.pulumi.azuread.ServicePrincipalPasswordArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleServicePrincipalPassword = new ServicePrincipalPassword("exampleServicePrincipalPassword", ServicePrincipalPasswordArgs.builder()
///             .servicePrincipalId(exampleServicePrincipal.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleServicePrincipalPassword:
///     type: azuread:ServicePrincipalPassword
///     name: example
///     properties:
///       servicePrincipalId: ${exampleServicePrincipal.id}
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
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleRotating = new time.Rotating("example", {rotationDays: 7});
/// const exampleServicePrincipalPassword = new azuread.ServicePrincipalPassword("example", {
///     servicePrincipalId: exampleServicePrincipal.id,
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
/// example = azuread.Application("example", display_name="example")
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_rotating = time.Rotating("example", rotation_days=7)
/// example_service_principal_password = azuread.ServicePrincipalPassword("example",
///     service_principal_id=example_service_principal.id,
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
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleRotating = new Time.Rotating("example", new()
///     {
///         RotationDays = 7,
///     });
///
///     var exampleServicePrincipalPassword = new AzureAD.ServicePrincipalPassword("example", new()
///     {
///         ServicePrincipalId = exampleServicePrincipal.Id,
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
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
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
/// 		_, err = azuread.NewServicePrincipalPassword(ctx, "example", &azuread.ServicePrincipalPasswordArgs{
/// 			ServicePrincipalId: exampleServicePrincipal.ID(),
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumiverse.time.Rotating;
/// import com.pulumiverse.time.RotatingArgs;
/// import com.pulumi.azuread.ServicePrincipalPassword;
/// import com.pulumi.azuread.ServicePrincipalPasswordArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleRotating = new Rotating("exampleRotating", RotatingArgs.builder()
///             .rotationDays(7)
///             .build());
///
///         var exampleServicePrincipalPassword = new ServicePrincipalPassword("exampleServicePrincipalPassword", ServicePrincipalPasswordArgs.builder()
///             .servicePrincipalId(exampleServicePrincipal.id())
///             .rotateWhenChanged(Map.of("rotation", exampleRotating.id()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleRotating:
///     type: time:Rotating
///     name: example
///     properties:
///       rotationDays: 7
///   exampleServicePrincipalPassword:
///     type: azuread:ServicePrincipalPassword
///     name: example
///     properties:
///       servicePrincipalId: ${exampleServicePrincipal.id}
///       rotateWhenChanged:
///         rotation: ${exampleRotating.id}
/// ```
///
///
/// ## Import
///
/// This resource does not support importing.
class ServicePrincipalPassword extends pulumi.CustomResource {
  /// A display name for the password.
  late final pulumi.Output<String> displayName;

  /// The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  late final pulumi.Output<String> endDate;

  /// A relative duration for which the password is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  late final pulumi.Output<String?> endDateRelative;

  /// A UUID used to uniquely identify this password credential.
  late final pulumi.Output<String> keyId;

  /// A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> rotateWhenChanged;

  /// The ID of the service principal for which this password should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> servicePrincipalId;

  /// The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  late final pulumi.Output<String> startDate;

  /// The password for this service principal, which is generated by Azure Active Directory.
  late final pulumi.Output<String> value;

  /// Creates a new [ServicePrincipalPassword].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePrincipalPassword]. {@macro pulumi_index_service_principal_password_service_principal_password_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePrincipalPassword(
    String name, {
    ServicePrincipalPasswordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/servicePrincipalPassword:ServicePrincipalPassword',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    displayName = registerOutput<String>('displayName');
    endDate = registerOutput<String>('endDate');
    endDateRelative = registerOutput<String?>('endDateRelative');
    keyId = registerOutput<String>('keyId');
    rotateWhenChanged = registerOutput<Map<String, String>?>(
      'rotateWhenChanged',
    );
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    startDate = registerOutput<String>('startDate');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [ServicePrincipalPassword] resource's state with the given [name] and [id].
  static ServicePrincipalPassword get(
    String name,
    pulumi.Input<String> id, {
    ServicePrincipalPasswordState? state,
  }) {
    return ServicePrincipalPassword._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePrincipalPassword._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/servicePrincipalPassword:ServicePrincipalPassword',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    displayName = registerOutput<String>('displayName');
    endDate = registerOutput<String>('endDate');
    endDateRelative = registerOutput<String?>('endDateRelative');
    keyId = registerOutput<String>('keyId');
    rotateWhenChanged = registerOutput<Map<String, String>?>(
      'rotateWhenChanged',
    );
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    startDate = registerOutput<String>('startDate');
    value = registerOutput<String>('value');
  }
}
