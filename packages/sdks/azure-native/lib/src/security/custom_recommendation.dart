import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_recommendation_args.dart';
import 'system_data_response.dart';

/// Custom Recommendation
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2024-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update custom recommendation over management group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customRecommendation = new AzureNative.Security.CustomRecommendation("customRecommendation", new()
///     {
///         CloudProviders = new[]
///         {
///             AzureNative.Security.RecommendationSupportedClouds.AWS,
///         },
///         CustomRecommendationName = "33e7cc6e-a139-4723-a0e5-76993aee0771",
///         Description = "organization passwords policy",
///         DisplayName = "Password Policy",
///         Query = "RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///         RemediationDescription = "Change password policy to...",
///         Scope = "providers/Microsoft.Management/managementGroups/contoso",
///         SecurityIssue = AzureNative.Security.SecurityIssue.Vulnerability,
///         Severity = AzureNative.Security.SeverityEnum.Medium,
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
/// 		_, err := security.NewCustomRecommendation(ctx, "customRecommendation", &security.CustomRecommendationArgs{
/// 			CloudProviders: pulumi.StringArray{
/// 				pulumi.String(security.RecommendationSupportedCloudsAWS),
/// 			},
/// 			CustomRecommendationName: pulumi.String("33e7cc6e-a139-4723-a0e5-76993aee0771"),
/// 			Description:              pulumi.String("organization passwords policy"),
/// 			DisplayName:              pulumi.String("Password Policy"),
/// 			Query:                    pulumi.String("RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')"),
/// 			RemediationDescription:   pulumi.String("Change password policy to..."),
/// 			Scope:                    pulumi.String("providers/Microsoft.Management/managementGroups/contoso"),
/// 			SecurityIssue:            pulumi.String(security.SecurityIssueVulnerability),
/// 			Severity:                 pulumi.String(security.SeverityEnumMedium),
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
/// import com.pulumi.azurenative.security.CustomRecommendation;
/// import com.pulumi.azurenative.security.CustomRecommendationArgs;
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
///         var customRecommendation = new CustomRecommendation("customRecommendation", CustomRecommendationArgs.builder()
///             .cloudProviders("AWS")
///             .customRecommendationName("33e7cc6e-a139-4723-a0e5-76993aee0771")
///             .description("organization passwords policy")
///             .displayName("Password Policy")
///             .query("RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')")
///             .remediationDescription("Change password policy to...")
///             .scope("providers/Microsoft.Management/managementGroups/contoso")
///             .securityIssue("Vulnerability")
///             .severity("Medium")
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
/// const customRecommendation = new azure_native.security.CustomRecommendation("customRecommendation", {
///     cloudProviders: [azure_native.security.RecommendationSupportedClouds.AWS],
///     customRecommendationName: "33e7cc6e-a139-4723-a0e5-76993aee0771",
///     description: "organization passwords policy",
///     displayName: "Password Policy",
///     query: "RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///     remediationDescription: "Change password policy to...",
///     scope: "providers/Microsoft.Management/managementGroups/contoso",
///     securityIssue: azure_native.security.SecurityIssue.Vulnerability,
///     severity: azure_native.security.SeverityEnum.Medium,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_recommendation = azure_native.security.CustomRecommendation("customRecommendation",
///     cloud_providers=[azure_native.security.RecommendationSupportedClouds.AWS],
///     custom_recommendation_name="33e7cc6e-a139-4723-a0e5-76993aee0771",
///     description="organization passwords policy",
///     display_name="Password Policy",
///     query="RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///     remediation_description="Change password policy to...",
///     scope="providers/Microsoft.Management/managementGroups/contoso",
///     security_issue=azure_native.security.SecurityIssue.VULNERABILITY,
///     severity=azure_native.security.SeverityEnum.MEDIUM)
///
/// ```
///
/// ```yaml
/// resources:
///   customRecommendation:
///     type: azure-native:security:CustomRecommendation
///     properties:
///       cloudProviders:
///         - AWS
///       customRecommendationName: 33e7cc6e-a139-4723-a0e5-76993aee0771
///       description: organization passwords policy
///       displayName: Password Policy
///       query: RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')
///       remediationDescription: Change password policy to...
///       scope: providers/Microsoft.Management/managementGroups/contoso
///       securityIssue: Vulnerability
///       severity: Medium
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update custom recommendation over security connector scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customRecommendation = new AzureNative.Security.CustomRecommendation("customRecommendation", new()
///     {
///         CloudProviders = new[]
///         {
///             AzureNative.Security.RecommendationSupportedClouds.AWS,
///         },
///         CustomRecommendationName = "33e7cc6e-a139-4723-a0e5-76993aee0771",
///         Description = "organization passwords policy",
///         DisplayName = "Password Policy",
///         Query = "RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///         RemediationDescription = "Change password policy to...",
///         Scope = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///         SecurityIssue = AzureNative.Security.SecurityIssue.Vulnerability,
///         Severity = AzureNative.Security.SeverityEnum.Medium,
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
/// 		_, err := security.NewCustomRecommendation(ctx, "customRecommendation", &security.CustomRecommendationArgs{
/// 			CloudProviders: pulumi.StringArray{
/// 				pulumi.String(security.RecommendationSupportedCloudsAWS),
/// 			},
/// 			CustomRecommendationName: pulumi.String("33e7cc6e-a139-4723-a0e5-76993aee0771"),
/// 			Description:              pulumi.String("organization passwords policy"),
/// 			DisplayName:              pulumi.String("Password Policy"),
/// 			Query:                    pulumi.String("RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')"),
/// 			RemediationDescription:   pulumi.String("Change password policy to..."),
/// 			Scope:                    pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector"),
/// 			SecurityIssue:            pulumi.String(security.SecurityIssueVulnerability),
/// 			Severity:                 pulumi.String(security.SeverityEnumMedium),
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
/// import com.pulumi.azurenative.security.CustomRecommendation;
/// import com.pulumi.azurenative.security.CustomRecommendationArgs;
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
///         var customRecommendation = new CustomRecommendation("customRecommendation", CustomRecommendationArgs.builder()
///             .cloudProviders("AWS")
///             .customRecommendationName("33e7cc6e-a139-4723-a0e5-76993aee0771")
///             .description("organization passwords policy")
///             .displayName("Password Policy")
///             .query("RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')")
///             .remediationDescription("Change password policy to...")
///             .scope("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector")
///             .securityIssue("Vulnerability")
///             .severity("Medium")
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
/// const customRecommendation = new azure_native.security.CustomRecommendation("customRecommendation", {
///     cloudProviders: [azure_native.security.RecommendationSupportedClouds.AWS],
///     customRecommendationName: "33e7cc6e-a139-4723-a0e5-76993aee0771",
///     description: "organization passwords policy",
///     displayName: "Password Policy",
///     query: "RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///     remediationDescription: "Change password policy to...",
///     scope: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///     securityIssue: azure_native.security.SecurityIssue.Vulnerability,
///     severity: azure_native.security.SeverityEnum.Medium,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_recommendation = azure_native.security.CustomRecommendation("customRecommendation",
///     cloud_providers=[azure_native.security.RecommendationSupportedClouds.AWS],
///     custom_recommendation_name="33e7cc6e-a139-4723-a0e5-76993aee0771",
///     description="organization passwords policy",
///     display_name="Password Policy",
///     query="RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///     remediation_description="Change password policy to...",
///     scope="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///     security_issue=azure_native.security.SecurityIssue.VULNERABILITY,
///     severity=azure_native.security.SeverityEnum.MEDIUM)
///
/// ```
///
/// ```yaml
/// resources:
///   customRecommendation:
///     type: azure-native:security:CustomRecommendation
///     properties:
///       cloudProviders:
///         - AWS
///       customRecommendationName: 33e7cc6e-a139-4723-a0e5-76993aee0771
///       description: organization passwords policy
///       displayName: Password Policy
///       query: RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')
///       remediationDescription: Change password policy to...
///       scope: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector
///       securityIssue: Vulnerability
///       severity: Medium
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update custom recommendation over subscription scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customRecommendation = new AzureNative.Security.CustomRecommendation("customRecommendation", new()
///     {
///         CloudProviders = new[]
///         {
///             AzureNative.Security.RecommendationSupportedClouds.AWS,
///         },
///         CustomRecommendationName = "33e7cc6e-a139-4723-a0e5-76993aee0771",
///         Description = "organization passwords policy",
///         DisplayName = "Password Policy",
///         Query = "RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///         RemediationDescription = "Change password policy to...",
///         Scope = "subscriptions/e5d1b86c-3051-44d5-8802-aa65d45a279b",
///         SecurityIssue = AzureNative.Security.SecurityIssue.Vulnerability,
///         Severity = AzureNative.Security.SeverityEnum.Medium,
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
/// 		_, err := security.NewCustomRecommendation(ctx, "customRecommendation", &security.CustomRecommendationArgs{
/// 			CloudProviders: pulumi.StringArray{
/// 				pulumi.String(security.RecommendationSupportedCloudsAWS),
/// 			},
/// 			CustomRecommendationName: pulumi.String("33e7cc6e-a139-4723-a0e5-76993aee0771"),
/// 			Description:              pulumi.String("organization passwords policy"),
/// 			DisplayName:              pulumi.String("Password Policy"),
/// 			Query:                    pulumi.String("RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')"),
/// 			RemediationDescription:   pulumi.String("Change password policy to..."),
/// 			Scope:                    pulumi.String("subscriptions/e5d1b86c-3051-44d5-8802-aa65d45a279b"),
/// 			SecurityIssue:            pulumi.String(security.SecurityIssueVulnerability),
/// 			Severity:                 pulumi.String(security.SeverityEnumMedium),
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
/// import com.pulumi.azurenative.security.CustomRecommendation;
/// import com.pulumi.azurenative.security.CustomRecommendationArgs;
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
///         var customRecommendation = new CustomRecommendation("customRecommendation", CustomRecommendationArgs.builder()
///             .cloudProviders("AWS")
///             .customRecommendationName("33e7cc6e-a139-4723-a0e5-76993aee0771")
///             .description("organization passwords policy")
///             .displayName("Password Policy")
///             .query("RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')")
///             .remediationDescription("Change password policy to...")
///             .scope("subscriptions/e5d1b86c-3051-44d5-8802-aa65d45a279b")
///             .securityIssue("Vulnerability")
///             .severity("Medium")
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
/// const customRecommendation = new azure_native.security.CustomRecommendation("customRecommendation", {
///     cloudProviders: [azure_native.security.RecommendationSupportedClouds.AWS],
///     customRecommendationName: "33e7cc6e-a139-4723-a0e5-76993aee0771",
///     description: "organization passwords policy",
///     displayName: "Password Policy",
///     query: "RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///     remediationDescription: "Change password policy to...",
///     scope: "subscriptions/e5d1b86c-3051-44d5-8802-aa65d45a279b",
///     securityIssue: azure_native.security.SecurityIssue.Vulnerability,
///     severity: azure_native.security.SeverityEnum.Medium,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_recommendation = azure_native.security.CustomRecommendation("customRecommendation",
///     cloud_providers=[azure_native.security.RecommendationSupportedClouds.AWS],
///     custom_recommendation_name="33e7cc6e-a139-4723-a0e5-76993aee0771",
///     description="organization passwords policy",
///     display_name="Password Policy",
///     query="RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')",
///     remediation_description="Change password policy to...",
///     scope="subscriptions/e5d1b86c-3051-44d5-8802-aa65d45a279b",
///     security_issue=azure_native.security.SecurityIssue.VULNERABILITY,
///     severity=azure_native.security.SeverityEnum.MEDIUM)
///
/// ```
///
/// ```yaml
/// resources:
///   customRecommendation:
///     type: azure-native:security:CustomRecommendation
///     properties:
///       cloudProviders:
///         - AWS
///       customRecommendationName: 33e7cc6e-a139-4723-a0e5-76993aee0771
///       description: organization passwords policy
///       displayName: Password Policy
///       query: RawEntityMetadata | where Environment == 'GCP' and Identifiers.Type == 'compute.firewalls' | extend IslogConfigEnabled = tobool(Record.logConfig.enable) | extend HealthStatus = iff(IslogConfigEnabled, 'HEALTHY', 'UNHEALTHY')
///       remediationDescription: Change password policy to...
///       scope: subscriptions/e5d1b86c-3051-44d5-8802-aa65d45a279b
///       securityIssue: Vulnerability
///       severity: Medium
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
/// $ pulumi import azure-native:security:CustomRecommendation 33e7cc6e-a139-4723-a0e5-76993aee0771 /{scope}/providers/Microsoft.Security/customRecommendations/{customRecommendationName}
/// ```
class CustomRecommendation extends pulumi.CustomResource {
  /// The assessment metadata key used when an assessment is generated for this Recommendation.
  late final pulumi.Output<String> assessmentKey;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of all standard supported clouds.
  late final pulumi.Output<List<String>?> cloudProviders;
  /// The description to relate to the assessments generated by this Recommendation.
  late final pulumi.Output<String?> description;
  /// The display name of the assessments generated by this Recommendation.
  late final pulumi.Output<String?> displayName;
  /// Resource name
  late final pulumi.Output<String> name;
  /// KQL query representing the Recommendation results required.
  late final pulumi.Output<String?> query;
  /// The remediation description to relate to the assessments generated by this Recommendation.
  late final pulumi.Output<String?> remediationDescription;
  /// The severity to relate to the assessments generated by this Recommendation.
  late final pulumi.Output<String?> securityIssue;
  /// The severity to relate to the assessments generated by this Recommendation.
  late final pulumi.Output<String?> severity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [CustomRecommendation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRecommendation]. {@macro pulumi_security_custom_recommendation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRecommendation(
    String name, {
    CustomRecommendationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:CustomRecommendation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessmentKey = registerOutput<String>('assessmentKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudProviders = registerOutput<List<String>?>('cloudProviders');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    query = registerOutput<String?>('query');
    remediationDescription = registerOutput<String?>('remediationDescription');
    securityIssue = registerOutput<String?>('securityIssue');
    severity = registerOutput<String?>('severity');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
