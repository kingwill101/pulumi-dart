import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_flow_attribute_args.dart';
import 'user_flow_attribute_state.dart';

/// Manages user flow attributes in an Azure Active Directory (Azure AD) tenant.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `IdentityUserFlow.ReadWrite.All`
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
/// const example = new azuread.UserFlowAttribute("example", {
///     displayName: "Hobby",
///     description: "Your hobby",
///     dataType: "string",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.UserFlowAttribute("example",
///     display_name="Hobby",
///     description="Your hobby",
///     data_type="string")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.UserFlowAttribute("example", new()
///     {
///         DisplayName = "Hobby",
///         Description = "Your hobby",
///         DataType = "string",
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
/// 		_, err := azuread.NewUserFlowAttribute(ctx, "example", &azuread.UserFlowAttributeArgs{
/// 			DisplayName: pulumi.String("Hobby"),
/// 			Description: pulumi.String("Your hobby"),
/// 			DataType:    pulumi.String("string"),
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
/// import com.pulumi.azuread.UserFlowAttribute;
/// import com.pulumi.azuread.UserFlowAttributeArgs;
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
///         var example = new UserFlowAttribute("example", UserFlowAttributeArgs.builder()
///             .displayName("Hobby")
///             .description("Your hobby")
///             .dataType("string")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:UserFlowAttribute
///     properties:
///       displayName: Hobby
///       description: Your hobby
///       dataType: string
/// ```
///
///
/// ## Import
///
/// User flow attributes can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/userFlowAttribute:UserFlowAttribute example extension_ecc9f88db2924942b8a96f44873616fe_Hobbyjkorv
/// ```
///
/// &gt; This ID can be queried using the [User Flow Attributes API](https://learn.microsoft.com/en-us/graph/api/identityuserflowattribute-list?view=graph-rest-1.0&tabs=http).
class UserFlowAttribute extends pulumi.CustomResource {
  /// The type of the user flow attribute. Values include `builtIn`, `custom` or `required`.
  late final pulumi.Output<String> attributeType;

  /// The data type of the user flow attribute. Possible values are `boolean`, `dateTime`, `int64`, `string` or `stringCollection`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataType;

  /// The description of the user flow attribute that is shown to the user at the time of sign-up.
  late final pulumi.Output<String> description;

  /// The display name of the user flow attribute. Changing this forces a new resource to be created.
  late final pulumi.Output<String> displayName;

  /// Creates a new [UserFlowAttribute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserFlowAttribute]. {@macro pulumi_index_user_flow_attribute_user_flow_attribute_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserFlowAttribute(
    String name, {
    UserFlowAttributeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/userFlowAttribute:UserFlowAttribute',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attributeType = registerOutput<String>('attributeType');
    dataType = registerOutput<String>('dataType');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
  }

  /// Gets an existing [UserFlowAttribute] resource's state with the given [name] and [id].
  static UserFlowAttribute get(
    String name,
    pulumi.Input<String> id, {
    UserFlowAttributeState? state,
  }) {
    return UserFlowAttribute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserFlowAttribute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/userFlowAttribute:UserFlowAttribute',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attributeType = registerOutput<String>('attributeType');
    dataType = registerOutput<String>('dataType');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
  }
}
