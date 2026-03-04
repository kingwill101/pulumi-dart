import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessments_metadata_subscription_args.dart';

/// Security assessment metadata
///
/// Uses Azure REST API version 2019-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create security assessment metadata for subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessmentsMetadataSubscription = new AzureNative.Security.AssessmentsMetadataSubscription("assessmentsMetadataSubscription", new()
///     {
///         AssessmentMetadataName = "ca039e75-a276-4175-aebc-bcd41e4b14b7",
///         AssessmentType = AzureNative.Security.AssessmentType.CustomerManaged,
///         Categories = new[]
///         {
///             AzureNative.Security.Categories.Compute,
///         },
///         Description = "Install an endpoint protection solution on your virtual machines scale sets, to protect them from threats and vulnerabilities.",
///         DisplayName = "Install endpoint protection solution on virtual machine scale sets",
///         ImplementationEffort = AzureNative.Security.ImplementationEffort.Low,
///         RemediationDescription = "To install an endpoint protection solution: 1.  <a href=\"https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-faq#how-do-i-turn-on-antimalware-in-my-virtual-machine-scale-set\">Follow the instructions in How do I turn on antimalware in my virtual machine scale set</a>",
///         Severity = AzureNative.Security.Severity.Medium,
///         Threats = new[]
///         {
///             AzureNative.Security.Threats.DataExfiltration,
///             AzureNative.Security.Threats.DataSpillage,
///             AzureNative.Security.Threats.MaliciousInsider,
///         },
///         UserImpact = AzureNative.Security.UserImpact.Low,
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
/// 		_, err := security.NewAssessmentsMetadataSubscription(ctx, "assessmentsMetadataSubscription", &security.AssessmentsMetadataSubscriptionArgs{
/// 			AssessmentMetadataName: pulumi.String("ca039e75-a276-4175-aebc-bcd41e4b14b7"),
/// 			AssessmentType:         pulumi.String(security.AssessmentTypeCustomerManaged),
/// 			Categories: pulumi.StringArray{
/// 				pulumi.String(security.CategoriesCompute),
/// 			},
/// 			Description:            pulumi.String("Install an endpoint protection solution on your virtual machines scale sets, to protect them from threats and vulnerabilities."),
/// 			DisplayName:            pulumi.String("Install endpoint protection solution on virtual machine scale sets"),
/// 			ImplementationEffort:   pulumi.String(security.ImplementationEffortLow),
/// 			RemediationDescription: pulumi.String("To install an endpoint protection solution: 1.  <a href=\"https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-faq#how-do-i-turn-on-antimalware-in-my-virtual-machine-scale-set\">Follow the instructions in How do I turn on antimalware in my virtual machine scale set</a>"),
/// 			Severity:               pulumi.String(security.SeverityMedium),
/// 			Threats: pulumi.StringArray{
/// 				pulumi.String(security.ThreatsDataExfiltration),
/// 				pulumi.String(security.ThreatsDataSpillage),
/// 				pulumi.String(security.ThreatsMaliciousInsider),
/// 			},
/// 			UserImpact: pulumi.String(security.UserImpactLow),
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
/// import com.pulumi.azurenative.security.AssessmentsMetadataSubscription;
/// import com.pulumi.azurenative.security.AssessmentsMetadataSubscriptionArgs;
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
///         var assessmentsMetadataSubscription = new AssessmentsMetadataSubscription("assessmentsMetadataSubscription", AssessmentsMetadataSubscriptionArgs.builder()
///             .assessmentMetadataName("ca039e75-a276-4175-aebc-bcd41e4b14b7")
///             .assessmentType("CustomerManaged")
///             .categories("Compute")
///             .description("Install an endpoint protection solution on your virtual machines scale sets, to protect them from threats and vulnerabilities.")
///             .displayName("Install endpoint protection solution on virtual machine scale sets")
///             .implementationEffort("Low")
///             .remediationDescription("To install an endpoint protection solution: 1.  <a href=\"https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-faq#how-do-i-turn-on-antimalware-in-my-virtual-machine-scale-set\">Follow the instructions in How do I turn on antimalware in my virtual machine scale set</a>")
///             .severity("Medium")
///             .threats(
///                 "dataExfiltration",
///                 "dataSpillage",
///                 "maliciousInsider")
///             .userImpact("Low")
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
/// const assessmentsMetadataSubscription = new azure_native.security.AssessmentsMetadataSubscription("assessmentsMetadataSubscription", {
///     assessmentMetadataName: "ca039e75-a276-4175-aebc-bcd41e4b14b7",
///     assessmentType: azure_native.security.AssessmentType.CustomerManaged,
///     categories: [azure_native.security.Categories.Compute],
///     description: "Install an endpoint protection solution on your virtual machines scale sets, to protect them from threats and vulnerabilities.",
///     displayName: "Install endpoint protection solution on virtual machine scale sets",
///     implementationEffort: azure_native.security.ImplementationEffort.Low,
///     remediationDescription: "To install an endpoint protection solution: 1.  <a href=\"https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-faq#how-do-i-turn-on-antimalware-in-my-virtual-machine-scale-set\">Follow the instructions in How do I turn on antimalware in my virtual machine scale set</a>",
///     severity: azure_native.security.Severity.Medium,
///     threats: [
///         azure_native.security.Threats.DataExfiltration,
///         azure_native.security.Threats.DataSpillage,
///         azure_native.security.Threats.MaliciousInsider,
///     ],
///     userImpact: azure_native.security.UserImpact.Low,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessments_metadata_subscription = azure_native.security.AssessmentsMetadataSubscription("assessmentsMetadataSubscription",
///     assessment_metadata_name="ca039e75-a276-4175-aebc-bcd41e4b14b7",
///     assessment_type=azure_native.security.AssessmentType.CUSTOMER_MANAGED,
///     categories=[azure_native.security.Categories.COMPUTE],
///     description="Install an endpoint protection solution on your virtual machines scale sets, to protect them from threats and vulnerabilities.",
///     display_name="Install endpoint protection solution on virtual machine scale sets",
///     implementation_effort=azure_native.security.ImplementationEffort.LOW,
///     remediation_description="To install an endpoint protection solution: 1.  <a href=\"https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-faq#how-do-i-turn-on-antimalware-in-my-virtual-machine-scale-set\">Follow the instructions in How do I turn on antimalware in my virtual machine scale set</a>",
///     severity=azure_native.security.Severity.MEDIUM,
///     threats=[
///         azure_native.security.Threats.DATA_EXFILTRATION,
///         azure_native.security.Threats.DATA_SPILLAGE,
///         azure_native.security.Threats.MALICIOUS_INSIDER,
///     ],
///     user_impact=azure_native.security.UserImpact.LOW)
///
/// ```
///
/// ```yaml
/// resources:
///   assessmentsMetadataSubscription:
///     type: azure-native:security:AssessmentsMetadataSubscription
///     properties:
///       assessmentMetadataName: ca039e75-a276-4175-aebc-bcd41e4b14b7
///       assessmentType: CustomerManaged
///       categories:
///         - Compute
///       description: Install an endpoint protection solution on your virtual machines scale sets, to protect them from threats and vulnerabilities.
///       displayName: Install endpoint protection solution on virtual machine scale sets
///       implementationEffort: Low
///       remediationDescription: 'To install an endpoint protection solution: 1.  <a href="https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-faq#how-do-i-turn-on-antimalware-in-my-virtual-machine-scale-set">Follow the instructions in How do I turn on antimalware in my virtual machine scale set</a>'
///       severity: Medium
///       threats:
///         - dataExfiltration
///         - dataSpillage
///         - maliciousInsider
///       userImpact: Low
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
/// $ pulumi import azure-native:security:AssessmentsMetadataSubscription ca039e75-a276-4175-aebc-bcd41e4b14b7 /subscriptions/{subscriptionId}/providers/Microsoft.Security/assessmentMetadata/{assessmentMetadataName}
/// ```
class AssessmentsMetadataSubscription extends pulumi.CustomResource {
  /// BuiltIn if the assessment based on built-in Azure Policy definition, Custom if the assessment based on custom Azure Policy definition
  late final pulumi.Output<String> assessmentType;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<List<String>?> categories;

  /// Human readable description of the assessment
  late final pulumi.Output<String?> description;

  /// User friendly display name of the assessment
  late final pulumi.Output<String> displayName;

  /// The implementation effort required to remediate this assessment
  late final pulumi.Output<String?> implementationEffort;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Azure resource ID of the policy definition that turns this assessment calculation on
  late final pulumi.Output<String> policyDefinitionId;

  /// True if this assessment is in preview release status
  late final pulumi.Output<bool?> preview;

  /// Human readable description of what you should do to mitigate this security issue
  late final pulumi.Output<String?> remediationDescription;

  /// The severity level of the assessment
  late final pulumi.Output<String> severity;
  late final pulumi.Output<List<String>?> threats;

  /// Resource type
  late final pulumi.Output<String> type;

  /// The user impact of the assessment
  late final pulumi.Output<String?> userImpact;

  /// Creates a new [AssessmentsMetadataSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentsMetadataSubscription]. {@macro pulumi_security_assessments_metadata_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentsMetadataSubscription(
    String name, {
    AssessmentsMetadataSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:AssessmentsMetadataSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assessmentType = registerOutput<String>('assessmentType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    categories = registerOutput<List<String>?>('categories');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    implementationEffort = registerOutput<String?>('implementationEffort');
    this.name = registerOutput<String>('name');
    policyDefinitionId = registerOutput<String>('policyDefinitionId');
    preview = registerOutput<bool?>('preview');
    remediationDescription = registerOutput<String?>('remediationDescription');
    severity = registerOutput<String>('severity');
    threats = registerOutput<List<String>?>('threats');
    type = registerOutput<String>('type');
    userImpact = registerOutput<String?>('userImpact');
  }
}
