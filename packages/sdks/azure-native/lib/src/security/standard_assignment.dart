import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_standard_item_response.dart';
import 'standard_assignment_args.dart';
import 'standard_assignment_metadata_response.dart';
import 'standard_assignment_properties_response_attestation_data.dart';
import 'standard_assignment_properties_response_exemption_data.dart';

/// Security Assignment on a resource group over a given scope
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2024-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put an audit standard assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var standardAssignment = new AzureNative.Security.StandardAssignment("standardAssignment", new()
///     {
///         AssignedStandard = new AzureNative.Security.Inputs.AssignedStandardItemArgs
///         {
///             Id = "/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///         },
///         Description = "Set of policies monitored by Azure Security Center for cross cloud",
///         DisplayName = "ASC Default",
///         Effect = AzureNative.Security.Effect.Audit,
///         ExcludedScopes = new[] {},
///         ResourceId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         StandardAssignmentName = "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
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
/// 		_, err := security.NewStandardAssignment(ctx, "standardAssignment", &security.StandardAssignmentArgs{
/// 			AssignedStandard: &security.AssignedStandardItemArgs{
/// 				Id: pulumi.String("/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
/// 			},
/// 			Description:            pulumi.String("Set of policies monitored by Azure Security Center for cross cloud"),
/// 			DisplayName:            pulumi.String("ASC Default"),
/// 			Effect:                 pulumi.String(security.EffectAudit),
/// 			ExcludedScopes:         pulumi.StringArray{},
/// 			ResourceId:             pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			StandardAssignmentName: pulumi.String("1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
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
/// import com.pulumi.azurenative.security.StandardAssignment;
/// import com.pulumi.azurenative.security.StandardAssignmentArgs;
/// import com.pulumi.azurenative.security.inputs.AssignedStandardItemArgs;
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
///         var standardAssignment = new StandardAssignment("standardAssignment", StandardAssignmentArgs.builder()
///             .assignedStandard(AssignedStandardItemArgs.builder()
///                 .id("/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///                 .build())
///             .description("Set of policies monitored by Azure Security Center for cross cloud")
///             .displayName("ASC Default")
///             .effect("Audit")
///             .excludedScopes()
///             .resourceId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///             .standardAssignmentName("1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
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
/// const standardAssignment = new azure_native.security.StandardAssignment("standardAssignment", {
///     assignedStandard: {
///         id: "/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     description: "Set of policies monitored by Azure Security Center for cross cloud",
///     displayName: "ASC Default",
///     effect: azure_native.security.Effect.Audit,
///     excludedScopes: [],
///     resourceId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     standardAssignmentName: "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// standard_assignment = azure_native.security.StandardAssignment("standardAssignment",
///     assigned_standard={
///         "id": "/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     description="Set of policies monitored by Azure Security Center for cross cloud",
///     display_name="ASC Default",
///     effect=azure_native.security.Effect.AUDIT,
///     excluded_scopes=[],
///     resource_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     standard_assignment_name="1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///
/// ```
///
/// ```yaml
/// resources:
///   standardAssignment:
///     type: azure-native:security:StandardAssignment
///     properties:
///       assignedStandard:
///         id: /providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///       description: Set of policies monitored by Azure Security Center for cross cloud
///       displayName: ASC Default
///       effect: Audit
///       excludedScopes: []
///       resourceId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       standardAssignmentName: 1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put exemption standard assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var standardAssignment = new AzureNative.Security.StandardAssignment("standardAssignment", new()
///     {
///         AssignedStandard = new AzureNative.Security.Inputs.AssignedStandardItemArgs
///         {
///             Id = "/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///         },
///         Description = "Exemption description",
///         DisplayName = "Test exemption",
///         Effect = AzureNative.Security.Effect.Exempt,
///         ExemptionData = new AzureNative.Security.Inputs.StandardAssignmentPropertiesExemptionDataArgs
///         {
///             AssignedAssessment = new AzureNative.Security.Inputs.AssignedAssessmentItemArgs
///             {
///                 AssessmentKey = "1195afff-c881-495e-9bc5-1486211ae03f",
///             },
///             ExemptionCategory = AzureNative.Security.ExemptionCategory.Waiver,
///         },
///         ExpiresOn = "2022-05-01T19:50:47.083633Z",
///         ResourceId = "subscriptions/212f9889-769e-45ae-ab43-6da33674bd26/resourceGroups/ANAT_TEST_RG/providers/Microsoft.Compute/virtualMachines/anatTestE2LA",
///         StandardAssignmentName = "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
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
/// 		_, err := security.NewStandardAssignment(ctx, "standardAssignment", &security.StandardAssignmentArgs{
/// 			AssignedStandard: &security.AssignedStandardItemArgs{
/// 				Id: pulumi.String("/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
/// 			},
/// 			Description: pulumi.String("Exemption description"),
/// 			DisplayName: pulumi.String("Test exemption"),
/// 			Effect:      pulumi.String(security.EffectExempt),
/// 			ExemptionData: &security.StandardAssignmentPropertiesExemptionDataArgs{
/// 				AssignedAssessment: &security.AssignedAssessmentItemArgs{
/// 					AssessmentKey: pulumi.String("1195afff-c881-495e-9bc5-1486211ae03f"),
/// 				},
/// 				ExemptionCategory: pulumi.String(security.ExemptionCategoryWaiver),
/// 			},
/// 			ExpiresOn:              pulumi.String("2022-05-01T19:50:47.083633Z"),
/// 			ResourceId:             pulumi.String("subscriptions/212f9889-769e-45ae-ab43-6da33674bd26/resourceGroups/ANAT_TEST_RG/providers/Microsoft.Compute/virtualMachines/anatTestE2LA"),
/// 			StandardAssignmentName: pulumi.String("1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
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
/// import com.pulumi.azurenative.security.StandardAssignment;
/// import com.pulumi.azurenative.security.StandardAssignmentArgs;
/// import com.pulumi.azurenative.security.inputs.AssignedStandardItemArgs;
/// import com.pulumi.azurenative.security.inputs.StandardAssignmentPropertiesExemptionDataArgs;
/// import com.pulumi.azurenative.security.inputs.AssignedAssessmentItemArgs;
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
///         var standardAssignment = new StandardAssignment("standardAssignment", StandardAssignmentArgs.builder()
///             .assignedStandard(AssignedStandardItemArgs.builder()
///                 .id("/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///                 .build())
///             .description("Exemption description")
///             .displayName("Test exemption")
///             .effect("Exempt")
///             .exemptionData(StandardAssignmentPropertiesExemptionDataArgs.builder()
///                 .assignedAssessment(AssignedAssessmentItemArgs.builder()
///                     .assessmentKey("1195afff-c881-495e-9bc5-1486211ae03f")
///                     .build())
///                 .exemptionCategory("waiver")
///                 .build())
///             .expiresOn("2022-05-01T19:50:47.083633Z")
///             .resourceId("subscriptions/212f9889-769e-45ae-ab43-6da33674bd26/resourceGroups/ANAT_TEST_RG/providers/Microsoft.Compute/virtualMachines/anatTestE2LA")
///             .standardAssignmentName("1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
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
/// const standardAssignment = new azure_native.security.StandardAssignment("standardAssignment", {
///     assignedStandard: {
///         id: "/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     description: "Exemption description",
///     displayName: "Test exemption",
///     effect: azure_native.security.Effect.Exempt,
///     exemptionData: {
///         assignedAssessment: {
///             assessmentKey: "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         exemptionCategory: azure_native.security.ExemptionCategory.Waiver,
///     },
///     expiresOn: "2022-05-01T19:50:47.083633Z",
///     resourceId: "subscriptions/212f9889-769e-45ae-ab43-6da33674bd26/resourceGroups/ANAT_TEST_RG/providers/Microsoft.Compute/virtualMachines/anatTestE2LA",
///     standardAssignmentName: "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// standard_assignment = azure_native.security.StandardAssignment("standardAssignment",
///     assigned_standard={
///         "id": "/providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     description="Exemption description",
///     display_name="Test exemption",
///     effect=azure_native.security.Effect.EXEMPT,
///     exemption_data={
///         "assigned_assessment": {
///             "assessment_key": "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         "exemption_category": azure_native.security.ExemptionCategory.WAIVER,
///     },
///     expires_on="2022-05-01T19:50:47.083633Z",
///     resource_id="subscriptions/212f9889-769e-45ae-ab43-6da33674bd26/resourceGroups/ANAT_TEST_RG/providers/Microsoft.Compute/virtualMachines/anatTestE2LA",
///     standard_assignment_name="1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///
/// ```
///
/// ```yaml
/// resources:
///   standardAssignment:
///     type: azure-native:security:StandardAssignment
///     properties:
///       assignedStandard:
///         id: /providers/Microsoft.Security/securityStandards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///       description: Exemption description
///       displayName: Test exemption
///       effect: Exempt
///       exemptionData:
///         assignedAssessment:
///           assessmentKey: 1195afff-c881-495e-9bc5-1486211ae03f
///         exemptionCategory: waiver
///       expiresOn: 2022-05-01T19:50:47.083633Z
///       resourceId: subscriptions/212f9889-769e-45ae-ab43-6da33674bd26/resourceGroups/ANAT_TEST_RG/providers/Microsoft.Compute/virtualMachines/anatTestE2LA
///       standardAssignmentName: 1f3afdf9-d0c9-4c3d-847f-89da613e70a8
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
/// $ pulumi import azure-native:security:StandardAssignment 1f3afdf9-d0c9-4c3d-847f-89da613e70a8 /{resourceId}/providers/Microsoft.Security/standardAssignments/{standardAssignmentName}
/// ```
class StandardAssignment extends pulumi.CustomResource {
  /// Standard item with key as applied to this standard assignment over the given scope
  late final pulumi.Output<AssignedStandardItemResponse?> assignedStandard;

  /// Additional data about assignment that has Attest effect
  late final pulumi.Output<StandardAssignmentPropertiesResponseAttestationData?>
  attestationData;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of the standardAssignment
  late final pulumi.Output<String?> description;

  /// Display name of the standardAssignment
  late final pulumi.Output<String?> displayName;

  /// Expected effect of this assignment (Audit/Exempt/Attest)
  late final pulumi.Output<String?> effect;

  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  late final pulumi.Output<List<String>?> excludedScopes;

  /// Additional data about assignment that has Exempt effect
  late final pulumi.Output<StandardAssignmentPropertiesResponseExemptionData?>
  exemptionData;

  /// Expiration date of this assignment as a full ISO date
  late final pulumi.Output<String?> expiresOn;

  /// The standard assignment metadata.
  late final pulumi.Output<StandardAssignmentMetadataResponse?> metadata;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [StandardAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandardAssignment]. {@macro pulumi_security_standard_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandardAssignment(
    String name, {
    StandardAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:StandardAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignedStandard = registerOutput<AssignedStandardItemResponse?>(
      'assignedStandard',
    );
    attestationData =
        registerOutput<StandardAssignmentPropertiesResponseAttestationData?>(
          'attestationData',
        );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effect = registerOutput<String?>('effect');
    excludedScopes = registerOutput<List<String>?>('excludedScopes');
    exemptionData =
        registerOutput<StandardAssignmentPropertiesResponseExemptionData?>(
          'exemptionData',
        );
    expiresOn = registerOutput<String?>('expiresOn');
    metadata = registerOutput<StandardAssignmentMetadataResponse?>('metadata');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
