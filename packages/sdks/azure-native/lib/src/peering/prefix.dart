import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_service_prefix_event_response.dart';
import 'prefix_args.dart';

/// The peering service prefix class.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a prefix for the peering service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefix = new AzureNative.Peering.Prefix("prefix", new()
///     {
///         PeeringServiceName = "peeringServiceName",
///         PeeringServicePrefixKey = "00000000-0000-0000-0000-000000000000",
///         Prefix = "192.168.1.0/24",
///         PrefixName = "peeringServicePrefixName",
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
/// 		_, err := peering.NewPrefix(ctx, "prefix", &peering.PrefixArgs{
/// 			PeeringServiceName:      pulumi.String("peeringServiceName"),
/// 			PeeringServicePrefixKey: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Prefix:                  pulumi.String("192.168.1.0/24"),
/// 			PrefixName:              pulumi.String("peeringServicePrefixName"),
/// 			ResourceGroupName:       pulumi.String("rgName"),
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
/// import com.pulumi.azurenative.peering.Prefix;
/// import com.pulumi.azurenative.peering.PrefixArgs;
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
///         var prefix = new Prefix("prefix", PrefixArgs.builder()
///             .peeringServiceName("peeringServiceName")
///             .peeringServicePrefixKey("00000000-0000-0000-0000-000000000000")
///             .prefix("192.168.1.0/24")
///             .prefixName("peeringServicePrefixName")
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
/// const prefix = new azure_native.peering.Prefix("prefix", {
///     peeringServiceName: "peeringServiceName",
///     peeringServicePrefixKey: "00000000-0000-0000-0000-000000000000",
///     prefix: "192.168.1.0/24",
///     prefixName: "peeringServicePrefixName",
///     resourceGroupName: "rgName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prefix = azure_native.peering.Prefix("prefix",
///     peering_service_name="peeringServiceName",
///     peering_service_prefix_key="00000000-0000-0000-0000-000000000000",
///     prefix="192.168.1.0/24",
///     prefix_name="peeringServicePrefixName",
///     resource_group_name="rgName")
///
/// ```
///
/// ```yaml
/// resources:
///   prefix:
///     type: azure-native:peering:Prefix
///     properties:
///       peeringServiceName: peeringServiceName
///       peeringServicePrefixKey: 00000000-0000-0000-0000-000000000000
///       prefix: 192.168.1.0/24
///       prefixName: peeringServicePrefixName
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
/// $ pulumi import azure-native:peering:Prefix peeringServicePrefixName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peeringServices/{peeringServiceName}/prefixes/{prefixName}
/// ```
class Prefix extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The error message for validation state
  late final pulumi.Output<String> errorMessage;
  /// The list of events for peering service prefix
  late final pulumi.Output<List<PeeringServicePrefixEventResponse>> events;
  /// The prefix learned type
  late final pulumi.Output<String> learnedType;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The peering service prefix key
  late final pulumi.Output<String?> peeringServicePrefixKey;
  /// The prefix from which your traffic originates.
  late final pulumi.Output<String?> prefix;
  /// The prefix validation state
  late final pulumi.Output<String> prefixValidationState;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Prefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Prefix]. {@macro pulumi_peering_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Prefix(
    String name, {
    PrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:peering:Prefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.events = registerOutput<List<PeeringServicePrefixEventResponse>>('events');
    this.learnedType = registerOutput<String>('learnedType');
    this.name = registerOutput<String>('name');
    this.peeringServicePrefixKey = registerOutput<String?>('peeringServicePrefixKey');
    this.prefix = registerOutput<String?>('prefix');
    this.prefixValidationState = registerOutput<String>('prefixValidationState');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.type = registerOutput<String>('type');
  }
}
