import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_args.dart';
import 'share_snapshot_schedule.dart';
import 'share_state.dart';

/// Manages a Data Share.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.datashare.Account("example", {
///     name: "example-dsa",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// const exampleShare = new azure.datashare.Share("example", {
///     name: "example_dss",
///     accountId: exampleAccount.id,
///     kind: "CopyBased",
///     description: "example desc",
///     terms: "example terms",
///     snapshotSchedule: {
///         name: "example-ss",
///         recurrence: "Day",
///         startTime: "2020-04-17T04:47:52.9614956Z",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.datashare.Account("example",
///     name="example-dsa",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "foo": "bar",
///     })
/// example_share = azure.datashare.Share("example",
///     name="example_dss",
///     account_id=example_account.id,
///     kind="CopyBased",
///     description="example desc",
///     terms="example terms",
///     snapshot_schedule={
///         "name": "example-ss",
///         "recurrence": "Day",
///         "start_time": "2020-04-17T04:47:52.9614956Z",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.DataShare.Account("example", new()
///     {
///         Name = "example-dsa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataShare.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var exampleShare = new Azure.DataShare.Share("example", new()
///     {
///         Name = "example_dss",
///         AccountId = exampleAccount.Id,
///         Kind = "CopyBased",
///         Description = "example desc",
///         Terms = "example terms",
///         SnapshotSchedule = new Azure.DataShare.Inputs.ShareSnapshotScheduleArgs
///         {
///             Name = "example-ss",
///             Recurrence = "Day",
///             StartTime = "2020-04-17T04:47:52.9614956Z",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := datashare.NewAccount(ctx, "example", &datashare.AccountArgs{
/// 			Name:              pulumi.String("example-dsa"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datashare.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datashare.NewShare(ctx, "example", &datashare.ShareArgs{
/// 			Name:        pulumi.String("example_dss"),
/// 			AccountId:   exampleAccount.ID(),
/// 			Kind:        pulumi.String("CopyBased"),
/// 			Description: pulumi.String("example desc"),
/// 			Terms:       pulumi.String("example terms"),
/// 			SnapshotSchedule: &datashare.ShareSnapshotScheduleArgs{
/// 				Name:       pulumi.String("example-ss"),
/// 				Recurrence: pulumi.String("Day"),
/// 				StartTime:  pulumi.String("2020-04-17T04:47:52.9614956Z"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datashare.Account;
/// import com.pulumi.azure.datashare.AccountArgs;
/// import com.pulumi.azure.datashare.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.datashare.Share;
/// import com.pulumi.azure.datashare.ShareArgs;
/// import com.pulumi.azure.datashare.inputs.ShareSnapshotScheduleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-dsa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example_dss")
///             .accountId(exampleAccount.id())
///             .kind("CopyBased")
///             .description("example desc")
///             .terms("example terms")
///             .snapshotSchedule(ShareSnapshotScheduleArgs.builder()
///                 .name("example-ss")
///                 .recurrence("Day")
///                 .startTime("2020-04-17T04:47:52.9614956Z")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:datashare:Account
///     name: example
///     properties:
///       name: example-dsa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///       tags:
///         foo: bar
///   exampleShare:
///     type: azure:datashare:Share
///     name: example
///     properties:
///       name: example_dss
///       accountId: ${exampleAccount.id}
///       kind: CopyBased
///       description: example desc
///       terms: example terms
///       snapshotSchedule:
///         name: example-ss
///         recurrence: Day
///         startTime: 2020-04-17T04:47:52.9614956Z
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataShare` - 2019-11-01
///
/// ## Import
///
/// Data Shares can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datashare/share:Share example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataShare/accounts/account1/shares/share1
/// ```
class Share extends pulumi.CustomResource {
  /// The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  late final pulumi.Output<String> accountId;

  /// The Data Share's description.
  late final pulumi.Output<String?> description;

  /// The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  late final pulumi.Output<String> kind;

  /// The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  late final pulumi.Output<String> name;

  /// A `snapshot_schedule` block as defined below.
  late final pulumi.Output<ShareSnapshotSchedule?> snapshotSchedule;

  /// The terms of the Data Share.
  late final pulumi.Output<String?> terms;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_datashare_share_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(String name, {ShareArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:datashare/share:Share',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    snapshotSchedule = registerOutput<ShareSnapshotSchedule?>(
      'snapshotSchedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ShareSnapshotSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    terms = registerOutput<String?>('terms');
  }

  /// Gets an existing [Share] resource's state with the given [name] and [id].
  static Share get(String name, pulumi.Input<String> id, {ShareState? state}) {
    return Share._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Share._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datashare/share:Share',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    snapshotSchedule = registerOutput<ShareSnapshotSchedule?>(
      'snapshotSchedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ShareSnapshotSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    terms = registerOutput<String?>('terms');
  }
}
