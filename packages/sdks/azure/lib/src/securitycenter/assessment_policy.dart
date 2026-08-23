import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_policy_args.dart';
import 'assessment_policy_state.dart';

/// Manages the Security Center Assessment Metadata for Azure Security Center.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.securitycenter.AssessmentPolicy("example", {
///     displayName: "Test Display Name",
///     severity: "Medium",
///     description: "Test Description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.securitycenter.AssessmentPolicy("example",
///     display_name="Test Display Name",
///     severity="Medium",
///     description="Test Description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.SecurityCenter.AssessmentPolicy("example", new()
///     {
///         DisplayName = "Test Display Name",
///         Severity = "Medium",
///         Description = "Test Description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewAssessmentPolicy(ctx, "example", &securitycenter.AssessmentPolicyArgs{
/// 			DisplayName: pulumi.String("Test Display Name"),
/// 			Severity:    pulumi.String("Medium"),
/// 			Description: pulumi.String("Test Description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_securitycenter_assessmentpolicy" "example" {
///   display_name = "Test Display Name"
///   severity     = "Medium"
///   description  = "Test Description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.securitycenter.AssessmentPolicy;
/// import com.pulumi.azure.securitycenter.AssessmentPolicyArgs;
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
///         var example = new AssessmentPolicy("example", AssessmentPolicyArgs.builder()
///             .displayName("Test Display Name")
///             .severity("Medium")
///             .description("Test Description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:securitycenter:AssessmentPolicy
///     properties:
///       displayName: Test Display Name
///       severity: Medium
///       description: Test Description
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Security` - 2021-06-01
///
/// ## Import
///
/// Security Assessments Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/assessmentPolicy:AssessmentPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Security/assessmentMetadata/metadata1
/// ```
class AssessmentPolicy extends pulumi.CustomResource {
  /// A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT` and `Networking`.
  late final pulumi.Output<List<String>> categories;
  /// The description of the Security Center Assessment.
  late final pulumi.Output<String> description;
  /// The user-friendly display name of the Security Center Assessment.
  late final pulumi.Output<String> displayName;
  /// The implementation effort which is used to remediate the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`.
  late final pulumi.Output<String?> implementationEffort;
  /// The GUID as the name of the Security Center Assessment Policy.
  late final pulumi.Output<String> name;
  /// The description which is used to mitigate the security issue.
  late final pulumi.Output<String?> remediationDescription;
  /// The severity level of the Security Center Assessment. Possible values are `Low`, `Medium` and `High`. Defaults to `Medium`.
  late final pulumi.Output<String?> severity;
  /// A list of the threat impacts for the Security Center Assessment. Possible values are `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage` and `ThreatResistance`.
  late final pulumi.Output<List<String>?> threats;
  /// The user impact of the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`.
  late final pulumi.Output<String?> userImpact;

  /// Creates a new [AssessmentPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentPolicy]. {@macro pulumi_securitycenter_assessment_policy_assessment_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentPolicy(
    String name, {
    AssessmentPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/assessmentPolicy:AssessmentPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categories = registerOutput<List<String>>('categories');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    implementationEffort = registerOutput<String?>('implementationEffort');
    this.name = registerOutput<String>('name');
    remediationDescription = registerOutput<String?>('remediationDescription');
    severity = registerOutput<String?>('severity');
    threats = registerOutput<List<String>?>('threats');
    userImpact = registerOutput<String?>('userImpact');
  }

  /// Gets an existing [AssessmentPolicy] resource's state with the given [name] and [id].
  static AssessmentPolicy get(
    String name,
    pulumi.Input<String> id, {
    AssessmentPolicyState? state,
  }) {
    return AssessmentPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssessmentPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/assessmentPolicy:AssessmentPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    categories = registerOutput<List<String>>('categories');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    implementationEffort = registerOutput<String?>('implementationEffort');
    this.name = registerOutput<String>('name');
    remediationDescription = registerOutput<String?>('remediationDescription');
    severity = registerOutput<String?>('severity');
    threats = registerOutput<List<String>?>('threats');
    userImpact = registerOutput<String?>('userImpact');
  }
}
