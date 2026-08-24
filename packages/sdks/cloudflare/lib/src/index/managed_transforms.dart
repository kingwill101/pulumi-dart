import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_transforms_args.dart';
import 'managed_transforms_managed_request_header.dart';
import 'managed_transforms_managed_response_header.dart';
import 'managed_transforms_state.dart';

/// Accepted Permissions
///
/// - `Account Rulesets Read`
/// - `Account Rulesets Write`
/// - `Account WAF Read`
/// - `Account WAF Write`
/// - `Bot Management Read`
/// - `Bot Management Write`
/// - `Cache Settings Read`
/// - `Cache Settings Write`
/// - `Config Settings Read`
/// - `Config Settings Write`
/// - `Custom Errors Read`
/// - `Custom Errors Write`
/// - `Dynamic URL Redirects Read`
/// - `Dynamic URL Redirects Write`
/// - `HTTP DDoS Managed Ruleset Read`
/// - `HTTP DDoS Managed Ruleset Write`
/// - `L4 DDoS Managed Ruleset Read`
/// - `L4 DDoS Managed Ruleset Write`
/// - `Logs Read`
/// - `Logs Write`
/// - `Magic Firewall Read`
/// - `Magic Firewall Write`
/// - `Managed headers Read`
/// - `Managed headers Write`
/// - `Mass URL Redirects Read`
/// - `Mass URL Redirects Write`
/// - `Origin Read`
/// - `Origin Write`
/// - `Response Compression Read`
/// - `Response Compression Write`
/// - `Sanitize Read`
/// - `Sanitize Write`
/// - `Select Configuration Read`
/// - `Select Configuration Write`
/// - `Transform Rules Read`
/// - `Transform Rules Write`
/// - `Zone Transform Rules Read`
/// - `Zone Transform Rules Write`
/// - `Zone WAF Read`
/// - `Zone WAF Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleManagedTransforms = new cloudflare.ManagedTransforms("example_managed_transforms", {
///     zoneId: "9f1839b6152d298aca64c4e906b6d074",
///     managedRequestHeaders: [{
///         id: "add_bot_protection_headers",
///         enabled: true,
///     }],
///     managedResponseHeaders: [{
///         id: "add_security_headers",
///         enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_managed_transforms = cloudflare.ManagedTransforms("example_managed_transforms",
///     zone_id="9f1839b6152d298aca64c4e906b6d074",
///     managed_request_headers=[{
///         "id": "add_bot_protection_headers",
///         "enabled": True,
///     }],
///     managed_response_headers=[{
///         "id": "add_security_headers",
///         "enabled": True,
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
///     var exampleManagedTransforms = new Cloudflare.ManagedTransforms("example_managed_transforms", new()
///     {
///         ZoneId = "9f1839b6152d298aca64c4e906b6d074",
///         ManagedRequestHeaders = new[]
///         {
///             new Cloudflare.Inputs.ManagedTransformsManagedRequestHeaderArgs
///             {
///                 Id = "add_bot_protection_headers",
///                 Enabled = true,
///             },
///         },
///         ManagedResponseHeaders = new[]
///         {
///             new Cloudflare.Inputs.ManagedTransformsManagedResponseHeaderArgs
///             {
///                 Id = "add_security_headers",
///                 Enabled = true,
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
/// 		_, err := cloudflare.NewManagedTransforms(ctx, "example_managed_transforms", &cloudflare.ManagedTransformsArgs{
/// 			ZoneId: pulumi.String("9f1839b6152d298aca64c4e906b6d074"),
/// 			ManagedRequestHeaders: cloudflare.ManagedTransformsManagedRequestHeaderArray{
/// 				&cloudflare.ManagedTransformsManagedRequestHeaderArgs{
/// 					Id:      pulumi.String("add_bot_protection_headers"),
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ManagedResponseHeaders: cloudflare.ManagedTransformsManagedResponseHeaderArray{
/// 				&cloudflare.ManagedTransformsManagedResponseHeaderArgs{
/// 					Id:      pulumi.String("add_security_headers"),
/// 					Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_managedtransforms" "example_managed_transforms" {
///   zone_id = "9f1839b6152d298aca64c4e906b6d074"
///   managed_request_headers {
///     id      = "add_bot_protection_headers"
///     enabled = true
///   }
///   managed_response_headers {
///     id      = "add_security_headers"
///     enabled = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ManagedTransforms;
/// import com.pulumi.cloudflare.ManagedTransformsArgs;
/// import com.pulumi.cloudflare.inputs.ManagedTransformsManagedRequestHeaderArgs;
/// import com.pulumi.cloudflare.inputs.ManagedTransformsManagedResponseHeaderArgs;
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
///         var exampleManagedTransforms = new ManagedTransforms("exampleManagedTransforms", ManagedTransformsArgs.builder()
///             .zoneId("9f1839b6152d298aca64c4e906b6d074")
///             .managedRequestHeaders(ManagedTransformsManagedRequestHeaderArgs.builder()
///                 .id("add_bot_protection_headers")
///                 .enabled(true)
///                 .build())
///             .managedResponseHeaders(ManagedTransformsManagedResponseHeaderArgs.builder()
///                 .id("add_security_headers")
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleManagedTransforms:
///     type: cloudflare:ManagedTransforms
///     name: example_managed_transforms
///     properties:
///       zoneId: 9f1839b6152d298aca64c4e906b6d074
///       managedRequestHeaders:
///         - id: add_bot_protection_headers
///           enabled: true
///       managedResponseHeaders:
///         - id: add_security_headers
///           enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/managedTransforms:ManagedTransforms example '<zone_id>'
/// ```
class ManagedTransforms extends pulumi.CustomResource {
  /// The list of Managed Request Transforms.
  late final pulumi.Output<List<ManagedTransformsManagedRequestHeader>?> managedRequestHeaders;
  /// The list of Managed Response Transforms.
  late final pulumi.Output<List<ManagedTransformsManagedResponseHeader>?> managedResponseHeaders;
  /// The unique ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ManagedTransforms].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedTransforms]. {@macro pulumi_index_managed_transforms_managed_transforms_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedTransforms(
    String name, {
    ManagedTransformsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/managedTransforms:ManagedTransforms',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    managedRequestHeaders = registerOutput<List<ManagedTransformsManagedRequestHeader>?>('managedRequestHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedTransformsManagedRequestHeader>(guardedValue, (value) => ManagedTransformsManagedRequestHeader.fromMap((value as Map).cast<String, dynamic>())); });
    managedResponseHeaders = registerOutput<List<ManagedTransformsManagedResponseHeader>?>('managedResponseHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedTransformsManagedResponseHeader>(guardedValue, (value) => ManagedTransformsManagedResponseHeader.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ManagedTransforms] resource's state with the given [name] and [id].
  static ManagedTransforms get(
    String name,
    pulumi.Input<String> id, {
    ManagedTransformsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedTransforms._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedTransforms._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/managedTransforms:ManagedTransforms',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managedRequestHeaders = registerOutput<List<ManagedTransformsManagedRequestHeader>?>('managedRequestHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedTransformsManagedRequestHeader>(guardedValue, (value) => ManagedTransformsManagedRequestHeader.fromMap((value as Map).cast<String, dynamic>())); });
    managedResponseHeaders = registerOutput<List<ManagedTransformsManagedResponseHeader>?>('managedResponseHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedTransformsManagedResponseHeader>(guardedValue, (value) => ManagedTransformsManagedResponseHeader.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ManagedTransforms] resource.
  ManagedTransforms.reference(String urn)
    : super(
        'cloudflare:index/managedTransforms:ManagedTransforms',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    managedRequestHeaders = registerOutput<List<ManagedTransformsManagedRequestHeader>?>('managedRequestHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedTransformsManagedRequestHeader>(guardedValue, (value) => ManagedTransformsManagedRequestHeader.fromMap((value as Map).cast<String, dynamic>())); });
    managedResponseHeaders = registerOutput<List<ManagedTransformsManagedResponseHeader>?>('managedResponseHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedTransformsManagedResponseHeader>(guardedValue, (value) => ManagedTransformsManagedResponseHeader.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
