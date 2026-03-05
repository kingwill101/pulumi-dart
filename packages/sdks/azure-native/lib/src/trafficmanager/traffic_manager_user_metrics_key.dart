import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing Traffic Manager User Metrics.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2017-09-01-preview, 2018-04-01, 2018-08-01, 2022-04-01-preview, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native trafficmanager [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TrafficManagerUserMetricsKeys-PUT
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trafficManagerUserMetricsKey = new AzureNative.TrafficManager.TrafficManagerUserMetricsKey("trafficManagerUserMetricsKey");
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
/// 	trafficmanager "github.com/pulumi/pulumi-azure-native-sdk/trafficmanager/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := trafficmanager.NewTrafficManagerUserMetricsKey(ctx, "trafficManagerUserMetricsKey", nil)
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
/// import com.pulumi.azurenative.trafficmanager.TrafficManagerUserMetricsKey;
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
///         var trafficManagerUserMetricsKey = new TrafficManagerUserMetricsKey("trafficManagerUserMetricsKey");
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
/// const trafficManagerUserMetricsKey = new azure_native.trafficmanager.TrafficManagerUserMetricsKey("trafficManagerUserMetricsKey", {});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// traffic_manager_user_metrics_key = azure_native.trafficmanager.TrafficManagerUserMetricsKey("trafficManagerUserMetricsKey")
///
/// ```
///
/// ```yaml
/// resources:
///   trafficManagerUserMetricsKey:
///     type: azure-native:trafficmanager:TrafficManagerUserMetricsKey
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
/// $ pulumi import azure-native:trafficmanager:TrafficManagerUserMetricsKey default /subscriptions/{subscriptionId}/providers/Microsoft.Network/trafficManagerUserMetricsKeys/default
/// ```
class TrafficManagerUserMetricsKey extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The key returned by the User Metrics operation.
  late final pulumi.Output<String?> key;
  /// The name of the resource
  late final pulumi.Output<String?> name;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  late final pulumi.Output<String?> type;

  /// Creates a new [TrafficManagerUserMetricsKey].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  TrafficManagerUserMetricsKey(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:trafficmanager:TrafficManagerUserMetricsKey',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    key = registerOutput<String?>('key');
    this.name = registerOutput<String?>('name');
    type = registerOutput<String?>('type');
  }
}
