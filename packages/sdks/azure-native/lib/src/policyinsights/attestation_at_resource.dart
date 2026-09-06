import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_at_resource_args.dart';
import 'attestation_evidence_response.dart';
import 'system_data_response.dart';

/// An attestation resource.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native policyinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create attestation at individual resource scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attestationAtResource = new AzureNative.PolicyInsights.AttestationAtResource("attestationAtResource", new()
///     {
///         AssessmentDate = "2021-06-10T00:00:00Z",
///         AttestationName = "790996e6-9871-4b1f-9cd9-ec42cd6ced1e",
///         Comments = "This subscription has passed a security audit.",
///         ComplianceState = AzureNative.PolicyInsights.ComplianceState.Compliant,
///         Evidence = new[]
///         {
///             new AzureNative.PolicyInsights.Inputs.AttestationEvidenceArgs
///             {
///                 Description = "The results of the security audit.",
///                 SourceUri = "https://gist.github.com/contoso/9573e238762c60166c090ae16b814011",
///             },
///         },
///         ExpiresOn = "2021-06-15T00:00:00Z",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["departmentId"] = "NYC-MARKETING-1",
///         },
///         Owner = "55a32e28-3aa5-4eea-9b5a-4cd85153b966",
///         PolicyAssignmentId = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///         PolicyDefinitionReferenceId = "0b158b46-ff42-4799-8e39-08a5c23b4551",
///         ResourceId = "subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM",
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
/// 		_, err := policyinsights.NewAttestationAtResource(ctx, "attestationAtResource", &policyinsights.AttestationAtResourceArgs{
/// 			AssessmentDate:  pulumi.String("2021-06-10T00:00:00Z"),
/// 			AttestationName: pulumi.String("790996e6-9871-4b1f-9cd9-ec42cd6ced1e"),
/// 			Comments:        pulumi.String("This subscription has passed a security audit."),
/// 			ComplianceState: pulumi.String(policyinsights.ComplianceStateCompliant),
/// 			Evidence: policyinsights.AttestationEvidenceArray{
/// 				&policyinsights.AttestationEvidenceArgs{
/// 					Description: pulumi.String("The results of the security audit."),
/// 					SourceUri:   pulumi.String("https://gist.github.com/contoso/9573e238762c60166c090ae16b814011"),
/// 				},
/// 			},
/// 			ExpiresOn: pulumi.String("2021-06-15T00:00:00Z"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"departmentId": "NYC-MARKETING-1",
/// 			}),
/// 			Owner:                       pulumi.String("55a32e28-3aa5-4eea-9b5a-4cd85153b966"),
/// 			PolicyAssignmentId:          pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"),
/// 			PolicyDefinitionReferenceId: pulumi.String("0b158b46-ff42-4799-8e39-08a5c23b4551"),
/// 			ResourceId:                  pulumi.String("subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM"),
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
/// resource "azure-native_policyinsights_attestationatresource" "attestationAtResource" {
///   assessment_date  = "2021-06-10T00:00:00Z"
///   attestation_name = "790996e6-9871-4b1f-9cd9-ec42cd6ced1e"
///   comments         = "This subscription has passed a security audit."
///   compliance_state = "Compliant"
///   evidence {
///     description = "The results of the security audit."
///     source_uri  = "https://gist.github.com/contoso/9573e238762c60166c090ae16b814011"
///   }
///   expires_on = "2021-06-15T00:00:00Z"
///   metadata = {
///     "departmentId" = "NYC-MARKETING-1"
///   }
///   owner                          = "55a32e28-3aa5-4eea-9b5a-4cd85153b966"
///   policy_assignment_id           = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"
///   policy_definition_reference_id = "0b158b46-ff42-4799-8e39-08a5c23b4551"
///   resource_id                    = "subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM"
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
/// import com.pulumi.azurenative.policyinsights.AttestationAtResource;
/// import com.pulumi.azurenative.policyinsights.AttestationAtResourceArgs;
/// import com.pulumi.azurenative.policyinsights.inputs.AttestationEvidenceArgs;
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
///         var attestationAtResource = new AttestationAtResource("attestationAtResource", AttestationAtResourceArgs.builder()
///             .assessmentDate("2021-06-10T00:00:00Z")
///             .attestationName("790996e6-9871-4b1f-9cd9-ec42cd6ced1e")
///             .comments("This subscription has passed a security audit.")
///             .complianceState("Compliant")
///             .evidence(AttestationEvidenceArgs.builder()
///                 .description("The results of the security audit.")
///                 .sourceUri("https://gist.github.com/contoso/9573e238762c60166c090ae16b814011")
///                 .build())
///             .expiresOn("2021-06-15T00:00:00Z")
///             .metadata(Map.of("departmentId", "NYC-MARKETING-1"))
///             .owner("55a32e28-3aa5-4eea-9b5a-4cd85153b966")
///             .policyAssignmentId("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5")
///             .policyDefinitionReferenceId("0b158b46-ff42-4799-8e39-08a5c23b4551")
///             .resourceId("subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM")
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
/// const attestationAtResource = new azure_native.policyinsights.AttestationAtResource("attestationAtResource", {
///     assessmentDate: "2021-06-10T00:00:00Z",
///     attestationName: "790996e6-9871-4b1f-9cd9-ec42cd6ced1e",
///     comments: "This subscription has passed a security audit.",
///     complianceState: azure_native.policyinsights.ComplianceState.Compliant,
///     evidence: [{
///         description: "The results of the security audit.",
///         sourceUri: "https://gist.github.com/contoso/9573e238762c60166c090ae16b814011",
///     }],
///     expiresOn: "2021-06-15T00:00:00Z",
///     metadata: {
///         departmentId: "NYC-MARKETING-1",
///     },
///     owner: "55a32e28-3aa5-4eea-9b5a-4cd85153b966",
///     policyAssignmentId: "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     policyDefinitionReferenceId: "0b158b46-ff42-4799-8e39-08a5c23b4551",
///     resourceId: "subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// attestation_at_resource = azure_native.policyinsights.AttestationAtResource("attestationAtResource",
///     assessment_date="2021-06-10T00:00:00Z",
///     attestation_name="790996e6-9871-4b1f-9cd9-ec42cd6ced1e",
///     comments="This subscription has passed a security audit.",
///     compliance_state=azure_native.policyinsights.ComplianceState.COMPLIANT,
///     evidence=[{
///         "description": "The results of the security audit.",
///         "source_uri": "https://gist.github.com/contoso/9573e238762c60166c090ae16b814011",
///     }],
///     expires_on="2021-06-15T00:00:00Z",
///     metadata={
///         "departmentId": "NYC-MARKETING-1",
///     },
///     owner="55a32e28-3aa5-4eea-9b5a-4cd85153b966",
///     policy_assignment_id="/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     policy_definition_reference_id="0b158b46-ff42-4799-8e39-08a5c23b4551",
///     resource_id="subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM")
///
/// ```
///
/// ```yaml
/// resources:
///   attestationAtResource:
///     type: azure-native:policyinsights:AttestationAtResource
///     properties:
///       assessmentDate: 2021-06-10T00:00:00Z
///       attestationName: 790996e6-9871-4b1f-9cd9-ec42cd6ced1e
///       comments: This subscription has passed a security audit.
///       complianceState: Compliant
///       evidence:
///         - description: The results of the security audit.
///           sourceUri: https://gist.github.com/contoso/9573e238762c60166c090ae16b814011
///       expiresOn: 2021-06-15T00:00:00Z
///       metadata:
///         departmentId: NYC-MARKETING-1
///       owner: 55a32e28-3aa5-4eea-9b5a-4cd85153b966
///       policyAssignmentId: /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5
///       policyDefinitionReferenceId: 0b158b46-ff42-4799-8e39-08a5c23b4551
///       resourceId: subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourcegroups/myrg/providers/microsoft.compute/virtualMachines/devVM
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
/// $ pulumi import azure-native:policyinsights:AttestationAtResource 790996e6-9871-4b1f-9cd9-ec42cd6ced1e /{resourceId}/providers/Microsoft.PolicyInsights/attestations/{attestationName}
/// ```
class AttestationAtResource extends pulumi.CustomResource {
  /// The time the evidence was assessed
  late final pulumi.Output<String?> assessmentDate;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Comments describing why this attestation was created.
  late final pulumi.Output<String?> comments;
  /// The compliance state that should be set on the resource.
  late final pulumi.Output<String?> complianceState;
  /// The evidence supporting the compliance state set in this attestation.
  late final pulumi.Output<List<AttestationEvidenceResponse>?> evidence;
  /// The time the compliance state should expire.
  late final pulumi.Output<String?> expiresOn;
  /// The time the compliance state was last changed in this attestation.
  late final pulumi.Output<String> lastComplianceStateChangeAt;
  /// Additional metadata for this attestation
  late final pulumi.Output<dynamic> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  late final pulumi.Output<String?> owner;
  /// The resource ID of the policy assignment that the attestation is setting the state for.
  late final pulumi.Output<String> policyAssignmentId;
  /// The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  late final pulumi.Output<String?> policyDefinitionReferenceId;
  /// The status of the attestation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AttestationAtResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttestationAtResource]. {@macro pulumi_policyinsights_attestation_at_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttestationAtResource(
    String name, {
    AttestationAtResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:policyinsights:AttestationAtResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessmentDate = registerOutput<String?>('assessmentDate');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    comments = registerOutput<String?>('comments');
    complianceState = registerOutput<String?>('complianceState');
    evidence = registerOutput<List<AttestationEvidenceResponse>?>('evidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttestationEvidenceResponse>(guardedValue, (value) => AttestationEvidenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    expiresOn = registerOutput<String?>('expiresOn');
    lastComplianceStateChangeAt = registerOutput<String>('lastComplianceStateChangeAt');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String?>('owner');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AttestationAtResource] resource.
  AttestationAtResource.reference(String urn)
    : super(
        'azure-native:policyinsights:AttestationAtResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    assessmentDate = registerOutput<String?>('assessmentDate');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    comments = registerOutput<String?>('comments');
    complianceState = registerOutput<String?>('complianceState');
    evidence = registerOutput<List<AttestationEvidenceResponse>?>('evidence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttestationEvidenceResponse>(guardedValue, (value) => AttestationEvidenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    expiresOn = registerOutput<String?>('expiresOn');
    lastComplianceStateChangeAt = registerOutput<String>('lastComplianceStateChangeAt');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String?>('owner');
    policyAssignmentId = registerOutput<String>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
