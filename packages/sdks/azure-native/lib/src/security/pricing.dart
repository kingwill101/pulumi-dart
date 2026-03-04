import 'package:pulumi/pulumi.dart' as pulumi;
import 'pricing_args.dart';

/// Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update pricing on resource (example for Containers plan)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pricing = new AzureNative.Security.Pricing("pricing", new()
///     {
///         Extensions = new[]
///         {
///             new AzureNative.Security.Inputs.ExtensionArgs
///             {
///                 IsEnabled = AzureNative.Security.IsEnabled.True,
///                 Name = "ContainerRegistriesVulnerabilityAssessments",
///             },
///             new AzureNative.Security.Inputs.ExtensionArgs
///             {
///                 IsEnabled = AzureNative.Security.IsEnabled.True,
///                 Name = "ContainerSensor",
///             },
///             new AzureNative.Security.Inputs.ExtensionArgs
///             {
///                 IsEnabled = AzureNative.Security.IsEnabled.True,
///                 Name = "AgentlessDiscoveryForKubernetes",
///             },
///             new AzureNative.Security.Inputs.ExtensionArgs
///             {
///                 AdditionalExtensionProperties = new Dictionary<string, object?>
///                 {
///                     ["ExclusionTags"] = "[]",
///                 },
///                 IsEnabled = AzureNative.Security.IsEnabled.True,
///                 Name = "AgentlessVmScanning",
///             },
///             new AzureNative.Security.Inputs.ExtensionArgs
///             {
///                 IsEnabled = AzureNative.Security.IsEnabled.True,
///                 Name = "ContainerIntegrityContribution",
///             },
///         },
///         PricingName = "Containers",
///         PricingTier = AzureNative.Security.PricingTier.Standard,
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/demo-containers-rg/providers/Microsoft.ContainerService/managedClusters/demo-aks-cluster",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewPricing(ctx, "pricing", &security.PricingArgs{
/// 			Extensions: security.ExtensionArray{
/// 				&security.ExtensionArgs{
/// 					IsEnabled: pulumi.String(security.IsEnabledTrue),
/// 					Name:      pulumi.String("ContainerRegistriesVulnerabilityAssessments"),
/// 				},
/// 				&security.ExtensionArgs{
/// 					IsEnabled: pulumi.String(security.IsEnabledTrue),
/// 					Name:      pulumi.String("ContainerSensor"),
/// 				},
/// 				&security.ExtensionArgs{
/// 					IsEnabled: pulumi.String(security.IsEnabledTrue),
/// 					Name:      pulumi.String("AgentlessDiscoveryForKubernetes"),
/// 				},
/// 				&security.ExtensionArgs{
/// 					AdditionalExtensionProperties: pulumi.Any(map[string]interface{}{
/// 						"ExclusionTags": "[]",
/// 					}),
/// 					IsEnabled: pulumi.String(security.IsEnabledTrue),
/// 					Name:      pulumi.String("AgentlessVmScanning"),
/// 				},
/// 				&security.ExtensionArgs{
/// 					IsEnabled: pulumi.String(security.IsEnabledTrue),
/// 					Name:      pulumi.String("ContainerIntegrityContribution"),
/// 				},
/// 			},
/// 			PricingName: pulumi.String("Containers"),
/// 			PricingTier: pulumi.String(security.PricingTierStandard),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/demo-containers-rg/providers/Microsoft.ContainerService/managedClusters/demo-aks-cluster"),
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
/// import com.pulumi.azurenative.security.Pricing;
/// import com.pulumi.azurenative.security.PricingArgs;
/// import com.pulumi.azurenative.security.inputs.ExtensionArgs;
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
///         var pricing = new Pricing("pricing", PricingArgs.builder()
///             .extensions(
///                 ExtensionArgs.builder()
///                     .isEnabled("True")
///                     .name("ContainerRegistriesVulnerabilityAssessments")
///                     .build(),
///                 ExtensionArgs.builder()
///                     .isEnabled("True")
///                     .name("ContainerSensor")
///                     .build(),
///                 ExtensionArgs.builder()
///                     .isEnabled("True")
///                     .name("AgentlessDiscoveryForKubernetes")
///                     .build(),
///                 ExtensionArgs.builder()
///                     .additionalExtensionProperties(Map.of("ExclusionTags", "[]"))
///                     .isEnabled("True")
///                     .name("AgentlessVmScanning")
///                     .build(),
///                 ExtensionArgs.builder()
///                     .isEnabled("True")
///                     .name("ContainerIntegrityContribution")
///                     .build())
///             .pricingName("Containers")
///             .pricingTier("Standard")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/demo-containers-rg/providers/Microsoft.ContainerService/managedClusters/demo-aks-cluster")
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
/// const pricing = new azure_native.security.Pricing("pricing", {
///     extensions: [
///         {
///             isEnabled: azure_native.security.IsEnabled.True,
///             name: "ContainerRegistriesVulnerabilityAssessments",
///         },
///         {
///             isEnabled: azure_native.security.IsEnabled.True,
///             name: "ContainerSensor",
///         },
///         {
///             isEnabled: azure_native.security.IsEnabled.True,
///             name: "AgentlessDiscoveryForKubernetes",
///         },
///         {
///             additionalExtensionProperties: {
///                 ExclusionTags: "[]",
///             },
///             isEnabled: azure_native.security.IsEnabled.True,
///             name: "AgentlessVmScanning",
///         },
///         {
///             isEnabled: azure_native.security.IsEnabled.True,
///             name: "ContainerIntegrityContribution",
///         },
///     ],
///     pricingName: "Containers",
///     pricingTier: azure_native.security.PricingTier.Standard,
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/demo-containers-rg/providers/Microsoft.ContainerService/managedClusters/demo-aks-cluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pricing = azure_native.security.Pricing("pricing",
///     extensions=[
///         {
///             "is_enabled": azure_native.security.IsEnabled.TRUE,
///             "name": "ContainerRegistriesVulnerabilityAssessments",
///         },
///         {
///             "is_enabled": azure_native.security.IsEnabled.TRUE,
///             "name": "ContainerSensor",
///         },
///         {
///             "is_enabled": azure_native.security.IsEnabled.TRUE,
///             "name": "AgentlessDiscoveryForKubernetes",
///         },
///         {
///             "additional_extension_properties": {
///                 "ExclusionTags": "[]",
///             },
///             "is_enabled": azure_native.security.IsEnabled.TRUE,
///             "name": "AgentlessVmScanning",
///         },
///         {
///             "is_enabled": azure_native.security.IsEnabled.TRUE,
///             "name": "ContainerIntegrityContribution",
///         },
///     ],
///     pricing_name="Containers",
///     pricing_tier=azure_native.security.PricingTier.STANDARD,
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/demo-containers-rg/providers/Microsoft.ContainerService/managedClusters/demo-aks-cluster")
///
/// ```
///
/// ```yaml
/// resources:
///   pricing:
///     type: azure-native:security:Pricing
///     properties:
///       extensions:
///         - isEnabled: True
///           name: ContainerRegistriesVulnerabilityAssessments
///         - isEnabled: True
///           name: ContainerSensor
///         - isEnabled: True
///           name: AgentlessDiscoveryForKubernetes
///         - additionalExtensionProperties:
///             ExclusionTags: '[]'
///           isEnabled: True
///           name: AgentlessVmScanning
///         - isEnabled: True
///           name: ContainerIntegrityContribution
///       pricingName: Containers
///       pricingTier: Standard
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/demo-containers-rg/providers/Microsoft.ContainerService/managedClusters/demo-aks-cluster
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update pricing on resource (example for VirtualMachines plan)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pricing = new AzureNative.Security.Pricing("pricing", new()
///     {
///         PricingName = "virtualMachines",
///         PricingTier = AzureNative.Security.PricingTier.Standard,
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/DEMO/providers/Microsoft.Compute/virtualMachines/VM-1",
///         SubPlan = "P1",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewPricing(ctx, "pricing", &security.PricingArgs{
/// 			PricingName: pulumi.String("virtualMachines"),
/// 			PricingTier: pulumi.String(security.PricingTierStandard),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/DEMO/providers/Microsoft.Compute/virtualMachines/VM-1"),
/// 			SubPlan:     pulumi.String("P1"),
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
/// import com.pulumi.azurenative.security.Pricing;
/// import com.pulumi.azurenative.security.PricingArgs;
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
///         var pricing = new Pricing("pricing", PricingArgs.builder()
///             .pricingName("virtualMachines")
///             .pricingTier("Standard")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/DEMO/providers/Microsoft.Compute/virtualMachines/VM-1")
///             .subPlan("P1")
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
/// const pricing = new azure_native.security.Pricing("pricing", {
///     pricingName: "virtualMachines",
///     pricingTier: azure_native.security.PricingTier.Standard,
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/DEMO/providers/Microsoft.Compute/virtualMachines/VM-1",
///     subPlan: "P1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pricing = azure_native.security.Pricing("pricing",
///     pricing_name="virtualMachines",
///     pricing_tier=azure_native.security.PricingTier.STANDARD,
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/DEMO/providers/Microsoft.Compute/virtualMachines/VM-1",
///     sub_plan="P1")
///
/// ```
///
/// ```yaml
/// resources:
///   pricing:
///     type: azure-native:security:Pricing
///     properties:
///       pricingName: virtualMachines
///       pricingTier: Standard
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/DEMO/providers/Microsoft.Compute/virtualMachines/VM-1
///       subPlan: P1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update pricing on subscription (example for CloudPosture plan)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pricing = new AzureNative.Security.Pricing("pricing", new()
///     {
///         PricingName = "CloudPosture",
///         PricingTier = AzureNative.Security.PricingTier.Standard,
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewPricing(ctx, "pricing", &security.PricingArgs{
/// 			PricingName: pulumi.String("CloudPosture"),
/// 			PricingTier: pulumi.String(security.PricingTierStandard),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
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
/// import com.pulumi.azurenative.security.Pricing;
/// import com.pulumi.azurenative.security.PricingArgs;
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
///         var pricing = new Pricing("pricing", PricingArgs.builder()
///             .pricingName("CloudPosture")
///             .pricingTier("Standard")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
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
/// const pricing = new azure_native.security.Pricing("pricing", {
///     pricingName: "CloudPosture",
///     pricingTier: azure_native.security.PricingTier.Standard,
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pricing = azure_native.security.Pricing("pricing",
///     pricing_name="CloudPosture",
///     pricing_tier=azure_native.security.PricingTier.STANDARD,
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///
/// ```
///
/// ```yaml
/// resources:
///   pricing:
///     type: azure-native:security:Pricing
///     properties:
///       pricingName: CloudPosture
///       pricingTier: Standard
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update pricing on subscription (example for CloudPosture plan) - partial success
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pricing = new AzureNative.Security.Pricing("pricing", new()
///     {
///         PricingName = "CloudPosture",
///         PricingTier = AzureNative.Security.PricingTier.Standard,
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewPricing(ctx, "pricing", &security.PricingArgs{
/// 			PricingName: pulumi.String("CloudPosture"),
/// 			PricingTier: pulumi.String(security.PricingTierStandard),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
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
/// import com.pulumi.azurenative.security.Pricing;
/// import com.pulumi.azurenative.security.PricingArgs;
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
///         var pricing = new Pricing("pricing", PricingArgs.builder()
///             .pricingName("CloudPosture")
///             .pricingTier("Standard")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
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
/// const pricing = new azure_native.security.Pricing("pricing", {
///     pricingName: "CloudPosture",
///     pricingTier: azure_native.security.PricingTier.Standard,
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pricing = azure_native.security.Pricing("pricing",
///     pricing_name="CloudPosture",
///     pricing_tier=azure_native.security.PricingTier.STANDARD,
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///
/// ```
///
/// ```yaml
/// resources:
///   pricing:
///     type: azure-native:security:Pricing
///     properties:
///       pricingName: CloudPosture
///       pricingTier: Standard
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update pricing on subscription (example for VirtualMachines plan)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pricing = new AzureNative.Security.Pricing("pricing", new()
///     {
///         Enforce = AzureNative.Security.Enforce.True,
///         PricingName = "VirtualMachines",
///         PricingTier = AzureNative.Security.PricingTier.Standard,
///         ScopeId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         SubPlan = "P2",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewPricing(ctx, "pricing", &security.PricingArgs{
/// 			Enforce:     pulumi.String(security.EnforceTrue),
/// 			PricingName: pulumi.String("VirtualMachines"),
/// 			PricingTier: pulumi.String(security.PricingTierStandard),
/// 			ScopeId:     pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			SubPlan:     pulumi.String("P2"),
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
/// import com.pulumi.azurenative.security.Pricing;
/// import com.pulumi.azurenative.security.PricingArgs;
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
///         var pricing = new Pricing("pricing", PricingArgs.builder()
///             .enforce("True")
///             .pricingName("VirtualMachines")
///             .pricingTier("Standard")
///             .scopeId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///             .subPlan("P2")
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
/// const pricing = new azure_native.security.Pricing("pricing", {
///     enforce: azure_native.security.Enforce.True,
///     pricingName: "VirtualMachines",
///     pricingTier: azure_native.security.PricingTier.Standard,
///     scopeId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     subPlan: "P2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pricing = azure_native.security.Pricing("pricing",
///     enforce=azure_native.security.Enforce.TRUE,
///     pricing_name="VirtualMachines",
///     pricing_tier=azure_native.security.PricingTier.STANDARD,
///     scope_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     sub_plan="P2")
///
/// ```
///
/// ```yaml
/// resources:
///   pricing:
///     type: azure-native:security:Pricing
///     properties:
///       enforce: True
///       pricingName: VirtualMachines
///       pricingTier: Standard
///       scopeId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       subPlan: P2
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
/// $ pulumi import azure-native:security:Pricing VirtualMachines /{scopeId}/providers/Microsoft.Security/pricings/{pricingName}
/// ```
class Pricing extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional. True if the plan is deprecated. If there are replacing plans they will appear in `replacedBy` property
  late final pulumi.Output<bool> deprecated;

  /// Optional. If `pricingTier` is `Standard` then this property holds the date of the last time the `pricingTier` was set to `Standard`, when available (e.g 2023-03-01T12:42:42.1921106Z).
  late final pulumi.Output<String> enablementTime;

  /// If set to "False", it allows the descendants of this scope to override the pricing configuration set on this scope (allows setting inherited="False"). If set to "True", it prevents overrides and forces this pricing configuration on all the descendants of this scope. This field is only available for subscription-level pricing.
  late final pulumi.Output<String?> enforce;

  /// Optional. List of extensions offered under a plan.
  late final pulumi.Output<List<Map<String, dynamic>>?> extensions;

  /// The duration left for the subscriptions free trial period - in ISO 8601 format (e.g. P3Y6M4DT12H30M5S).
  late final pulumi.Output<String> freeTrialRemainingTime;

  /// "inherited" = "True" indicates that the current scope inherits its pricing configuration from its parent. The ID of the parent scope that provides the inherited configuration is displayed in the "inheritedFrom" field. On the other hand, "inherited" = "False" indicates that the current scope has its own pricing configuration explicitly set, and does not inherit from its parent. This field is read only and available only for resource-level pricing.
  late final pulumi.Output<String> inherited;

  /// The id of the scope inherited from. "Null" if not inherited. This field is only available for resource-level pricing.
  late final pulumi.Output<String> inheritedFrom;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
  late final pulumi.Output<String> pricingTier;

  /// Optional. List of plans that replace this plan. This property exists only if this plan is deprecated.
  late final pulumi.Output<List<String>> replacedBy;

  /// This field is available for subscription-level only, and reflects the coverage status of the resources under the subscription. Please note: The "pricingTier" field reflects the plan status of the subscription. However, since the plan status can also be defined at the resource level, there might be misalignment between the subscription's plan status and the resource status. This field helps indicate the coverage status of the resources.
  late final pulumi.Output<String> resourcesCoverageStatus;

  /// The sub-plan selected for a Standard pricing configuration, when more than one sub-plan is available. Each sub-plan enables a set of security features. When not specified, full plan is applied. For VirtualMachines plan, available sub plans are 'P1' & 'P2', where for resource level only 'P1' sub plan is supported.
  late final pulumi.Output<String?> subPlan;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Pricing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pricing]. {@macro pulumi_security_pricing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pricing(
    String name, {
    PricingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:Pricing',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deprecated = registerOutput<bool>('deprecated');
    enablementTime = registerOutput<String>('enablementTime');
    enforce = registerOutput<String?>('enforce');
    extensions = registerOutput<List<Map<String, dynamic>>?>('extensions');
    freeTrialRemainingTime = registerOutput<String>('freeTrialRemainingTime');
    inherited = registerOutput<String>('inherited');
    inheritedFrom = registerOutput<String>('inheritedFrom');
    this.name = registerOutput<String>('name');
    pricingTier = registerOutput<String>('pricingTier');
    replacedBy = registerOutput<List<String>>('replacedBy');
    resourcesCoverageStatus = registerOutput<String>('resourcesCoverageStatus');
    subPlan = registerOutput<String?>('subPlan');
    type = registerOutput<String>('type');
  }
}
