import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_prefix_args.dart';

/// The customer's prefix that is registered by the peering service provider.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a registered prefix for the peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registeredPrefix = new AzureNative.Peering.RegisteredPrefix("registeredPrefix", new()
///     {
///         PeeringName = "peeringName",
///         Prefix = "10.22.20.0/24",
///         RegisteredPrefixName = "registeredPrefixName",
///         ResourceGroupName = "rgName",
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
/// 	peering "github.com/pulumi/pulumi-azure-native-sdk/peering/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := peering.NewRegisteredPrefix(ctx, "registeredPrefix", &peering.RegisteredPrefixArgs{
/// 			PeeringName:          pulumi.String("peeringName"),
/// 			Prefix:               pulumi.String("10.22.20.0/24"),
/// 			RegisteredPrefixName: pulumi.String("registeredPrefixName"),
/// 			ResourceGroupName:    pulumi.String("rgName"),
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
/// import com.pulumi.azurenative.peering.RegisteredPrefix;
/// import com.pulumi.azurenative.peering.RegisteredPrefixArgs;
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
///         var registeredPrefix = new RegisteredPrefix("registeredPrefix", RegisteredPrefixArgs.builder()
///             .peeringName("peeringName")
///             .prefix("10.22.20.0/24")
///             .registeredPrefixName("registeredPrefixName")
///             .resourceGroupName("rgName")
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
/// const registeredPrefix = new azure_native.peering.RegisteredPrefix("registeredPrefix", {
///     peeringName: "peeringName",
///     prefix: "10.22.20.0/24",
///     registeredPrefixName: "registeredPrefixName",
///     resourceGroupName: "rgName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registered_prefix = azure_native.peering.RegisteredPrefix("registeredPrefix",
///     peering_name="peeringName",
///     prefix="10.22.20.0/24",
///     registered_prefix_name="registeredPrefixName",
///     resource_group_name="rgName")
///
/// ```
///
/// ```yaml
/// resources:
///   registeredPrefix:
///     type: azure-native:peering:RegisteredPrefix
///     properties:
///       peeringName: peeringName
///       prefix: 10.22.20.0/24
///       registeredPrefixName: registeredPrefixName
///       resourceGroupName: rgName
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
/// $ pulumi import azure-native:peering:RegisteredPrefix registeredPrefixName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peerings/{peeringName}/registeredPrefixes/{registeredPrefixName}
/// ```
class RegisteredPrefix extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The error message associated with the validation state, if any.
  late final pulumi.Output<String> errorMessage;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The peering service prefix key that is to be shared with the customer.
  late final pulumi.Output<String> peeringServicePrefixKey;

  /// The customer's prefix from which traffic originates.
  late final pulumi.Output<String?> prefix;

  /// The prefix validation state.
  late final pulumi.Output<String> prefixValidationState;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [RegisteredPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegisteredPrefix]. {@macro pulumi_peering_registered_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegisteredPrefix(
    String name, {
    RegisteredPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:peering:RegisteredPrefix',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errorMessage = registerOutput<String>('errorMessage');
    this.name = registerOutput<String>('name');
    peeringServicePrefixKey = registerOutput<String>('peeringServicePrefixKey');
    prefix = registerOutput<String?>('prefix');
    prefixValidationState = registerOutput<String>('prefixValidationState');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
