import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_at_resource_group_args.dart';
import 'remediation_deployment_summary_response.dart';
import 'remediation_filters_response.dart';
import 'remediation_properties_failure_threshold_response.dart';
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
/// ### Create remediation at resource group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var remediationAtResourceGroup = new AzureNative.PolicyInsights.RemediationAtResourceGroup("remediationAtResourceGroup", new()
///     {
///         PolicyAssignmentId = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///         RemediationName = "storageRemediation",
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := policyinsights.NewRemediationAtResourceGroup(ctx, "remediationAtResourceGroup", &policyinsights.RemediationAtResourceGroupArgs{
/// 			PolicyAssignmentId: pulumi.String("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"),
/// 			RemediationName:    pulumi.String("storageRemediation"),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
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
/// resource "azure-native_policyinsights_remediationatresourcegroup" "remediationAtResourceGroup" {
///   policy_assignment_id = "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5"
///   remediation_name     = "storageRemediation"
///   resource_group_name  = "myResourceGroup"
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
/// import com.pulumi.azurenative.policyinsights.RemediationAtResourceGroup;
/// import com.pulumi.azurenative.policyinsights.RemediationAtResourceGroupArgs;
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
///         var remediationAtResourceGroup = new RemediationAtResourceGroup("remediationAtResourceGroup", RemediationAtResourceGroupArgs.builder()
///             .policyAssignmentId("/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5")
///             .remediationName("storageRemediation")
///             .resourceGroupName("myResourceGroup")
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
/// const remediationAtResourceGroup = new azure_native.policyinsights.RemediationAtResourceGroup("remediationAtResourceGroup", {
///     policyAssignmentId: "/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     remediationName: "storageRemediation",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// remediation_at_resource_group = azure_native.policyinsights.RemediationAtResourceGroup("remediationAtResourceGroup",
///     policy_assignment_id="/subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5",
///     remediation_name="storageRemediation",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   remediationAtResourceGroup:
///     type: azure-native:policyinsights:RemediationAtResourceGroup
///     properties:
///       policyAssignmentId: /subscriptions/35ee058e-5fa0-414c-8145-3ebb8d09b6e2/resourceGroups/myResourceGroup/providers/microsoft.authorization/policyassignments/b101830944f246d8a14088c5
///       remediationName: storageRemediation
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:policyinsights:RemediationAtResourceGroup storageRemediation /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PolicyInsights/remediations/{remediationName}
/// ```
class RemediationAtResourceGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The remediation correlation Id. Can be used to find events related to the remediation in the activity log.
  late final pulumi.Output<String> correlationId;
  /// The time at which the remediation was created.
  late final pulumi.Output<String> createdOn;
  /// The deployment status summary for all deployments created by the remediation.
  late final pulumi.Output<RemediationDeploymentSummaryResponse> deploymentStatus;
  /// The remediation failure threshold settings
  late final pulumi.Output<RemediationPropertiesFailureThresholdResponse?> failureThreshold;
  /// The filters that will be applied to determine which resources to remediate.
  late final pulumi.Output<RemediationFiltersResponse?> filters;
  /// The time at which the remediation was last updated.
  late final pulumi.Output<String> lastUpdatedOn;
  /// The name of the resource
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
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RemediationAtResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemediationAtResourceGroup]. {@macro pulumi_policyinsights_remediation_at_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemediationAtResourceGroup(
    String name, {
    RemediationAtResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:policyinsights:RemediationAtResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    correlationId = registerOutput<String>('correlationId');
    createdOn = registerOutput<String>('createdOn');
    deploymentStatus = registerOutput<RemediationDeploymentSummaryResponse>('deploymentStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemediationDeploymentSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureThreshold = registerOutput<RemediationPropertiesFailureThresholdResponse?>('failureThreshold', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemediationPropertiesFailureThresholdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filters = registerOutput<RemediationFiltersResponse?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemediationFiltersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedOn = registerOutput<String>('lastUpdatedOn');
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String?>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCount = registerOutput<int?>('resourceCount');
    resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RemediationAtResourceGroup] resource.
  RemediationAtResourceGroup.reference(String urn)
    : super(
        'azure-native:policyinsights:RemediationAtResourceGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    correlationId = registerOutput<String>('correlationId');
    createdOn = registerOutput<String>('createdOn');
    deploymentStatus = registerOutput<RemediationDeploymentSummaryResponse>('deploymentStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemediationDeploymentSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureThreshold = registerOutput<RemediationPropertiesFailureThresholdResponse?>('failureThreshold', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemediationPropertiesFailureThresholdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filters = registerOutput<RemediationFiltersResponse?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RemediationFiltersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedOn = registerOutput<String>('lastUpdatedOn');
    this.name = registerOutput<String>('name');
    parallelDeployments = registerOutput<int?>('parallelDeployments');
    policyAssignmentId = registerOutput<String?>('policyAssignmentId');
    policyDefinitionReferenceId = registerOutput<String?>('policyDefinitionReferenceId');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCount = registerOutput<int?>('resourceCount');
    resourceDiscoveryMode = registerOutput<String?>('resourceDiscoveryMode');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
