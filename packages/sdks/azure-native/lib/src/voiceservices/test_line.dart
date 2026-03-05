import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'test_line_args.dart';

/// A TestLine resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-03.
///
/// Other available API versions: 2022-12-01-preview, 2023-01-31, 2023-04-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native voiceservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateTestLineResource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testLine = new AzureNative.VoiceServices.TestLine("testLine", new()
///     {
///         CommunicationsGatewayName = "myname",
///         Location = "useast",
///         PhoneNumber = "+1-555-1234",
///         Purpose = AzureNative.VoiceServices.TestLinePurpose.Automated,
///         ResourceGroupName = "testrg",
///         TestLineName = "myline",
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
/// 	voiceservices "github.com/pulumi/pulumi-azure-native-sdk/voiceservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := voiceservices.NewTestLine(ctx, "testLine", &voiceservices.TestLineArgs{
/// 			CommunicationsGatewayName: pulumi.String("myname"),
/// 			Location:                  pulumi.String("useast"),
/// 			PhoneNumber:               pulumi.String("+1-555-1234"),
/// 			Purpose:                   pulumi.String(voiceservices.TestLinePurposeAutomated),
/// 			ResourceGroupName:         pulumi.String("testrg"),
/// 			TestLineName:              pulumi.String("myline"),
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
/// import com.pulumi.azurenative.voiceservices.TestLine;
/// import com.pulumi.azurenative.voiceservices.TestLineArgs;
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
///         var testLine = new TestLine("testLine", TestLineArgs.builder()
///             .communicationsGatewayName("myname")
///             .location("useast")
///             .phoneNumber("+1-555-1234")
///             .purpose("Automated")
///             .resourceGroupName("testrg")
///             .testLineName("myline")
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
/// const testLine = new azure_native.voiceservices.TestLine("testLine", {
///     communicationsGatewayName: "myname",
///     location: "useast",
///     phoneNumber: "+1-555-1234",
///     purpose: azure_native.voiceservices.TestLinePurpose.Automated,
///     resourceGroupName: "testrg",
///     testLineName: "myline",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// test_line = azure_native.voiceservices.TestLine("testLine",
///     communications_gateway_name="myname",
///     location="useast",
///     phone_number="+1-555-1234",
///     purpose=azure_native.voiceservices.TestLinePurpose.AUTOMATED,
///     resource_group_name="testrg",
///     test_line_name="myline")
///
/// ```
///
/// ```yaml
/// resources:
///   testLine:
///     type: azure-native:voiceservices:TestLine
///     properties:
///       communicationsGatewayName: myname
///       location: useast
///       phoneNumber: +1-555-1234
///       purpose: Automated
///       resourceGroupName: testrg
///       testLineName: myline
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
/// $ pulumi import azure-native:voiceservices:TestLine myline /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VoiceServices/communicationsGateways/{communicationsGatewayName}/testLines/{testLineName}
/// ```
class TestLine extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The phone number
  late final pulumi.Output<String> phoneNumber;
  /// Resource provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Purpose of this test line, e.g. automated or manual testing
  late final pulumi.Output<String> purpose;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TestLine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TestLine]. {@macro pulumi_voiceservices_test_line_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TestLine(
    String name, {
    TestLineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:voiceservices:TestLine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    phoneNumber = registerOutput<String>('phoneNumber');
    provisioningState = registerOutput<String>('provisioningState');
    purpose = registerOutput<String>('purpose');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
