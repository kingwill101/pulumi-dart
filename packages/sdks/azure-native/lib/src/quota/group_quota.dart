import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_quota_args.dart';
import 'group_quotas_entity_response_properties.dart';
import 'system_data_response.dart';

/// Properties and filters for ShareQuota. The request parameter is optional, if there are no filters specified.
///
/// Uses Azure REST API version 2025-03-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2024-10-15-preview, 2024-12-18-preview, 2025-03-15-preview, 2025-07-15, 2025-09-01, 2026-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quota [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GroupQuotas_Put_Request_ForCompute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groupQuota = new AzureNative.Quota.GroupQuota("groupQuota", new()
///     {
///         GroupQuotaName = "groupquota1",
///         ManagementGroupId = "E7EC67B3-7657-4966-BFFC-41EFD36BAA09",
///         Properties = new AzureNative.Quota.Inputs.GroupQuotasEntityPropertiesArgs
///         {
///             DisplayName = "GroupQuota1",
///         },
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
/// 	quota "github.com/pulumi/pulumi-azure-native-sdk/quota/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quota.NewGroupQuota(ctx, "groupQuota", &quota.GroupQuotaArgs{
/// 			GroupQuotaName:    pulumi.String("groupquota1"),
/// 			ManagementGroupId: pulumi.String("E7EC67B3-7657-4966-BFFC-41EFD36BAA09"),
/// 			Properties: &quota.GroupQuotasEntityPropertiesArgs{
/// 				DisplayName: pulumi.String("GroupQuota1"),
/// 			},
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
/// resource "azure-native_quota_groupquota" "groupQuota" {
///   group_quota_name    = "groupquota1"
///   management_group_id = "E7EC67B3-7657-4966-BFFC-41EFD36BAA09"
///   properties = {
///     display_name = "GroupQuota1"
///   }
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
/// import com.pulumi.azurenative.quota.GroupQuota;
/// import com.pulumi.azurenative.quota.GroupQuotaArgs;
/// import com.pulumi.azurenative.quota.inputs.GroupQuotasEntityPropertiesArgs;
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
///         var groupQuota = new GroupQuota("groupQuota", GroupQuotaArgs.builder()
///             .groupQuotaName("groupquota1")
///             .managementGroupId("E7EC67B3-7657-4966-BFFC-41EFD36BAA09")
///             .properties(GroupQuotasEntityPropertiesArgs.builder()
///                 .displayName("GroupQuota1")
///                 .build())
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
/// const groupQuota = new azure_native.quota.GroupQuota("groupQuota", {
///     groupQuotaName: "groupquota1",
///     managementGroupId: "E7EC67B3-7657-4966-BFFC-41EFD36BAA09",
///     properties: {
///         displayName: "GroupQuota1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// group_quota = azure_native.quota.GroupQuota("groupQuota",
///     group_quota_name="groupquota1",
///     management_group_id="E7EC67B3-7657-4966-BFFC-41EFD36BAA09",
///     properties={
///         "display_name": "GroupQuota1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   groupQuota:
///     type: azure-native:quota:GroupQuota
///     properties:
///       groupQuotaName: groupquota1
///       managementGroupId: E7EC67B3-7657-4966-BFFC-41EFD36BAA09
///       properties:
///         displayName: GroupQuota1
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
/// $ pulumi import azure-native:quota:GroupQuota groupquota1 /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Quota/groupQuotas/{groupQuotaName}
/// ```
class GroupQuota extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<GroupQuotasEntityResponseProperties> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GroupQuota].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupQuota]. {@macro pulumi_quota_group_quota_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupQuota(
    String name, {
    GroupQuotaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:quota:GroupQuota',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GroupQuotasEntityResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupQuotasEntityResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [GroupQuota] resource.
  GroupQuota.reference(String urn)
    : super(
        'azure-native:quota:GroupQuota',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GroupQuotasEntityResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupQuotasEntityResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
