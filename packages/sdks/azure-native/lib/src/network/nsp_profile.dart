import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_profile_args.dart';

/// The network security perimeter profile resource
///
/// Uses Azure REST API version 2023-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NspProfilesPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nspProfile = new AzureNative.Network.NspProfile("nspProfile", new()
///     {
///         NetworkSecurityPerimeterName = "nsp1",
///         ProfileName = "profile1",
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewNspProfile(ctx, "nspProfile", &network.NspProfileArgs{
/// 			NetworkSecurityPerimeterName: pulumi.String("nsp1"),
/// 			ProfileName:                  pulumi.String("profile1"),
/// 			ResourceGroupName:            pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.NspProfile;
/// import com.pulumi.azurenative.network.NspProfileArgs;
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
///         var nspProfile = new NspProfile("nspProfile", NspProfileArgs.builder()
///             .networkSecurityPerimeterName("nsp1")
///             .profileName("profile1")
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const nspProfile = new azure_native.network.NspProfile("nspProfile", {
///     networkSecurityPerimeterName: "nsp1",
///     profileName: "profile1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// nsp_profile = azure_native.network.NspProfile("nspProfile",
///     network_security_perimeter_name="nsp1",
///     profile_name="profile1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   nspProfile:
///     type: azure-native:network:NspProfile
///     properties:
///       networkSecurityPerimeterName: nsp1
///       profileName: profile1
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:NspProfile profile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/profiles/{profileName}
/// ```
class NspProfile extends pulumi.CustomResource {
  /// Version number that increases with every update to access rules within the profile.
  late final pulumi.Output<String> accessRulesVersion;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Version number that increases with every update to diagnostic settings within the profile.
  late final pulumi.Output<String> diagnosticSettingsVersion;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NspProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NspProfile]. {@macro pulumi_network_nsp_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NspProfile(
    String name, {
    NspProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:NspProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessRulesVersion = registerOutput<String>('accessRulesVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    diagnosticSettingsVersion = registerOutput<String>(
      'diagnosticSettingsVersion',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
