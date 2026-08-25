import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_args.dart';
import 'certificate_map_gclb_target.dart';
import 'certificate_map_state.dart';

/// CertificateMap defines a collection of certificate configurations,
/// which are usable by any associated target proxies
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Certificate Map Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificatemanager.CertificateMap("default", {
///     name: "cert-map",
///     description: "My acceptance test certificate map",
///     labels: {
///         terraform: "true",
///         "acc-test": "true",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.CertificateMap("default",
///     name="cert-map",
///     description="My acceptance test certificate map",
///     labels={
///         "terraform": "true",
///         "acc-test": "true",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.CertificateMap("default", new()
///     {
///         Name = "cert-map",
///         Description = "My acceptance test certificate map",
///         Labels =
///         {
///             { "terraform", "true" },
///             { "acc-test", "true" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificatemanager.NewCertificateMapResource(ctx, "default", &certificatemanager.CertificateMapResourceArgs{
/// 			Name:        pulumi.String("cert-map"),
/// 			Description: pulumi.String("My acceptance test certificate map"),
/// 			Labels: pulumi.StringMap{
/// 				"terraform": pulumi.String("true"),
/// 				"acc-test":  pulumi.String("true"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_certificatemanager_certificatemap" "default" {
///   name        = "cert-map"
///   description = "My acceptance test certificate map"
///   labels = {
///     "terraform" = true
///     "acc-test"  = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.CertificateMap;
/// import com.pulumi.gcp.certificatemanager.CertificateMapArgs;
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
///         var default_ = new CertificateMap("default", CertificateMapArgs.builder()
///             .name("cert-map")
///             .description("My acceptance test certificate map")
///             .labels(Map.ofEntries(
///                 Map.entry("terraform", "true"),
///                 Map.entry("acc-test", "true")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:CertificateMap
///     properties:
///       name: cert-map
///       description: My acceptance test certificate map
///       labels:
///         terraform: true
///         acc-test: true
/// ```
///
///
/// ## Import
///
/// CertificateMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/certificateMaps/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, CertificateMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMap:CertificateMap default projects/{{project}}/locations/global/certificateMaps/{{name}}
/// $ pulumi import gcp:certificatemanager/certificateMap:CertificateMap default {{project}}/{{name}}
/// $ pulumi import gcp:certificatemanager/certificateMap:CertificateMap default {{name}}
/// ```
class CertificateMap extends pulumi.CustomResource {
  /// Creation timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A list of target proxies that use this Certificate Map
  /// Structure is documented below.
  late final pulumi.Output<List<CertificateMapGclbTarget>> gclbTargets;
  /// Set of labels associated with a Certificate Map resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// A user-defined name of the Certificate Map. Certificate Map names must be unique
  /// globally and match the pattern `projects/*/locations/*/certificateMaps/*`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Update timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateMap]. {@macro pulumi_certificatemanager_certificate_map_certificate_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateMap(
    String name, {
    CertificateMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificateMap:CertificateMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gclbTargets = registerOutput<List<CertificateMapGclbTarget>>('gclbTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificateMapGclbTarget>(guardedValue, (value) => CertificateMapGclbTarget.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CertificateMap] resource's state with the given [name] and [id].
  static CertificateMap get(
    String name,
    pulumi.Input<String> id, {
    CertificateMapState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CertificateMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CertificateMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificateMap:CertificateMap',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gclbTargets = registerOutput<List<CertificateMapGclbTarget>>('gclbTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificateMapGclbTarget>(guardedValue, (value) => CertificateMapGclbTarget.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [CertificateMap] resource.
  CertificateMap.reference(String urn)
    : super(
        'gcp:certificatemanager/certificateMap:CertificateMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gclbTargets = registerOutput<List<CertificateMapGclbTarget>>('gclbTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificateMapGclbTarget>(guardedValue, (value) => CertificateMapGclbTarget.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }
}
