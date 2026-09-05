import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_recipient_args.dart';
import 'share_recipient_resource.dart';
import 'share_recipient_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleShareRecipient = new cloudflare.ShareRecipient("example_share_recipient", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     shareId: "3fd85f74b32742f1bff64a85009dda07",
///     organizationId: "023e105f4ecef8ad9ca31a8372d0c353",
///     recipientAccountId: "023e105f4ecef8ad9ca31a8372d0c353",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_share_recipient = cloudflare.ShareRecipient("example_share_recipient",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     share_id="3fd85f74b32742f1bff64a85009dda07",
///     organization_id="023e105f4ecef8ad9ca31a8372d0c353",
///     recipient_account_id="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleShareRecipient = new Cloudflare.ShareRecipient("example_share_recipient", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ShareId = "3fd85f74b32742f1bff64a85009dda07",
///         OrganizationId = "023e105f4ecef8ad9ca31a8372d0c353",
///         RecipientAccountId = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewShareRecipient(ctx, "example_share_recipient", &cloudflare.ShareRecipientArgs{
/// 			AccountId:          pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ShareId:            pulumi.String("3fd85f74b32742f1bff64a85009dda07"),
/// 			OrganizationId:     pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			RecipientAccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_sharerecipient" "example_share_recipient" {
///   account_id           = "023e105f4ecef8ad9ca31a8372d0c353"
///   share_id             = "3fd85f74b32742f1bff64a85009dda07"
///   organization_id      = "023e105f4ecef8ad9ca31a8372d0c353"
///   recipient_account_id = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ShareRecipient;
/// import com.pulumi.cloudflare.ShareRecipientArgs;
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
///         var exampleShareRecipient = new ShareRecipient("exampleShareRecipient", ShareRecipientArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .shareId("3fd85f74b32742f1bff64a85009dda07")
///             .organizationId("023e105f4ecef8ad9ca31a8372d0c353")
///             .recipientAccountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleShareRecipient:
///     type: cloudflare:ShareRecipient
///     name: example_share_recipient
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       shareId: 3fd85f74b32742f1bff64a85009dda07
///       organizationId: 023e105f4ecef8ad9ca31a8372d0c353
///       recipientAccountId: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/shareRecipient:ShareRecipient example '<account_id>/<share_id>/<recipient_id>'
/// ```
class ShareRecipientRes extends pulumi.CustomResource {
  /// Account identifier.
  late final pulumi.Output<String> accountId;
  /// The current state of the recipient relative to the share. The
  /// `desiredAssociationStatus` (not exposed in the response) tracks the
  /// target state set by the API; the background reconciliation workflow
  /// drives `currentAssociationStatus` toward it.
  late final pulumi.Output<String> associationStatus;
  /// When the share was created.
  late final pulumi.Output<String> created;
  /// When the share was modified.
  late final pulumi.Output<String> modified;
  /// Organization identifier.
  late final pulumi.Output<String?> organizationId;
  /// The account that will receive the share.
  late final pulumi.Output<String?> recipientAccountId;
  late final pulumi.Output<List<ShareRecipientResource>> resources;
  /// Share identifier tag.
  late final pulumi.Output<String> shareId;

  /// Creates a new [ShareRecipientRes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareRecipientRes]. {@macro pulumi_index_share_recipient_share_recipient_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareRecipientRes(
    String name, {
    ShareRecipientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/shareRecipient:ShareRecipient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    associationStatus = registerOutput<String>('associationStatus');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    organizationId = registerOutput<String?>('organizationId');
    recipientAccountId = registerOutput<String?>('recipientAccountId');
    resources = registerOutput<List<ShareRecipientResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareRecipientResource>(guardedValue, (value) => ShareRecipientResource.fromMap((value as Map).cast<String, dynamic>())); });
    shareId = registerOutput<String>('shareId');
  }

  /// Gets an existing [ShareRecipientRes] resource's state with the given [name] and [id].
  static ShareRecipientRes get(
    String name,
    pulumi.Input<String> id, {
    ShareRecipientState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ShareRecipientRes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ShareRecipientRes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/shareRecipient:ShareRecipient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    associationStatus = registerOutput<String>('associationStatus');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    organizationId = registerOutput<String?>('organizationId');
    recipientAccountId = registerOutput<String?>('recipientAccountId');
    resources = registerOutput<List<ShareRecipientResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareRecipientResource>(guardedValue, (value) => ShareRecipientResource.fromMap((value as Map).cast<String, dynamic>())); });
    shareId = registerOutput<String>('shareId');
  }

  /// Creates a typed reference to an existing [ShareRecipientRes] resource.
  ShareRecipientRes.reference(String urn)
    : super(
        'cloudflare:index/shareRecipient:ShareRecipient',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    associationStatus = registerOutput<String>('associationStatus');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    organizationId = registerOutput<String?>('organizationId');
    recipientAccountId = registerOutput<String?>('recipientAccountId');
    resources = registerOutput<List<ShareRecipientResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareRecipientResource>(guardedValue, (value) => ShareRecipientResource.fromMap((value as Map).cast<String, dynamic>())); });
    shareId = registerOutput<String>('shareId');
  }
}
