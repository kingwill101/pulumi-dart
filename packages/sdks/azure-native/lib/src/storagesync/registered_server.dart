import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_server_args.dart';
import 'system_data_response.dart';

/// Registered Server resource.
///
/// Uses Azure REST API version 2022-09-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RegisteredServers_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registeredServer = new AzureNative.StorageSync.RegisteredServer("registeredServer", new()
///     {
///         AgentVersion = "1.0.277.0",
///         ApplicationId = "00000000-0000-0000-0000-000000000001",
///         FriendlyName = "afscv-2304-139",
///         Identity = true,
///         ResourceGroupName = "SampleResourceGroup_1",
///         ServerCertificate = "MIIDFjCCAf6gAwIBAgIQQS+DS8uhc4VNzUkTw7wbRjANBgkqhkiG9w0BAQ0FADAzMTEwLwYDVQQDEyhhbmt1c2hiLXByb2QzLnJlZG1vbmQuY29ycC5taWNyb3NvZnQuY29tMB4XDTE3MDgwMzE3MDQyNFoXDTE4MDgwNDE3MDQyNFowMzExMC8GA1UEAxMoYW5rdXNoYi1wcm9kMy5yZWRtb25kLmNvcnAubWljcm9zb2Z0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALDRvV4gmsIy6jGDPiHsXmvgVP749NNP7DopdlbHaNhjFmYINHl0uWylyaZmgJrROt2mnxN/zEyJtGnqYHlzUr4xvGq/qV5pqgdB9tag/sw9i22gfe9PRZ0FmSOZnXMbLYgLiDFqLtut5gHcOuWMj03YnkfoBEKlFBxWbagvW2yxz/Sxi9OVSJOKCaXra0RpcIHrO/KFl6ho2eE1/7Ykmfa8hZvSdoPd5gHdLiQcMB/pxq+mWp1fI6c8vFZoDu7Atn+NXTzYPKUxKzaisF12TsaKpohUsJpbB3Wocb0F5frn614D2pg14ERB5otjAMWw1m65csQWPI6dP8KIYe0+QPkCAwEAAaMmMCQwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwIGCisGAQQBgjcKAwwwDQYJKoZIhvcNAQENBQADggEBAA4RhVIBkw34M1RwakJgHvtjsOFxF1tVQA941NtLokx1l2Z8+GFQkcG4xpZSt+UN6wLerdCbnNhtkCErWUDeaT0jxk4g71Ofex7iM04crT4iHJr8mi96/XnhnkTUs+GDk12VgdeeNEczMZz+8Mxw9dJ5NCnYgTwO0SzGlclRsDvjzkLo8rh2ZG6n/jKrEyNXXo+hOqhupij0QbRP2Tvexdfw201kgN1jdZify8XzJ8Oi0bTS0KpJf2pNPOlooK2bjMUei9ANtEdXwwfVZGWvVh6tJjdv6k14wWWJ1L7zhA1IIVb1J+sQUzJji5iX0DrezjTz1Fg+gAzITaA/WsuujlM=",
///         ServerId = "080d4133-bdb5-40a0-96a0-71a6057bfe9a",
///         ServerOSVersion = "10.0.14393.0",
///         ServerRole = "Standalone",
///         StorageSyncServiceName = "SampleStorageSyncService_1",
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
/// 	storagesync "github.com/pulumi/pulumi-azure-native-sdk/storagesync/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagesync.NewRegisteredServer(ctx, "registeredServer", &storagesync.RegisteredServerArgs{
/// 			AgentVersion:           pulumi.String("1.0.277.0"),
/// 			ApplicationId:          pulumi.String("00000000-0000-0000-0000-000000000001"),
/// 			FriendlyName:           pulumi.String("afscv-2304-139"),
/// 			Identity:               pulumi.Bool(true),
/// 			ResourceGroupName:      pulumi.String("SampleResourceGroup_1"),
/// 			ServerCertificate:      pulumi.String("MIIDFjCCAf6gAwIBAgIQQS+DS8uhc4VNzUkTw7wbRjANBgkqhkiG9w0BAQ0FADAzMTEwLwYDVQQDEyhhbmt1c2hiLXByb2QzLnJlZG1vbmQuY29ycC5taWNyb3NvZnQuY29tMB4XDTE3MDgwMzE3MDQyNFoXDTE4MDgwNDE3MDQyNFowMzExMC8GA1UEAxMoYW5rdXNoYi1wcm9kMy5yZWRtb25kLmNvcnAubWljcm9zb2Z0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALDRvV4gmsIy6jGDPiHsXmvgVP749NNP7DopdlbHaNhjFmYINHl0uWylyaZmgJrROt2mnxN/zEyJtGnqYHlzUr4xvGq/qV5pqgdB9tag/sw9i22gfe9PRZ0FmSOZnXMbLYgLiDFqLtut5gHcOuWMj03YnkfoBEKlFBxWbagvW2yxz/Sxi9OVSJOKCaXra0RpcIHrO/KFl6ho2eE1/7Ykmfa8hZvSdoPd5gHdLiQcMB/pxq+mWp1fI6c8vFZoDu7Atn+NXTzYPKUxKzaisF12TsaKpohUsJpbB3Wocb0F5frn614D2pg14ERB5otjAMWw1m65csQWPI6dP8KIYe0+QPkCAwEAAaMmMCQwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwIGCisGAQQBgjcKAwwwDQYJKoZIhvcNAQENBQADggEBAA4RhVIBkw34M1RwakJgHvtjsOFxF1tVQA941NtLokx1l2Z8+GFQkcG4xpZSt+UN6wLerdCbnNhtkCErWUDeaT0jxk4g71Ofex7iM04crT4iHJr8mi96/XnhnkTUs+GDk12VgdeeNEczMZz+8Mxw9dJ5NCnYgTwO0SzGlclRsDvjzkLo8rh2ZG6n/jKrEyNXXo+hOqhupij0QbRP2Tvexdfw201kgN1jdZify8XzJ8Oi0bTS0KpJf2pNPOlooK2bjMUei9ANtEdXwwfVZGWvVh6tJjdv6k14wWWJ1L7zhA1IIVb1J+sQUzJji5iX0DrezjTz1Fg+gAzITaA/WsuujlM="),
/// 			ServerId:               pulumi.String("080d4133-bdb5-40a0-96a0-71a6057bfe9a"),
/// 			ServerOSVersion:        pulumi.String("10.0.14393.0"),
/// 			ServerRole:             pulumi.String("Standalone"),
/// 			StorageSyncServiceName: pulumi.String("SampleStorageSyncService_1"),
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
/// import com.pulumi.azurenative.storagesync.RegisteredServer;
/// import com.pulumi.azurenative.storagesync.RegisteredServerArgs;
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
///         var registeredServer = new RegisteredServer("registeredServer", RegisteredServerArgs.builder()
///             .agentVersion("1.0.277.0")
///             .applicationId("00000000-0000-0000-0000-000000000001")
///             .friendlyName("afscv-2304-139")
///             .identity(true)
///             .resourceGroupName("SampleResourceGroup_1")
///             .serverCertificate("MIIDFjCCAf6gAwIBAgIQQS+DS8uhc4VNzUkTw7wbRjANBgkqhkiG9w0BAQ0FADAzMTEwLwYDVQQDEyhhbmt1c2hiLXByb2QzLnJlZG1vbmQuY29ycC5taWNyb3NvZnQuY29tMB4XDTE3MDgwMzE3MDQyNFoXDTE4MDgwNDE3MDQyNFowMzExMC8GA1UEAxMoYW5rdXNoYi1wcm9kMy5yZWRtb25kLmNvcnAubWljcm9zb2Z0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALDRvV4gmsIy6jGDPiHsXmvgVP749NNP7DopdlbHaNhjFmYINHl0uWylyaZmgJrROt2mnxN/zEyJtGnqYHlzUr4xvGq/qV5pqgdB9tag/sw9i22gfe9PRZ0FmSOZnXMbLYgLiDFqLtut5gHcOuWMj03YnkfoBEKlFBxWbagvW2yxz/Sxi9OVSJOKCaXra0RpcIHrO/KFl6ho2eE1/7Ykmfa8hZvSdoPd5gHdLiQcMB/pxq+mWp1fI6c8vFZoDu7Atn+NXTzYPKUxKzaisF12TsaKpohUsJpbB3Wocb0F5frn614D2pg14ERB5otjAMWw1m65csQWPI6dP8KIYe0+QPkCAwEAAaMmMCQwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwIGCisGAQQBgjcKAwwwDQYJKoZIhvcNAQENBQADggEBAA4RhVIBkw34M1RwakJgHvtjsOFxF1tVQA941NtLokx1l2Z8+GFQkcG4xpZSt+UN6wLerdCbnNhtkCErWUDeaT0jxk4g71Ofex7iM04crT4iHJr8mi96/XnhnkTUs+GDk12VgdeeNEczMZz+8Mxw9dJ5NCnYgTwO0SzGlclRsDvjzkLo8rh2ZG6n/jKrEyNXXo+hOqhupij0QbRP2Tvexdfw201kgN1jdZify8XzJ8Oi0bTS0KpJf2pNPOlooK2bjMUei9ANtEdXwwfVZGWvVh6tJjdv6k14wWWJ1L7zhA1IIVb1J+sQUzJji5iX0DrezjTz1Fg+gAzITaA/WsuujlM=")
///             .serverId("080d4133-bdb5-40a0-96a0-71a6057bfe9a")
///             .serverOSVersion("10.0.14393.0")
///             .serverRole("Standalone")
///             .storageSyncServiceName("SampleStorageSyncService_1")
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
/// const registeredServer = new azure_native.storagesync.RegisteredServer("registeredServer", {
///     agentVersion: "1.0.277.0",
///     applicationId: "00000000-0000-0000-0000-000000000001",
///     friendlyName: "afscv-2304-139",
///     identity: true,
///     resourceGroupName: "SampleResourceGroup_1",
///     serverCertificate: "MIIDFjCCAf6gAwIBAgIQQS+DS8uhc4VNzUkTw7wbRjANBgkqhkiG9w0BAQ0FADAzMTEwLwYDVQQDEyhhbmt1c2hiLXByb2QzLnJlZG1vbmQuY29ycC5taWNyb3NvZnQuY29tMB4XDTE3MDgwMzE3MDQyNFoXDTE4MDgwNDE3MDQyNFowMzExMC8GA1UEAxMoYW5rdXNoYi1wcm9kMy5yZWRtb25kLmNvcnAubWljcm9zb2Z0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALDRvV4gmsIy6jGDPiHsXmvgVP749NNP7DopdlbHaNhjFmYINHl0uWylyaZmgJrROt2mnxN/zEyJtGnqYHlzUr4xvGq/qV5pqgdB9tag/sw9i22gfe9PRZ0FmSOZnXMbLYgLiDFqLtut5gHcOuWMj03YnkfoBEKlFBxWbagvW2yxz/Sxi9OVSJOKCaXra0RpcIHrO/KFl6ho2eE1/7Ykmfa8hZvSdoPd5gHdLiQcMB/pxq+mWp1fI6c8vFZoDu7Atn+NXTzYPKUxKzaisF12TsaKpohUsJpbB3Wocb0F5frn614D2pg14ERB5otjAMWw1m65csQWPI6dP8KIYe0+QPkCAwEAAaMmMCQwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwIGCisGAQQBgjcKAwwwDQYJKoZIhvcNAQENBQADggEBAA4RhVIBkw34M1RwakJgHvtjsOFxF1tVQA941NtLokx1l2Z8+GFQkcG4xpZSt+UN6wLerdCbnNhtkCErWUDeaT0jxk4g71Ofex7iM04crT4iHJr8mi96/XnhnkTUs+GDk12VgdeeNEczMZz+8Mxw9dJ5NCnYgTwO0SzGlclRsDvjzkLo8rh2ZG6n/jKrEyNXXo+hOqhupij0QbRP2Tvexdfw201kgN1jdZify8XzJ8Oi0bTS0KpJf2pNPOlooK2bjMUei9ANtEdXwwfVZGWvVh6tJjdv6k14wWWJ1L7zhA1IIVb1J+sQUzJji5iX0DrezjTz1Fg+gAzITaA/WsuujlM=",
///     serverId: "080d4133-bdb5-40a0-96a0-71a6057bfe9a",
///     serverOSVersion: "10.0.14393.0",
///     serverRole: "Standalone",
///     storageSyncServiceName: "SampleStorageSyncService_1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registered_server = azure_native.storagesync.RegisteredServer("registeredServer",
///     agent_version="1.0.277.0",
///     application_id="00000000-0000-0000-0000-000000000001",
///     friendly_name="afscv-2304-139",
///     identity=True,
///     resource_group_name="SampleResourceGroup_1",
///     server_certificate="MIIDFjCCAf6gAwIBAgIQQS+DS8uhc4VNzUkTw7wbRjANBgkqhkiG9w0BAQ0FADAzMTEwLwYDVQQDEyhhbmt1c2hiLXByb2QzLnJlZG1vbmQuY29ycC5taWNyb3NvZnQuY29tMB4XDTE3MDgwMzE3MDQyNFoXDTE4MDgwNDE3MDQyNFowMzExMC8GA1UEAxMoYW5rdXNoYi1wcm9kMy5yZWRtb25kLmNvcnAubWljcm9zb2Z0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALDRvV4gmsIy6jGDPiHsXmvgVP749NNP7DopdlbHaNhjFmYINHl0uWylyaZmgJrROt2mnxN/zEyJtGnqYHlzUr4xvGq/qV5pqgdB9tag/sw9i22gfe9PRZ0FmSOZnXMbLYgLiDFqLtut5gHcOuWMj03YnkfoBEKlFBxWbagvW2yxz/Sxi9OVSJOKCaXra0RpcIHrO/KFl6ho2eE1/7Ykmfa8hZvSdoPd5gHdLiQcMB/pxq+mWp1fI6c8vFZoDu7Atn+NXTzYPKUxKzaisF12TsaKpohUsJpbB3Wocb0F5frn614D2pg14ERB5otjAMWw1m65csQWPI6dP8KIYe0+QPkCAwEAAaMmMCQwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwIGCisGAQQBgjcKAwwwDQYJKoZIhvcNAQENBQADggEBAA4RhVIBkw34M1RwakJgHvtjsOFxF1tVQA941NtLokx1l2Z8+GFQkcG4xpZSt+UN6wLerdCbnNhtkCErWUDeaT0jxk4g71Ofex7iM04crT4iHJr8mi96/XnhnkTUs+GDk12VgdeeNEczMZz+8Mxw9dJ5NCnYgTwO0SzGlclRsDvjzkLo8rh2ZG6n/jKrEyNXXo+hOqhupij0QbRP2Tvexdfw201kgN1jdZify8XzJ8Oi0bTS0KpJf2pNPOlooK2bjMUei9ANtEdXwwfVZGWvVh6tJjdv6k14wWWJ1L7zhA1IIVb1J+sQUzJji5iX0DrezjTz1Fg+gAzITaA/WsuujlM=",
///     server_id="080d4133-bdb5-40a0-96a0-71a6057bfe9a",
///     server_os_version="10.0.14393.0",
///     server_role="Standalone",
///     storage_sync_service_name="SampleStorageSyncService_1")
///
/// ```
///
/// ```yaml
/// resources:
///   registeredServer:
///     type: azure-native:storagesync:RegisteredServer
///     properties:
///       agentVersion: 1.0.277.0
///       applicationId: 00000000-0000-0000-0000-000000000001
///       friendlyName: afscv-2304-139
///       identity: true
///       resourceGroupName: SampleResourceGroup_1
///       serverCertificate: MIIDFjCCAf6gAwIBAgIQQS+DS8uhc4VNzUkTw7wbRjANBgkqhkiG9w0BAQ0FADAzMTEwLwYDVQQDEyhhbmt1c2hiLXByb2QzLnJlZG1vbmQuY29ycC5taWNyb3NvZnQuY29tMB4XDTE3MDgwMzE3MDQyNFoXDTE4MDgwNDE3MDQyNFowMzExMC8GA1UEAxMoYW5rdXNoYi1wcm9kMy5yZWRtb25kLmNvcnAubWljcm9zb2Z0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALDRvV4gmsIy6jGDPiHsXmvgVP749NNP7DopdlbHaNhjFmYINHl0uWylyaZmgJrROt2mnxN/zEyJtGnqYHlzUr4xvGq/qV5pqgdB9tag/sw9i22gfe9PRZ0FmSOZnXMbLYgLiDFqLtut5gHcOuWMj03YnkfoBEKlFBxWbagvW2yxz/Sxi9OVSJOKCaXra0RpcIHrO/KFl6ho2eE1/7Ykmfa8hZvSdoPd5gHdLiQcMB/pxq+mWp1fI6c8vFZoDu7Atn+NXTzYPKUxKzaisF12TsaKpohUsJpbB3Wocb0F5frn614D2pg14ERB5otjAMWw1m65csQWPI6dP8KIYe0+QPkCAwEAAaMmMCQwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwIGCisGAQQBgjcKAwwwDQYJKoZIhvcNAQENBQADggEBAA4RhVIBkw34M1RwakJgHvtjsOFxF1tVQA941NtLokx1l2Z8+GFQkcG4xpZSt+UN6wLerdCbnNhtkCErWUDeaT0jxk4g71Ofex7iM04crT4iHJr8mi96/XnhnkTUs+GDk12VgdeeNEczMZz+8Mxw9dJ5NCnYgTwO0SzGlclRsDvjzkLo8rh2ZG6n/jKrEyNXXo+hOqhupij0QbRP2Tvexdfw201kgN1jdZify8XzJ8Oi0bTS0KpJf2pNPOlooK2bjMUei9ANtEdXwwfVZGWvVh6tJjdv6k14wWWJ1L7zhA1IIVb1J+sQUzJji5iX0DrezjTz1Fg+gAzITaA/WsuujlM=
///       serverId: 080d4133-bdb5-40a0-96a0-71a6057bfe9a
///       serverOSVersion: 10.0.14393.0
///       serverRole: Standalone
///       storageSyncServiceName: SampleStorageSyncService_1
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
/// $ pulumi import azure-native:storagesync:RegisteredServer ankushb-prod3.redmond.corp.microsoft.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/registeredServers/{serverId}
/// ```
class RegisteredServer extends pulumi.CustomResource {
  /// Server auth type.
  late final pulumi.Output<String> activeAuthType;
  /// Registered Server Agent Version
  late final pulumi.Output<String?> agentVersion;
  /// Registered Server Agent Version Expiration Date
  late final pulumi.Output<String> agentVersionExpirationDate;
  /// Registered Server Agent Version Status
  late final pulumi.Output<String> agentVersionStatus;
  /// Server Application Id
  late final pulumi.Output<String?> applicationId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Registered Server clusterId
  late final pulumi.Output<String?> clusterId;
  /// Registered Server clusterName
  late final pulumi.Output<String?> clusterName;
  /// Resource discoveryEndpointUri
  late final pulumi.Output<String?> discoveryEndpointUri;
  /// Friendly Name
  late final pulumi.Output<String?> friendlyName;
  /// Apply server with newly discovered ApplicationId if available.
  late final pulumi.Output<bool> identity;
  /// Registered Server last heart beat
  late final pulumi.Output<String?> lastHeartBeat;
  /// Resource Last Operation Name
  late final pulumi.Output<String?> lastOperationName;
  /// Registered Server lastWorkflowId
  late final pulumi.Output<String?> lastWorkflowId;
  /// Latest Server Application Id discovered from the server. It is not yet applied.
  late final pulumi.Output<String?> latestApplicationId;
  /// Management Endpoint Uri
  late final pulumi.Output<String?> managementEndpointUri;
  /// Monitoring Configuration
  late final pulumi.Output<String?> monitoringConfiguration;
  /// Telemetry Endpoint Uri
  late final pulumi.Output<String?> monitoringEndpointUri;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Registered Server Provisioning State
  late final pulumi.Output<String?> provisioningState;
  /// Resource Location
  late final pulumi.Output<String?> resourceLocation;
  /// Registered Server Certificate
  late final pulumi.Output<String?> serverCertificate;
  /// Registered Server serverId
  late final pulumi.Output<String?> serverId;
  /// Registered Server Management Error Code
  late final pulumi.Output<int?> serverManagementErrorCode;
  /// Server name
  late final pulumi.Output<String> serverName;
  /// Registered Server OS Version
  late final pulumi.Output<String?> serverOSVersion;
  /// Registered Server serverRole
  late final pulumi.Output<String?> serverRole;
  /// Service Location
  late final pulumi.Output<String?> serviceLocation;
  /// Registered Server storageSyncServiceUid
  late final pulumi.Output<String?> storageSyncServiceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegisteredServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegisteredServer]. {@macro pulumi_storagesync_registered_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegisteredServer(
    String name, {
    RegisteredServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagesync:RegisteredServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeAuthType = registerOutput<String>('activeAuthType');
    this.agentVersion = registerOutput<String?>('agentVersion');
    this.agentVersionExpirationDate = registerOutput<String>('agentVersionExpirationDate');
    this.agentVersionStatus = registerOutput<String>('agentVersionStatus');
    this.applicationId = registerOutput<String?>('applicationId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clusterId = registerOutput<String?>('clusterId');
    this.clusterName = registerOutput<String?>('clusterName');
    this.discoveryEndpointUri = registerOutput<String?>('discoveryEndpointUri');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.identity = registerOutput<bool>('identity');
    this.lastHeartBeat = registerOutput<String?>('lastHeartBeat');
    this.lastOperationName = registerOutput<String?>('lastOperationName');
    this.lastWorkflowId = registerOutput<String?>('lastWorkflowId');
    this.latestApplicationId = registerOutput<String?>('latestApplicationId');
    this.managementEndpointUri = registerOutput<String?>('managementEndpointUri');
    this.monitoringConfiguration = registerOutput<String?>('monitoringConfiguration');
    this.monitoringEndpointUri = registerOutput<String?>('monitoringEndpointUri');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.resourceLocation = registerOutput<String?>('resourceLocation');
    this.serverCertificate = registerOutput<String?>('serverCertificate');
    this.serverId = registerOutput<String?>('serverId');
    this.serverManagementErrorCode = registerOutput<int?>('serverManagementErrorCode');
    this.serverName = registerOutput<String>('serverName');
    this.serverOSVersion = registerOutput<String?>('serverOSVersion');
    this.serverRole = registerOutput<String?>('serverRole');
    this.serviceLocation = registerOutput<String?>('serviceLocation');
    this.storageSyncServiceUid = registerOutput<String?>('storageSyncServiceUid');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
