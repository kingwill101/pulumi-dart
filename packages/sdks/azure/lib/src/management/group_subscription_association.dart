import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subscription_association_args.dart';
import 'group_subscription_association_state.dart';

/// Manages a Management Group Subscription Association.
///
/// &gt; **Note:** When using this resource, configuring `subscriptionIds` on the `azure.management.Group` resource is not supported.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.management.getGroup({
///     name: "exampleManagementGroup",
/// });
/// const exampleGetSubscription = azure.core.getSubscription({
///     subscriptionId: "12345678-1234-1234-1234-123456789012",
/// });
/// const exampleGroupSubscriptionAssociation = new azure.management.GroupSubscriptionAssociation("example", {
///     managementGroupId: example.then(example => example.id),
///     subscriptionId: exampleGetSubscription.then(exampleGetSubscription => exampleGetSubscription.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.get_group(name="exampleManagementGroup")
/// example_get_subscription = azure.core.get_subscription(subscription_id="12345678-1234-1234-1234-123456789012")
/// example_group_subscription_association = azure.management.GroupSubscriptionAssociation("example",
///     management_group_id=example.id,
///     subscription_id=example_get_subscription.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "exampleManagementGroup",
///     });
///
///     var exampleGetSubscription = Azure.Core.GetSubscription.Invoke(new()
///     {
///         SubscriptionId = "12345678-1234-1234-1234-123456789012",
///     });
///
///     var exampleGroupSubscriptionAssociation = new Azure.Management.GroupSubscriptionAssociation("example", new()
///     {
///         ManagementGroupId = example.Apply(getGroupResult => getGroupResult.Id),
///         SubscriptionId = exampleGetSubscription.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("exampleManagementGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetSubscription, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{
/// 			SubscriptionId: pulumi.StringRef("12345678-1234-1234-1234-123456789012"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupSubscriptionAssociation(ctx, "example", &management.GroupSubscriptionAssociationArgs{
/// 			ManagementGroupId: pulumi.String(example.Id),
/// 			SubscriptionId:    pulumi.String(exampleGetSubscription.Id),
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
/// data "azure_management_getgroup" "example" {
///   name = "exampleManagementGroup"
/// }
/// data "azure_core_getsubscription" "exampleGetSubscription" {
///   subscription_id = "12345678-1234-1234-1234-123456789012"
/// }
///
/// resource "azure_management_groupsubscriptionassociation" "example" {
///   management_group_id = data.azure_management_getgroup.example.id
///   subscription_id     = data.azure_core_getsubscription.exampleGetSubscription.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.management.GroupSubscriptionAssociation;
/// import com.pulumi.azure.management.GroupSubscriptionAssociationArgs;
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
///         final var example = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("exampleManagementGroup")
///             .build());
///
///         final var exampleGetSubscription = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .subscriptionId("12345678-1234-1234-1234-123456789012")
///             .build());
///
///         var exampleGroupSubscriptionAssociation = new GroupSubscriptionAssociation("exampleGroupSubscriptionAssociation", GroupSubscriptionAssociationArgs.builder()
///             .managementGroupId(example.id())
///             .subscriptionId(exampleGetSubscription.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroupSubscriptionAssociation:
///     type: azure:management:GroupSubscriptionAssociation
///     name: example
///     properties:
///       managementGroupId: ${example.id}
///       subscriptionId: ${exampleGetSubscription.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: exampleManagementGroup
///   exampleGetSubscription:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments:
///         subscriptionId: 12345678-1234-1234-1234-123456789012
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2020-05-01
///
/// ## Import
///
/// Managements can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/groupSubscriptionAssociation:GroupSubscriptionAssociation example /providers/Microsoft.Management/managementGroups/MyManagementGroup/subscriptions/12345678-1234-1234-1234-123456789012
/// ```
class GroupSubscriptionAssociation extends pulumi.CustomResource {
  /// The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  late final pulumi.Output<String> managementGroupId;
  /// The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [GroupSubscriptionAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupSubscriptionAssociation]. {@macro pulumi_management_group_subscription_association_group_subscription_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupSubscriptionAssociation(
    String name, {
    GroupSubscriptionAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupSubscriptionAssociation:GroupSubscriptionAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managementGroupId = registerOutput<String>('managementGroupId');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [GroupSubscriptionAssociation] resource's state with the given [name] and [id].
  static GroupSubscriptionAssociation get(
    String name,
    pulumi.Input<String> id, {
    GroupSubscriptionAssociationState? state,
  }) {
    return GroupSubscriptionAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupSubscriptionAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupSubscriptionAssociation:GroupSubscriptionAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managementGroupId = registerOutput<String>('managementGroupId');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
