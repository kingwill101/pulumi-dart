import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_at_subscription_args.dart';
import 'remediation_deployment_summary_response.dart';
import 'remediation_filters_response.dart';
import 'remediation_properties_response_failure_threshold.dart';
import 'system_data_response.dart';

/// The remediation definition.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2021-10-01.
///
/// Other available API versions: 2021-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create remediation at subscription scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var remediationAtSubscription = new AzureNative.PolicyInsights.RemediationAtSubscription("remediationAtSubscription", new()
///     {
///         PolicyAssignmentId = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///         RemediationName = "storageRemediation",
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
/// 	policyinsights "github.com/pulumi/pulumi-azure-native-sdk/policyinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := policyinsights.NewRemediationAtSubscription(ctx, "remediationAtSubscription", &policyinsights.RemediationAtSubscriptionArgs{
/// 			PolicyAssignmentId: pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"),
/// 			RemediationName:    pulumi.String("storageRemediation"),
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
/// import com.pulumi.azurenative.policyinsights.RemediationAtSubscription;
/// import com.pulumi.azurenative.policyinsights.RemediationAtSubscriptionArgs;
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
///         var remediationAtSubscription = new RemediationAtSubscription("remediationAtSubscription", RemediationAtSubscriptionArgs.builder()
///             .policyAssignmentId("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5")
///             .remediationName("storageRemediation")
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
/// const remediationAtSubscription = new azure_native.policyinsights.RemediationAtSubscription("remediationAtSubscription", {
///     policyAssignmentId: "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     remediationName: "storageRemediation",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// remediation_at_subscription = azure_native.policyinsights.RemediationAtSubscription("remediationAtSubscription",
///     policy_assignment_id="/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     remediation_name="storageRemediation")
///
/// ```
///
/// ```yaml
/// resources:
///   remediationAtSubscription:
///     type: azure-native:policyinsights:RemediationAtSubscription
///     properties:
///       policyAssignmentId: /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5
///       remediationName: storageRemediation
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create remediation at subscription scope with all properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var remediationAtSubscription = new AzureNative.PolicyInsights.RemediationAtSubscription("remediationAtSubscription", new()
///     {
///         FailureThreshold = new AzureNative.PolicyInsights.Inputs.RemediationPropertiesFailureThresholdArgs
///         {
///             Percentage = 0.1,
///         },
///         Filters = new AzureNative.PolicyInsights.Inputs.RemediationFiltersArgs
///         {
///             Locations = new[]
///             {
///                 "eastus",
///                 "westus",
///             },
///         },
///         ParallelDeployments = 6,
///         PolicyAssignmentId = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///         PolicyDefinitionReferenceId = "8c8fa9e4",
///         RemediationName = "storageRemediation",
///         ResourceCount = 42,
///         ResourceDiscoveryMode = AzureNative.PolicyInsights.ResourceDiscoveryMode.ReEvaluateCompliance,
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
/// 	policyinsights "github.com/pulumi/pulumi-azure-native-sdk/policyinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := policyinsights.NewRemediationAtSubscription(ctx, "remediationAtSubscription", &policyinsights.RemediationAtSubscriptionArgs{
/// 			FailureThreshold: &policyinsights.RemediationPropertiesFailureThresholdArgs{
/// 				Percentage: pulumi.Float64(0.1),
/// 			},
/// 			Filters: &policyinsights.RemediationFiltersArgs{
/// 				Locations: pulumi.StringArray{
/// 					pulumi.String("eastus"),
/// 					pulumi.String("westus"),
/// 				},
/// 			},
/// 			ParallelDeployments:         pulumi.Int(6),
/// 			PolicyAssignmentId:          pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"),
/// 			PolicyDefinitionReferenceId: pulumi.String("8c8fa9e4"),
/// 			RemediationName:             pulumi.String("storageRemediation"),
/// 			ResourceCount:               pulumi.Int(42),
/// 			ResourceDiscoveryMode:       pulumi.String(policyinsights.ResourceDiscoveryModeReEvaluateCompliance),
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
/// import com.pulumi.azurenative.policyinsights.RemediationAtSubscription;
/// import com.pulumi.azurenative.policyinsights.RemediationAtSubscriptionArgs;
/// import com.pulumi.azurenative.policyinsights.inputs.RemediationPropertiesFailureThresholdArgs;
/// import com.pulumi.azurenative.policyinsights.inputs.RemediationFiltersArgs;
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
///         var remediationAtSubscription = new RemediationAtSubscription("remediationAtSubscription", RemediationAtSubscriptionArgs.builder()
///             .failureThreshold(RemediationPropertiesFailureThresholdArgs.builder()
///                 .percentage(0.1)
///                 .build())
///             .filters(RemediationFiltersArgs.builder()
///                 .locations(
///                     "eastus",
///                     "westus")
///                 .build())
///             .parallelDeployments(6)
///             .policyAssignmentId("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5")
///             .policyDefinitionReferenceId("8c8fa9e4")
///             .remediationName("storageRemediation")
///             .resourceCount(42)
///             .resourceDiscoveryMode("ReEvaluateCompliance")
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
/// const remediationAtSubscription = new azure_native.policyinsights.RemediationAtSubscription("remediationAtSubscription", {
///     failureThreshold: {
///         percentage: 0.1,
///     },
///     filters: {
///         locations: [
///             "eastus",
///             "westus",
///         ],
///     },
///     parallelDeployments: 6,
///     policyAssignmentId: "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     policyDefinitionReferenceId: "8c8fa9e4",
///     remediationName: "storageRemediation",
///     resourceCount: 42,
///     resourceDiscoveryMode: azure_native.policyinsights.ResourceDiscoveryMode.ReEvaluateCompliance,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// remediation_at_subscription = azure_native.policyinsights.RemediationAtSubscription("remediationAtSubscription",
///     failure_threshold={
///         "percentage": 0.1,
///     },
///     filters={
///         "locations": [
///             "eastus",
///             "westus",
///         ],
///     },
///     parallel_deployments=6,
///     policy_assignment_id="/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     policy_definition_reference_id="8c8fa9e4",
///     remediation_name="storageRemediation",
///     resource_count=42,
///     resource_discovery_mode=azure_native.policyinsights.ResourceDiscoveryMode.RE_EVALUATE_COMPLIANCE)
///
/// ```
///
/// ```yaml
/// resources:
///   remediationAtSubscription:
///     type: azure-native:policyinsights:RemediationAtSubscription
///     properties:
///       failureThreshold:
///         percentage: 0.1
///       filters:
///         locations:
///           - eastus
///           - westus
///       parallelDeployments: 6
///       policyAssignmentId: /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5
///       policyDefinitionReferenceId: 8c8fa9e4
///       remediationName: storageRemediation
///       resourceCount: 42
///       resourceDiscoveryMode: ReEvaluateCompliance
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create remediation at subscription scope with resourceIds filter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var remediationAtSubscription = new AzureNative.PolicyInsights.RemediationAtSubscription("remediationAtSubscription", new()
///     {
///         FailureThreshold = new AzureNative.PolicyInsights.Inputs.RemediationPropertiesFailureThresholdArgs
///         {
///             Percentage = 0.1,
///         },
///         Filters = new AzureNative.PolicyInsights.Inputs.RemediationFiltersArgs
///         {
///             Locations = new[]
///             {
///                 "eastus",
///                 "westus",
///             },
///             ResourceIds = new[]
///             {
///                 "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125",
///                 "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto3699",
///                 "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596",
///                 "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto6637",
///                 "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res8186/providers/Microsoft.Storage/storageAccounts/sto834",
///                 "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto9174",
///             },
///         },
///         ParallelDeployments = 6,
///         PolicyAssignmentId = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///         PolicyDefinitionReferenceId = "8c8fa9e4",
///         RemediationName = "storageRemediation",
///         ResourceCount = 42,
///         ResourceDiscoveryMode = AzureNative.PolicyInsights.ResourceDiscoveryMode.ExistingNonCompliant,
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
/// 	policyinsights "github.com/pulumi/pulumi-azure-native-sdk/policyinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := policyinsights.NewRemediationAtSubscription(ctx, "remediationAtSubscription", &policyinsights.RemediationAtSubscriptionArgs{
/// 			FailureThreshold: &policyinsights.RemediationPropertiesFailureThresholdArgs{
/// 				Percentage: pulumi.Float64(0.1),
/// 			},
/// 			Filters: &policyinsights.RemediationFiltersArgs{
/// 				Locations: pulumi.StringArray{
/// 					pulumi.String("eastus"),
/// 					pulumi.String("westus"),
/// 				},
/// 				ResourceIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125"),
/// 					pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto3699"),
/// 					pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596"),
/// 					pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto6637"),
/// 					pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res8186/providers/Microsoft.Storage/storageAccounts/sto834"),
/// 					pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto9174"),
/// 				},
/// 			},
/// 			ParallelDeployments:         pulumi.Int(6),
/// 			PolicyAssignmentId:          pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"),
/// 			PolicyDefinitionReferenceId: pulumi.String("8c8fa9e4"),
/// 			RemediationName:             pulumi.String("storageRemediation"),
/// 			ResourceCount:               pulumi.Int(42),
/// 			ResourceDiscoveryMode:       pulumi.String(policyinsights.ResourceDiscoveryModeExistingNonCompliant),
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
/// import com.pulumi.azurenative.policyinsights.RemediationAtSubscription;
/// import com.pulumi.azurenative.policyinsights.RemediationAtSubscriptionArgs;
/// import com.pulumi.azurenative.policyinsights.inputs.RemediationPropertiesFailureThresholdArgs;
/// import com.pulumi.azurenative.policyinsights.inputs.RemediationFiltersArgs;
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
///         var remediationAtSubscription = new RemediationAtSubscription("remediationAtSubscription", RemediationAtSubscriptionArgs.builder()
///             .failureThreshold(RemediationPropertiesFailureThresholdArgs.builder()
///                 .percentage(0.1)
///                 .build())
///             .filters(RemediationFiltersArgs.builder()
///                 .locations(
///                     "eastus",
///                     "westus")
///                 .resourceIds(
///                     "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125",
///                     "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto3699",
///                     "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596",
///                     "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto6637",
///                     "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res8186/providers/Microsoft.Storage/storageAccounts/sto834",
///                     "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto9174")
///                 .build())
///             .parallelDeployments(6)
///             .policyAssignmentId("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5")
///             .policyDefinitionReferenceId("8c8fa9e4")
///             .remediationName("storageRemediation")
///             .resourceCount(42)
///             .resourceDiscoveryMode("ExistingNonCompliant")
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
/// const remediationAtSubscription = new azure_native.policyinsights.RemediationAtSubscription("remediationAtSubscription", {
///     failureThreshold: {
///         percentage: 0.1,
///     },
///     filters: {
///         locations: [
///             "eastus",
///             "westus",
///         ],
///         resourceIds: [
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto3699",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto6637",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res8186/providers/Microsoft.Storage/storageAccounts/sto834",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto9174",
///         ],
///     },
///     parallelDeployments: 6,
///     policyAssignmentId: "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     policyDefinitionReferenceId: "8c8fa9e4",
///     remediationName: "storageRemediation",
///     resourceCount: 42,
///     resourceDiscoveryMode: azure_native.policyinsights.ResourceDiscoveryMode.ExistingNonCompliant,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// remediation_at_subscription = azure_native.policyinsights.RemediationAtSubscription("remediationAtSubscription",
///     failure_threshold={
///         "percentage": 0.1,
///     },
///     filters={
///         "locations": [
///             "eastus",
///             "westus",
///         ],
///         "resource_ids": [
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto3699",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto6637",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res8186/providers/Microsoft.Storage/storageAccounts/sto834",
///             "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto9174",
///         ],
///     },
///     parallel_deployments=6,
///     policy_assignment_id="/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     policy_definition_reference_id="8c8fa9e4",
///     remediation_name="storageRemediation",
///     resource_count=42,
///     resource_discovery_mode=azure_native.policyinsights.ResourceDiscoveryMode.EXISTING_NON_COMPLIANT)
///
/// ```
///
/// ```yaml
/// resources:
///   remediationAtSubscription:
///     type: azure-native:policyinsights:RemediationAtSubscription
///     properties:
///       failureThreshold:
///         percentage: 0.1
///       filters:
///         locations:
///           - eastus
///           - westus
///         resourceIds:
///           - /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125
///           - /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto3699
///           - /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596
///           - /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto6637
///           - /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/res8186/providers/Microsoft.Storage/storageAccounts/sto834
///           - /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/testcmk3/providers/Microsoft.Storage/storageAccounts/sto9174
///       parallelDeployments: 6
///       policyAssignmentId: /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5
///       policyDefinitionReferenceId: 8c8fa9e4
///       remediationName: storageRemediation
///       resourceCount: 42
///       resourceDiscoveryMode: ExistingNonCompliant
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
/// $ pulumi import azure-native:policyinsights:RemediationAtSubscription storageRemediation /subscriptions/{subscriptionId}/providers/Microsoft.PolicyInsights/remediations/{remediationName}
/// ```
class RemediationAtSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The remediation correlation Id. Can be used to find events related to the remediation in the activity log.
  late final pulumi.Output<String> correlationId;

  /// The time at which the remediation was created.
  late final pulumi.Output<String> createdOn;

  /// The deployment status summary for all deployments created by the remediation.
  late final pulumi.Output<RemediationDeploymentSummaryResponse>
  deploymentStatus;

  /// The remediation failure threshold settings
  late final pulumi.Output<RemediationPropertiesResponseFailureThreshold?>
  failureThreshold;

  /// The filters that will be applied to determine which resources to remediate.
  late final pulumi.Output<RemediationFiltersResponse?> filters;

  /// The time at which the remediation was last updated.
  late final pulumi.Output<String> lastUpdatedOn;

  /// The name of the remediation.
  late final pulumi.Output<String> name;

  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  late final pulumi.Output<int?> parallelDeployments;

  /// The resource ID of the policy assignment that should be remediated.
  late final pulumi.Output<String?> policyAssignmentId;

  /// The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  late final pulumi.Output<String?> policyDefinitionReferenceId;

  /// The status of the remediation. This refers to the entire remediation task, not individual deployments. Allowed values are Evaluating, Canceled, Cancelling, Failed, Complete, or Succeeded.
  late final pulumi.Output<String> provisioningState;

  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  late final pulumi.Output<int?> resourceCount;

  /// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  late final pulumi.Output<String?> resourceDiscoveryMode;

  /// The remediation status message. Provides additional details regarding the state of the remediation.
  late final pulumi.Output<String> statusMessage;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the remediation.
  late final pulumi.Output<String> type;

  /// Creates a new [RemediationAtSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemediationAtSubscription]. {@macro pulumi_policyinsights_remediation_at_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemediationAtSubscription(
    String name, {
    RemediationAtSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:policyinsights:RemediationAtSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    correlationId = registerOutput<String>('correlationId');
    createdOn = registerOutput<String>('createdOn');
    deploymentStatus = registerOutput<RemediationDeploymentSummaryResponse>(
      'deploymentStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RemediationDeploymentSummaryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    failureThreshold =
        registerOutput<RemediationPropertiesResponseFailureThreshold?>(
          'failureThreshold',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RemediationPropertiesResponseFailureThreshold.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    filters = registerOutput<RemediationFiltersResponse?>(
      'filters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RemediationFiltersResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastUpdatedOn = registerOutput<String>('lastUpdatedOn');
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String?>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>(
      'policyDefinitionReferenceId',
    );
    provisioningState = registerOutput<String>('provisioningState');
    resourceCount = registerOutput<int?>('resourceCount');
    resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
