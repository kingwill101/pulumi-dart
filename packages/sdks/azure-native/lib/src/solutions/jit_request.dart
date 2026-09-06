import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_client_details_response.dart';
import 'jit_authorization_policies_response.dart';
import 'jit_request_args.dart';
import 'jit_scheduling_policy_response.dart';
import 'system_data_response.dart';

/// Information about JIT request definition.
///
/// Uses Azure REST API version 2021-07-01. In version 2.x of the Azure Native provider, it used API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update jit request
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jitRequest = new AzureNative.Solutions.JitRequest("jitRequest", new()
///     {
///         ApplicationResourceId = "/subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158",
///         JitAuthorizationPolicies = new[]
///         {
///             new AzureNative.Solutions.Inputs.JitAuthorizationPoliciesArgs
///             {
///                 PrincipalId = "1db8e132e2934dbcb8e1178a61319491",
///                 RoleDefinitionId = "ecd05a23-931a-4c38-a52b-ac7c4c583334",
///             },
///         },
///         JitRequestName = "myJitRequest",
///         JitSchedulingPolicy = new AzureNative.Solutions.Inputs.JitSchedulingPolicyArgs
///         {
///             Duration = "PT8H",
///             StartTime = "2021-04-22T05:48:30.6661804Z",
///             Type = AzureNative.Solutions.JitSchedulingType.Once,
///         },
///         ResourceGroupName = "rg",
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
/// 	solutions "github.com/pulumi/pulumi-azure-native-sdk/solutions/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := solutions.NewJitRequest(ctx, "jitRequest", &solutions.JitRequestArgs{
/// 			ApplicationResourceId: pulumi.String("/subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158"),
/// 			JitAuthorizationPolicies: solutions.JitAuthorizationPoliciesArray{
/// 				&solutions.JitAuthorizationPoliciesArgs{
/// 					PrincipalId:      pulumi.String("1db8e132e2934dbcb8e1178a61319491"),
/// 					RoleDefinitionId: pulumi.String("ecd05a23-931a-4c38-a52b-ac7c4c583334"),
/// 				},
/// 			},
/// 			JitRequestName: pulumi.String("myJitRequest"),
/// 			JitSchedulingPolicy: &solutions.JitSchedulingPolicyArgs{
/// 				Duration:  pulumi.String("PT8H"),
/// 				StartTime: pulumi.String("2021-04-22T05:48:30.6661804Z"),
/// 				Type:      pulumi.String(solutions.JitSchedulingTypeOnce),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// resource "azure-native_solutions_jitrequest" "jitRequest" {
///   application_resource_id = "/subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158"
///   jit_authorization_policies {
///     principal_id       = "1db8e132e2934dbcb8e1178a61319491"
///     role_definition_id = "ecd05a23-931a-4c38-a52b-ac7c4c583334"
///   }
///   jit_request_name = "myJitRequest"
///   jit_scheduling_policy = {
///     duration   = "PT8H"
///     start_time = "2021-04-22T05:48:30.6661804Z"
///     type       = "Once"
///   }
///   resource_group_name = "rg"
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
/// import com.pulumi.azurenative.solutions.JitRequest;
/// import com.pulumi.azurenative.solutions.JitRequestArgs;
/// import com.pulumi.azurenative.solutions.inputs.JitAuthorizationPoliciesArgs;
/// import com.pulumi.azurenative.solutions.inputs.JitSchedulingPolicyArgs;
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
///         var jitRequest = new JitRequest("jitRequest", JitRequestArgs.builder()
///             .applicationResourceId("/subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158")
///             .jitAuthorizationPolicies(JitAuthorizationPoliciesArgs.builder()
///                 .principalId("1db8e132e2934dbcb8e1178a61319491")
///                 .roleDefinitionId("ecd05a23-931a-4c38-a52b-ac7c4c583334")
///                 .build())
///             .jitRequestName("myJitRequest")
///             .jitSchedulingPolicy(JitSchedulingPolicyArgs.builder()
///                 .duration("PT8H")
///                 .startTime("2021-04-22T05:48:30.6661804Z")
///                 .type("Once")
///                 .build())
///             .resourceGroupName("rg")
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
/// const jitRequest = new azure_native.solutions.JitRequest("jitRequest", {
///     applicationResourceId: "/subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158",
///     jitAuthorizationPolicies: [{
///         principalId: "1db8e132e2934dbcb8e1178a61319491",
///         roleDefinitionId: "ecd05a23-931a-4c38-a52b-ac7c4c583334",
///     }],
///     jitRequestName: "myJitRequest",
///     jitSchedulingPolicy: {
///         duration: "PT8H",
///         startTime: "2021-04-22T05:48:30.6661804Z",
///         type: azure_native.solutions.JitSchedulingType.Once,
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// jit_request = azure_native.solutions.JitRequest("jitRequest",
///     application_resource_id="/subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158",
///     jit_authorization_policies=[{
///         "principal_id": "1db8e132e2934dbcb8e1178a61319491",
///         "role_definition_id": "ecd05a23-931a-4c38-a52b-ac7c4c583334",
///     }],
///     jit_request_name="myJitRequest",
///     jit_scheduling_policy={
///         "duration": "PT8H",
///         "start_time": "2021-04-22T05:48:30.6661804Z",
///         "type": azure_native.solutions.JitSchedulingType.ONCE,
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   jitRequest:
///     type: azure-native:solutions:JitRequest
///     properties:
///       applicationResourceId: /subscriptions/00c76877-e316-48a7-af60-4a09fec9d43f/resourceGroups/52F30DB2/providers/Microsoft.Solutions/applications/7E193158
///       jitAuthorizationPolicies:
///         - principalId: 1db8e132e2934dbcb8e1178a61319491
///           roleDefinitionId: ecd05a23-931a-4c38-a52b-ac7c4c583334
///       jitRequestName: myJitRequest
///       jitSchedulingPolicy:
///         duration: PT8H
///         startTime: 2021-04-22T05:48:30.6661804Z
///         type: Once
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:solutions:JitRequest myJitRequest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Solutions/jitRequests/{jitRequestName}
/// ```
class JitRequest extends pulumi.CustomResource {
  /// The parent application id.
  late final pulumi.Output<String> applicationResourceId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The client entity that created the JIT request.
  late final pulumi.Output<ApplicationClientDetailsResponse> createdBy;
  /// The JIT authorization policies.
  late final pulumi.Output<List<JitAuthorizationPoliciesResponse>> jitAuthorizationPolicies;
  /// The JIT request state.
  late final pulumi.Output<String> jitRequestState;
  /// The JIT request properties.
  late final pulumi.Output<JitSchedulingPolicyResponse> jitSchedulingPolicy;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The JIT request provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The publisher tenant id.
  late final pulumi.Output<String> publisherTenantId;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;
  /// The client entity that last updated the JIT request.
  late final pulumi.Output<ApplicationClientDetailsResponse> updatedBy;

  /// Creates a new [JitRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JitRequest]. {@macro pulumi_solutions_jit_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JitRequest(
    String name, {
    JitRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:solutions:JitRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationResourceId = registerOutput<String>('applicationResourceId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdBy = registerOutput<ApplicationClientDetailsResponse>('createdBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jitAuthorizationPolicies = registerOutput<List<JitAuthorizationPoliciesResponse>>('jitAuthorizationPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JitAuthorizationPoliciesResponse>(guardedValue, (value) => JitAuthorizationPoliciesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    jitRequestState = registerOutput<String>('jitRequestState');
    jitSchedulingPolicy = registerOutput<JitSchedulingPolicyResponse>('jitSchedulingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JitSchedulingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publisherTenantId = registerOutput<String>('publisherTenantId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedBy = registerOutput<ApplicationClientDetailsResponse>('updatedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [JitRequest] resource.
  JitRequest.reference(String urn)
    : super(
        'azure-native:solutions:JitRequest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationResourceId = registerOutput<String>('applicationResourceId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdBy = registerOutput<ApplicationClientDetailsResponse>('createdBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jitAuthorizationPolicies = registerOutput<List<JitAuthorizationPoliciesResponse>>('jitAuthorizationPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<JitAuthorizationPoliciesResponse>(guardedValue, (value) => JitAuthorizationPoliciesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    jitRequestState = registerOutput<String>('jitRequestState');
    jitSchedulingPolicy = registerOutput<JitSchedulingPolicyResponse>('jitSchedulingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JitSchedulingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publisherTenantId = registerOutput<String>('publisherTenantId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedBy = registerOutput<ApplicationClientDetailsResponse>('updatedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationClientDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
