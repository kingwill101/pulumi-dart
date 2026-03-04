import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_quota_subscription_args.dart';
import 'group_quota_subscription_id_response_properties.dart';
import 'system_data_response.dart';

/// This represents a Azure subscriptionId that is associated with a GroupQuotasEntity.
///
/// Uses Azure REST API version 2025-03-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2024-10-15-preview, 2024-12-18-preview, 2025-03-15-preview, 2025-07-15, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quota [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GroupQuotaSubscriptions_Put_Subscriptions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groupQuotaSubscription = new AzureNative.Quota.GroupQuotaSubscription("groupQuotaSubscription", new()
///     {
///         GroupQuotaName = "groupquota1",
///         ManagementGroupId = "E7EC67B3-7657-4966-BFFC-41EFD36BAA09",
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
/// 		_, err := quota.NewGroupQuotaSubscription(ctx, "groupQuotaSubscription", &quota.GroupQuotaSubscriptionArgs{
/// 			GroupQuotaName:    pulumi.String("groupquota1"),
/// 			ManagementGroupId: pulumi.String("E7EC67B3-7657-4966-BFFC-41EFD36BAA09"),
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
/// import com.pulumi.azurenative.quota.GroupQuotaSubscription;
/// import com.pulumi.azurenative.quota.GroupQuotaSubscriptionArgs;
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
///         var groupQuotaSubscription = new GroupQuotaSubscription("groupQuotaSubscription", GroupQuotaSubscriptionArgs.builder()
///             .groupQuotaName("groupquota1")
///             .managementGroupId("E7EC67B3-7657-4966-BFFC-41EFD36BAA09")
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
/// const groupQuotaSubscription = new azure_native.quota.GroupQuotaSubscription("groupQuotaSubscription", {
///     groupQuotaName: "groupquota1",
///     managementGroupId: "E7EC67B3-7657-4966-BFFC-41EFD36BAA09",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// group_quota_subscription = azure_native.quota.GroupQuotaSubscription("groupQuotaSubscription",
///     group_quota_name="groupquota1",
///     management_group_id="E7EC67B3-7657-4966-BFFC-41EFD36BAA09")
///
/// ```
///
/// ```yaml
/// resources:
///   groupQuotaSubscription:
///     type: azure-native:quota:GroupQuotaSubscription
///     properties:
///       groupQuotaName: groupquota1
///       managementGroupId: E7EC67B3-7657-4966-BFFC-41EFD36BAA09
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
/// $ pulumi import azure-native:quota:GroupQuotaSubscription 00000000-0000-0000-0000-000000000000 /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Quota/groupQuotas/{groupQuotaName}/subscriptions/{subscriptionId}
/// ```
class GroupQuotaSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<GroupQuotaSubscriptionIdResponseProperties>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GroupQuotaSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupQuotaSubscription]. {@macro pulumi_quota_group_quota_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupQuotaSubscription(
    String name, {
    GroupQuotaSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:quota:GroupQuotaSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GroupQuotaSubscriptionIdResponseProperties>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
