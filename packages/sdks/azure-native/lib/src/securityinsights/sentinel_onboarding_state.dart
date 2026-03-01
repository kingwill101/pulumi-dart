import 'package:pulumi/pulumi.dart' as pulumi;
import 'sentinel_onboarding_state_args.dart';
import 'system_data_response.dart';

/// Sentinel onboarding state
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Sentinel onboarding state
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sentinelOnboardingState = new AzureNative.SecurityInsights.SentinelOnboardingState("sentinelOnboardingState", new()
///     {
///         CustomerManagedKey = false,
///         ResourceGroupName = "myRg",
///         SentinelOnboardingStateName = "default",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewSentinelOnboardingState(ctx, "sentinelOnboardingState", &securityinsights.SentinelOnboardingStateArgs{
/// 			CustomerManagedKey:          pulumi.Bool(false),
/// 			ResourceGroupName:           pulumi.String("myRg"),
/// 			SentinelOnboardingStateName: pulumi.String("default"),
/// 			WorkspaceName:               pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.SentinelOnboardingState;
/// import com.pulumi.azurenative.securityinsights.SentinelOnboardingStateArgs;
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
///         var sentinelOnboardingState = new SentinelOnboardingState("sentinelOnboardingState", SentinelOnboardingStateArgs.builder()
///             .customerManagedKey(false)
///             .resourceGroupName("myRg")
///             .sentinelOnboardingStateName("default")
///             .workspaceName("myWorkspace")
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
/// const sentinelOnboardingState = new azure_native.securityinsights.SentinelOnboardingState("sentinelOnboardingState", {
///     customerManagedKey: false,
///     resourceGroupName: "myRg",
///     sentinelOnboardingStateName: "default",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sentinel_onboarding_state = azure_native.securityinsights.SentinelOnboardingState("sentinelOnboardingState",
///     customer_managed_key=False,
///     resource_group_name="myRg",
///     sentinel_onboarding_state_name="default",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   sentinelOnboardingState:
///     type: azure-native:securityinsights:SentinelOnboardingState
///     properties:
///       customerManagedKey: false
///       resourceGroupName: myRg
///       sentinelOnboardingStateName: default
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:SentinelOnboardingState default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/onboardingStates/{sentinelOnboardingStateName}
/// ```
class SentinelOnboardingState extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Flag that indicates the status of the CMK setting
  late final pulumi.Output<bool?> customerManagedKey;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SentinelOnboardingState].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SentinelOnboardingState]. {@macro pulumi_securityinsights_sentinel_onboarding_state_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SentinelOnboardingState(
    String name, {
    SentinelOnboardingStateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:SentinelOnboardingState',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.customerManagedKey = registerOutput<bool?>('customerManagedKey');
    this.etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
