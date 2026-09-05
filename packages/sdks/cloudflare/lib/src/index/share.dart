import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_args.dart';
import 'share_recipient.dart';
import 'share_resource.dart';
import 'share_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleShare = new cloudflare.Share("example_share", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My Shared WAF Managed Rule",
///     recipients: [{
///         organizationId: "023e105f4ecef8ad9ca31a8372d0c353",
///         recipientAccountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     }],
///     resources: [{
///         meta: {},
///         resourceAccountId: "023e105f4ecef8ad9ca31a8372d0c353",
///         resourceId: "023e105f4ecef8ad9ca31a8372d0c353",
///         resourceType: "custom-ruleset",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_share = cloudflare.Share("example_share",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My Shared WAF Managed Rule",
///     recipients=[{
///         "organization_id": "023e105f4ecef8ad9ca31a8372d0c353",
///         "recipient_account_id": "023e105f4ecef8ad9ca31a8372d0c353",
///     }],
///     resources=[{
///         "meta": {},
///         "resource_account_id": "023e105f4ecef8ad9ca31a8372d0c353",
///         "resource_id": "023e105f4ecef8ad9ca31a8372d0c353",
///         "resource_type": "custom-ruleset",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleShare = new Cloudflare.Share("example_share", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My Shared WAF Managed Rule",
///         Recipients = new[]
///         {
///             new Cloudflare.Inputs.ShareRecipientArgs
///             {
///                 OrganizationId = "023e105f4ecef8ad9ca31a8372d0c353",
///                 RecipientAccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///             },
///         },
///         Resources = new[]
///         {
///             new Cloudflare.Inputs.ShareResourceArgs
///             {
///                 Meta = null,
///                 ResourceAccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///                 ResourceId = "023e105f4ecef8ad9ca31a8372d0c353",
///                 ResourceType = "custom-ruleset",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewShare(ctx, "example_share", &cloudflare.ShareArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My Shared WAF Managed Rule"),
/// 			Recipients: cloudflare.ShareRecipientTypeArray{
/// 				&cloudflare.ShareRecipientTypeArgs{
/// 					OrganizationId:     pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 					RecipientAccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 				},
/// 			},
/// 			Resources: cloudflare.ShareResourceTypeArray{
/// 				&cloudflare.ShareResourceTypeArgs{
/// 					Meta:              pulumi.String{},
/// 					ResourceAccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 					ResourceId:        pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 					ResourceType:      pulumi.String("custom-ruleset"),
/// 				},
/// 			},
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_share" "example_share" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My Shared WAF Managed Rule"
///   recipients {
///     organization_id      = "023e105f4ecef8ad9ca31a8372d0c353"
///     recipient_account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   }
///   resources {
///     meta                = {}
///     resource_account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///     resource_id         = "023e105f4ecef8ad9ca31a8372d0c353"
///     resource_type       = "custom-ruleset"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Share;
/// import com.pulumi.cloudflare.ShareArgs;
/// import com.pulumi.cloudflare.inputs.ShareRecipientArgs;
/// import com.pulumi.cloudflare.inputs.ShareResourceArgs;
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
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My Shared WAF Managed Rule")
///             .recipients(ShareRecipientArgs.builder()
///                 .organizationId("023e105f4ecef8ad9ca31a8372d0c353")
///                 .recipientAccountId("023e105f4ecef8ad9ca31a8372d0c353")
///                 .build())
///             .resources(ShareResourceArgs.builder()
///                 .meta(Map.ofEntries(
///                 ))
///                 .resourceAccountId("023e105f4ecef8ad9ca31a8372d0c353")
///                 .resourceId("023e105f4ecef8ad9ca31a8372d0c353")
///                 .resourceType("custom-ruleset")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleShare:
///     type: cloudflare:Share
///     name: example_share
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My Shared WAF Managed Rule
///       recipients:
///         - organizationId: 023e105f4ecef8ad9ca31a8372d0c353
///           recipientAccountId: 023e105f4ecef8ad9ca31a8372d0c353
///       resources:
///         - meta: {}
///           resourceAccountId: 023e105f4ecef8ad9ca31a8372d0c353
///           resourceId: 023e105f4ecef8ad9ca31a8372d0c353
///           resourceType: custom-ruleset
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/share:Share example '<account_id>/<share_id>'
/// ```
class Share extends pulumi.CustomResource {
  /// Account identifier.
  late final pulumi.Output<String> accountId;
  /// The display name of an account.
  late final pulumi.Output<String> accountName;
  /// The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  late final pulumi.Output<int> associatedRecipientCount;
  /// The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  late final pulumi.Output<int> associatingRecipientCount;
  /// When the share was created.
  late final pulumi.Output<String> created;
  /// The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  late final pulumi.Output<int> disassociatedRecipientCount;
  /// The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  late final pulumi.Output<int> disassociatingRecipientCount;
  /// Available values: "sent", "received".
  late final pulumi.Output<String> kind;
  /// When the share was modified.
  late final pulumi.Output<String> modified;
  /// The name of the share.
  late final pulumi.Output<String> name;
  /// Organization identifier.
  late final pulumi.Output<String> organizationId;
  late final pulumi.Output<List<ShareRecipient>> recipients;
  late final pulumi.Output<List<ShareResource>> resources;
  /// Available values: "active", "deleting", "deleted".
  late final pulumi.Output<String> status;
  /// Available values: "account", "organization".
  late final pulumi.Output<String> targetType;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_index_share_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(
    String name, {
    ShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/share:Share',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    accountName = registerOutput<String>('accountName');
    associatedRecipientCount = registerOutput<int>('associatedRecipientCount');
    associatingRecipientCount = registerOutput<int>('associatingRecipientCount');
    created = registerOutput<String>('created');
    disassociatedRecipientCount = registerOutput<int>('disassociatedRecipientCount');
    disassociatingRecipientCount = registerOutput<int>('disassociatingRecipientCount');
    kind = registerOutput<String>('kind');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    recipients = registerOutput<List<ShareRecipient>>('recipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareRecipient>(guardedValue, (value) => ShareRecipient.fromMap((value as Map).cast<String, dynamic>())); });
    resources = registerOutput<List<ShareResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareResource>(guardedValue, (value) => ShareResource.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [Share] resource's state with the given [name] and [id].
  static Share get(
    String name,
    pulumi.Input<String> id, {
    ShareState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Share._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Share._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/share:Share',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    accountName = registerOutput<String>('accountName');
    associatedRecipientCount = registerOutput<int>('associatedRecipientCount');
    associatingRecipientCount = registerOutput<int>('associatingRecipientCount');
    created = registerOutput<String>('created');
    disassociatedRecipientCount = registerOutput<int>('disassociatedRecipientCount');
    disassociatingRecipientCount = registerOutput<int>('disassociatingRecipientCount');
    kind = registerOutput<String>('kind');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    recipients = registerOutput<List<ShareRecipient>>('recipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareRecipient>(guardedValue, (value) => ShareRecipient.fromMap((value as Map).cast<String, dynamic>())); });
    resources = registerOutput<List<ShareResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareResource>(guardedValue, (value) => ShareResource.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    targetType = registerOutput<String>('targetType');
  }

  /// Creates a typed reference to an existing [Share] resource.
  Share.reference(String urn)
    : super(
        'cloudflare:index/share:Share',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    accountName = registerOutput<String>('accountName');
    associatedRecipientCount = registerOutput<int>('associatedRecipientCount');
    associatingRecipientCount = registerOutput<int>('associatingRecipientCount');
    created = registerOutput<String>('created');
    disassociatedRecipientCount = registerOutput<int>('disassociatedRecipientCount');
    disassociatingRecipientCount = registerOutput<int>('disassociatingRecipientCount');
    kind = registerOutput<String>('kind');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    recipients = registerOutput<List<ShareRecipient>>('recipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareRecipient>(guardedValue, (value) => ShareRecipient.fromMap((value as Map).cast<String, dynamic>())); });
    resources = registerOutput<List<ShareResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareResource>(guardedValue, (value) => ShareResource.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    targetType = registerOutput<String>('targetType');
  }
}
