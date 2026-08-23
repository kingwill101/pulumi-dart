import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_test_args.dart';

/// The Connection Monitor Test class.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Connection Monitor Test
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionMonitorTest = new AzureNative.Peering.ConnectionMonitorTest("connectionMonitorTest", new()
///     {
///         ConnectionMonitorTestName = "connectionMonitorTestName",
///         Destination = "Example Destination",
///         DestinationPort = 443,
///         PeeringServiceName = "peeringServiceName",
///         ResourceGroupName = "rgName",
///         SourceAgent = "Example Source Agent",
///         TestFrequencyInSec = 30,
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
/// 		_, err := peering.NewConnectionMonitorTest(ctx, "connectionMonitorTest", &peering.ConnectionMonitorTestArgs{
/// 			ConnectionMonitorTestName: pulumi.String("connectionMonitorTestName"),
/// 			Destination:               pulumi.String("Example Destination"),
/// 			DestinationPort:           pulumi.Int(443),
/// 			PeeringServiceName:        pulumi.String("peeringServiceName"),
/// 			ResourceGroupName:         pulumi.String("rgName"),
/// 			SourceAgent:               pulumi.String("Example Source Agent"),
/// 			TestFrequencyInSec:        pulumi.Int(30),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_peering_connectionmonitortest" "connectionMonitorTest" {
///   connection_monitor_test_name = "connectionMonitorTestName"
///   destination                  = "Example Destination"
///   destination_port             = 443
///   peering_service_name         = "peeringServiceName"
///   resource_group_name          = "rgName"
///   source_agent                 = "Example Source Agent"
///   test_frequency_in_sec        = 30
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
/// import com.pulumi.azurenative.peering.ConnectionMonitorTest;
/// import com.pulumi.azurenative.peering.ConnectionMonitorTestArgs;
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
///         var connectionMonitorTest = new ConnectionMonitorTest("connectionMonitorTest", ConnectionMonitorTestArgs.builder()
///             .connectionMonitorTestName("connectionMonitorTestName")
///             .destination("Example Destination")
///             .destinationPort(443)
///             .peeringServiceName("peeringServiceName")
///             .resourceGroupName("rgName")
///             .sourceAgent("Example Source Agent")
///             .testFrequencyInSec(30)
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
/// const connectionMonitorTest = new azure_native.peering.ConnectionMonitorTest("connectionMonitorTest", {
///     connectionMonitorTestName: "connectionMonitorTestName",
///     destination: "Example Destination",
///     destinationPort: 443,
///     peeringServiceName: "peeringServiceName",
///     resourceGroupName: "rgName",
///     sourceAgent: "Example Source Agent",
///     testFrequencyInSec: 30,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_monitor_test = azure_native.peering.ConnectionMonitorTest("connectionMonitorTest",
///     connection_monitor_test_name="connectionMonitorTestName",
///     destination="Example Destination",
///     destination_port=443,
///     peering_service_name="peeringServiceName",
///     resource_group_name="rgName",
///     source_agent="Example Source Agent",
///     test_frequency_in_sec=30)
///
/// ```
///
/// ```yaml
/// resources:
///   connectionMonitorTest:
///     type: azure-native:peering:ConnectionMonitorTest
///     properties:
///       connectionMonitorTestName: connectionMonitorTestName
///       destination: Example Destination
///       destinationPort: 443
///       peeringServiceName: peeringServiceName
///       resourceGroupName: rgName
///       sourceAgent: Example Source Agent
///       testFrequencyInSec: 30
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
/// $ pulumi import azure-native:peering:ConnectionMonitorTest connectionMonitorTestName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peeringServices/{peeringServiceName}/connectionMonitorTests/{connectionMonitorTestName}
/// ```
class ConnectionMonitorTest extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Connection Monitor test destination
  late final pulumi.Output<String?> destination;
  /// The Connection Monitor test destination port
  late final pulumi.Output<int?> destinationPort;
  /// The flag that indicates if the Connection Monitor test is successful or not.
  late final pulumi.Output<bool> isTestSuccessful;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The path representing the Connection Monitor test.
  late final pulumi.Output<List<String>> path;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The Connection Monitor test source agent
  late final pulumi.Output<String?> sourceAgent;
  /// The Connection Monitor test frequency in seconds
  late final pulumi.Output<int?> testFrequencyInSec;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionMonitorTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionMonitorTest]. {@macro pulumi_peering_connection_monitor_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionMonitorTest(
    String name, {
    ConnectionMonitorTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:peering:ConnectionMonitorTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    destination = registerOutput<String?>('destination');
    destinationPort = registerOutput<int?>('destinationPort');
    isTestSuccessful = registerOutput<bool>('isTestSuccessful');
    this.name = registerOutput<String>('name');
    path = registerOutput<List<String>>('path');
    provisioningState = registerOutput<String>('provisioningState');
    sourceAgent = registerOutput<String?>('sourceAgent');
    testFrequencyInSec = registerOutput<int?>('testFrequencyInSec');
    type = registerOutput<String>('type');
  }
}
