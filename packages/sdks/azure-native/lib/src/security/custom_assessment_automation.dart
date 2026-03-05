import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_assessment_automation_args.dart';
import 'system_data_response.dart';

/// Custom Assessment Automation
///
/// Uses Azure REST API version 2021-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Custom Assessment Automation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customAssessmentAutomation = new AzureNative.Security.CustomAssessmentAutomation("customAssessmentAutomation", new()
///     {
///         CompressedQuery = "DQAKAEkAYQBtAF8ARwByAG8AdQBwAA0ACgB8ACAAZQB4AHQAZQBuAGQAIABIAGUAYQBsAHQAaABTAHQAYQB0AHUAcwAgAD0AIABpAGYAZgAoAHQAbwBzAHQAcgBpAG4AZwAoAFIAZQBjAG8AcgBkAC4AVQBzAGUAcgBOAGEAbQBlACkAIABjAG8AbgB0AGEAaQBuAHMAIAAnAHUAcwBlAHIAJwAsACAAJwBVAE4ASABFAEEATABUAEgAWQAnACwAIAAnAEgARQBBAEwAVABIAFkAJwApAA0ACgA=",
///         CustomAssessmentAutomationName = "MyCustomAssessmentAutomation",
///         Description = "Data should be encrypted",
///         DisplayName = "Password Policy",
///         RemediationDescription = "Encrypt store by...",
///         ResourceGroupName = "TestResourceGroup",
///         Severity = AzureNative.Security.SeverityEnum.Medium,
///         SupportedCloud = AzureNative.Security.SupportedCloudEnum.AWS,
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
/// 		_, err := security.NewCustomAssessmentAutomation(ctx, "customAssessmentAutomation", &security.CustomAssessmentAutomationArgs{
/// 			CompressedQuery:                pulumi.String("DQAKAEkAYQBtAF8ARwByAG8AdQBwAA0ACgB8ACAAZQB4AHQAZQBuAGQAIABIAGUAYQBsAHQAaABTAHQAYQB0AHUAcwAgAD0AIABpAGYAZgAoAHQAbwBzAHQAcgBpAG4AZwAoAFIAZQBjAG8AcgBkAC4AVQBzAGUAcgBOAGEAbQBlACkAIABjAG8AbgB0AGEAaQBuAHMAIAAnAHUAcwBlAHIAJwAsACAAJwBVAE4ASABFAEEATABUAEgAWQAnACwAIAAnAEgARQBBAEwAVABIAFkAJwApAA0ACgA="),
/// 			CustomAssessmentAutomationName: pulumi.String("MyCustomAssessmentAutomation"),
/// 			Description:                    pulumi.String("Data should be encrypted"),
/// 			DisplayName:                    pulumi.String("Password Policy"),
/// 			RemediationDescription:         pulumi.String("Encrypt store by..."),
/// 			ResourceGroupName:              pulumi.String("TestResourceGroup"),
/// 			Severity:                       pulumi.String(security.SeverityEnumMedium),
/// 			SupportedCloud:                 pulumi.String(security.SupportedCloudEnumAWS),
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
/// import com.pulumi.azurenative.security.CustomAssessmentAutomation;
/// import com.pulumi.azurenative.security.CustomAssessmentAutomationArgs;
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
///         var customAssessmentAutomation = new CustomAssessmentAutomation("customAssessmentAutomation", CustomAssessmentAutomationArgs.builder()
///             .compressedQuery("DQAKAEkAYQBtAF8ARwByAG8AdQBwAA0ACgB8ACAAZQB4AHQAZQBuAGQAIABIAGUAYQBsAHQAaABTAHQAYQB0AHUAcwAgAD0AIABpAGYAZgAoAHQAbwBzAHQAcgBpAG4AZwAoAFIAZQBjAG8AcgBkAC4AVQBzAGUAcgBOAGEAbQBlACkAIABjAG8AbgB0AGEAaQBuAHMAIAAnAHUAcwBlAHIAJwAsACAAJwBVAE4ASABFAEEATABUAEgAWQAnACwAIAAnAEgARQBBAEwAVABIAFkAJwApAA0ACgA=")
///             .customAssessmentAutomationName("MyCustomAssessmentAutomation")
///             .description("Data should be encrypted")
///             .displayName("Password Policy")
///             .remediationDescription("Encrypt store by...")
///             .resourceGroupName("TestResourceGroup")
///             .severity("Medium")
///             .supportedCloud("AWS")
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
/// const customAssessmentAutomation = new azure_native.security.CustomAssessmentAutomation("customAssessmentAutomation", {
///     compressedQuery: "DQAKAEkAYQBtAF8ARwByAG8AdQBwAA0ACgB8ACAAZQB4AHQAZQBuAGQAIABIAGUAYQBsAHQAaABTAHQAYQB0AHUAcwAgAD0AIABpAGYAZgAoAHQAbwBzAHQAcgBpAG4AZwAoAFIAZQBjAG8AcgBkAC4AVQBzAGUAcgBOAGEAbQBlACkAIABjAG8AbgB0AGEAaQBuAHMAIAAnAHUAcwBlAHIAJwAsACAAJwBVAE4ASABFAEEATABUAEgAWQAnACwAIAAnAEgARQBBAEwAVABIAFkAJwApAA0ACgA=",
///     customAssessmentAutomationName: "MyCustomAssessmentAutomation",
///     description: "Data should be encrypted",
///     displayName: "Password Policy",
///     remediationDescription: "Encrypt store by...",
///     resourceGroupName: "TestResourceGroup",
///     severity: azure_native.security.SeverityEnum.Medium,
///     supportedCloud: azure_native.security.SupportedCloudEnum.AWS,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_assessment_automation = azure_native.security.CustomAssessmentAutomation("customAssessmentAutomation",
///     compressed_query="DQAKAEkAYQBtAF8ARwByAG8AdQBwAA0ACgB8ACAAZQB4AHQAZQBuAGQAIABIAGUAYQBsAHQAaABTAHQAYQB0AHUAcwAgAD0AIABpAGYAZgAoAHQAbwBzAHQAcgBpAG4AZwAoAFIAZQBjAG8AcgBkAC4AVQBzAGUAcgBOAGEAbQBlACkAIABjAG8AbgB0AGEAaQBuAHMAIAAnAHUAcwBlAHIAJwAsACAAJwBVAE4ASABFAEEATABUAEgAWQAnACwAIAAnAEgARQBBAEwAVABIAFkAJwApAA0ACgA=",
///     custom_assessment_automation_name="MyCustomAssessmentAutomation",
///     description="Data should be encrypted",
///     display_name="Password Policy",
///     remediation_description="Encrypt store by...",
///     resource_group_name="TestResourceGroup",
///     severity=azure_native.security.SeverityEnum.MEDIUM,
///     supported_cloud=azure_native.security.SupportedCloudEnum.AWS)
///
/// ```
///
/// ```yaml
/// resources:
///   customAssessmentAutomation:
///     type: azure-native:security:CustomAssessmentAutomation
///     properties:
///       compressedQuery: DQAKAEkAYQBtAF8ARwByAG8AdQBwAA0ACgB8ACAAZQB4AHQAZQBuAGQAIABIAGUAYQBsAHQAaABTAHQAYQB0AHUAcwAgAD0AIABpAGYAZgAoAHQAbwBzAHQAcgBpAG4AZwAoAFIAZQBjAG8AcgBkAC4AVQBzAGUAcgBOAGEAbQBlACkAIABjAG8AbgB0AGEAaQBuAHMAIAAnAHUAcwBlAHIAJwAsACAAJwBVAE4ASABFAEEATABUAEgAWQAnACwAIAAnAEgARQBBAEwAVABIAFkAJwApAA0ACgA=
///       customAssessmentAutomationName: MyCustomAssessmentAutomation
///       description: Data should be encrypted
///       displayName: Password Policy
///       remediationDescription: Encrypt store by...
///       resourceGroupName: TestResourceGroup
///       severity: Medium
///       supportedCloud: AWS
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
/// $ pulumi import azure-native:security:CustomAssessmentAutomation 33e7cc6e-a139-4723-a0e5-76993aee0771 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Security/customAssessmentAutomations/{customAssessmentAutomationName}
/// ```
class CustomAssessmentAutomation extends pulumi.CustomResource {
  /// The assessment metadata key used when an assessment is generated for this assessment automation.
  late final pulumi.Output<String?> assessmentKey;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// GZip encoded KQL query representing the assessment automation results required.
  late final pulumi.Output<String?> compressedQuery;
  /// The description to relate to the assessments generated by this assessment automation.
  late final pulumi.Output<String?> description;
  /// The display name of the assessments generated by this assessment automation.
  late final pulumi.Output<String?> displayName;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The remediation description to relate to the assessments generated by this assessment automation.
  late final pulumi.Output<String?> remediationDescription;
  /// The severity to relate to the assessments generated by this assessment automation.
  late final pulumi.Output<String?> severity;
  /// Relevant cloud for the custom assessment automation.
  late final pulumi.Output<String?> supportedCloud;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [CustomAssessmentAutomation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomAssessmentAutomation]. {@macro pulumi_security_custom_assessment_automation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomAssessmentAutomation(
    String name, {
    CustomAssessmentAutomationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:CustomAssessmentAutomation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessmentKey = registerOutput<String?>('assessmentKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    compressedQuery = registerOutput<String?>('compressedQuery');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    remediationDescription = registerOutput<String?>('remediationDescription');
    severity = registerOutput<String?>('severity');
    supportedCloud = registerOutput<String?>('supportedCloud');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
