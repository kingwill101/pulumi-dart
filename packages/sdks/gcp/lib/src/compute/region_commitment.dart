import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_commitment_args.dart';
import 'region_commitment_license_resource.dart';
import 'region_commitment_params.dart';
import 'region_commitment_resource.dart';
import 'region_commitment_state.dart';

/// Represents a regional Commitment resource.
///
/// Creating a commitment resource means that you are purchasing a committed
/// use contract with an explicit start and end time. You can create commitments
/// based on vCPUs and memory usage and receive discounted rates.
///
///
/// To get more information about RegionCommitment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments)
/// * How-to Guides
/// * [Committed use discounts for Compute Engine](https://cloud.google.com/compute/docs/instances/committed-use-discounts-overview)
///
/// ## Example Usage
///
/// ### Compute Region Commitment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RegionCommitment("foobar", {
///     name: "my-region-commitment",
///     plan: "THIRTY_SIX_MONTH",
///     resources: [
///         {
///             type: "VCPU",
///             amount: "4",
///         },
///         {
///             type: "MEMORY",
///             amount: "9",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RegionCommitment("foobar",
///     name="my-region-commitment",
///     plan="THIRTY_SIX_MONTH",
///     resources=[
///         {
///             "type": "VCPU",
///             "amount": "4",
///         },
///         {
///             "type": "MEMORY",
///             "amount": "9",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Gcp.Compute.RegionCommitment("foobar", new()
///     {
///         Name = "my-region-commitment",
///         Plan = "THIRTY_SIX_MONTH",
///         Resources = new[]
///         {
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "VCPU",
///                 Amount = "4",
///             },
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "MEMORY",
///                 Amount = "9",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionCommitment(ctx, "foobar", &compute.RegionCommitmentArgs{
/// 			Name: pulumi.String("my-region-commitment"),
/// 			Plan: pulumi.String("THIRTY_SIX_MONTH"),
/// 			Resources: compute.RegionCommitmentResourceArray{
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("VCPU"),
/// 					Amount: pulumi.String("4"),
/// 				},
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("MEMORY"),
/// 					Amount: pulumi.String("9"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regioncommitment" "foobar" {
///   name = "my-region-commitment"
///   plan = "THIRTY_SIX_MONTH"
///   resources {
///     type   = "VCPU"
///     amount = "4"
///   }
///   resources {
///     type   = "MEMORY"
///     amount = "9"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionCommitment;
/// import com.pulumi.gcp.compute.RegionCommitmentArgs;
/// import com.pulumi.gcp.compute.inputs.RegionCommitmentResourceArgs;
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
///         var foobar = new RegionCommitment("foobar", RegionCommitmentArgs.builder()
///             .name("my-region-commitment")
///             .plan("THIRTY_SIX_MONTH")
///             .resources(
///                 RegionCommitmentResourceArgs.builder()
///                     .type("VCPU")
///                     .amount("4")
///                     .build(),
///                 RegionCommitmentResourceArgs.builder()
///                     .type("MEMORY")
///                     .amount("9")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RegionCommitment
///     properties:
///       name: my-region-commitment
///       plan: THIRTY_SIX_MONTH
///       resources:
///         - type: VCPU
///           amount: '4'
///         - type: MEMORY
///           amount: '9'
/// ```
///
/// ### Compute Region Commitment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tagKey = new gcp.tags.TagKey("tag_key", {
///     parent: "organizations/ORG_ID",
///     shortName: "tagkey",
/// });
/// const tagValue = new gcp.tags.TagValue("tag_value", {
///     parent: tagKey.id,
///     shortName: "tagvalue",
/// });
/// const foobar = new gcp.compute.RegionCommitment("foobar", {
///     name: "my-full-commitment",
///     description: "some description",
///     plan: "THIRTY_SIX_MONTH",
///     type: "MEMORY_OPTIMIZED",
///     category: "MACHINE",
///     autoRenew: true,
///     resources: [
///         {
///             type: "VCPU",
///             amount: "4",
///         },
///         {
///             type: "MEMORY",
///             amount: "9",
///         },
///     ],
///     params: {
///         resourceManagerTags: pulumi.all([tagKey.id, tagValue.id]).apply(([tagKeyId, tagValueId]) => {
///             [tagKeyId]: tagValueId,
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tag_key = gcp.tags.TagKey("tag_key",
///     parent="organizations/ORG_ID",
///     short_name="tagkey")
/// tag_value = gcp.tags.TagValue("tag_value",
///     parent=tag_key.id,
///     short_name="tagvalue")
/// foobar = gcp.compute.RegionCommitment("foobar",
///     name="my-full-commitment",
///     description="some description",
///     plan="THIRTY_SIX_MONTH",
///     type="MEMORY_OPTIMIZED",
///     category="MACHINE",
///     auto_renew=True,
///     resources=[
///         {
///             "type": "VCPU",
///             "amount": "4",
///         },
///         {
///             "type": "MEMORY",
///             "amount": "9",
///         },
///     ],
///     params={
///         "resource_manager_tags": pulumi.Output.all(
///             tagKeyId=tag_key.id,
///             tagValueId=tag_value.id
/// ).apply(lambda resolved_outputs: {
///             str(resolved_outputs['tagKeyId']): resolved_outputs['tagValueId'],
///         })
/// ,
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
///     var tagKey = new Gcp.Tags.TagKey("tag_key", new()
///     {
///         Parent = "organizations/ORG_ID",
///         ShortName = "tagkey",
///     });
///
///     var tagValue = new Gcp.Tags.TagValue("tag_value", new()
///     {
///         Parent = tagKey.Id,
///         ShortName = "tagvalue",
///     });
///
///     var foobar = new Gcp.Compute.RegionCommitment("foobar", new()
///     {
///         Name = "my-full-commitment",
///         Description = "some description",
///         Plan = "THIRTY_SIX_MONTH",
///         Type = "MEMORY_OPTIMIZED",
///         Category = "MACHINE",
///         AutoRenew = true,
///         Resources = new[]
///         {
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "VCPU",
///                 Amount = "4",
///             },
///             new Gcp.Compute.Inputs.RegionCommitmentResourceArgs
///             {
///                 Type = "MEMORY",
///                 Amount = "9",
///             },
///         },
///         Params = new Gcp.Compute.Inputs.RegionCommitmentParamsArgs
///         {
///             ResourceManagerTags = Output.Tuple(tagKey.Id, tagValue.Id).Apply(values =>
///             {
///                 var tagKeyId = values.Item1;
///                 var tagValueId = values.Item2;
///                 return
///                 {
///                     { tagKeyId, tagValueId },
///                 };
///             }),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// 			Parent:    pulumi.String("organizations/ORG_ID"),
/// 			ShortName: pulumi.String("tagkey"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// 			Parent:    tagKey.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName: pulumi.String("tagvalue"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionCommitment(ctx, "foobar", &compute.RegionCommitmentArgs{
/// 			Name:        pulumi.String("my-full-commitment"),
/// 			Description: pulumi.String("some description"),
/// 			Plan:        pulumi.String("THIRTY_SIX_MONTH"),
/// 			Type:        pulumi.String("MEMORY_OPTIMIZED"),
/// 			Category:    pulumi.String("MACHINE"),
/// 			AutoRenew:   pulumi.Bool(true),
/// 			Resources: compute.RegionCommitmentResourceArray{
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("VCPU"),
/// 					Amount: pulumi.String("4"),
/// 				},
/// 				&compute.RegionCommitmentResourceArgs{
/// 					Type:   pulumi.String("MEMORY"),
/// 					Amount: pulumi.String("9"),
/// 				},
/// 			},
/// 			Params: &compute.RegionCommitmentParamsArgs{
/// 				ResourceManagerTags: pulumi.StringMap(pulumi.All(tagKey.ID(), tagValue.ID()).ApplyT(func(_args []interface{}) (map[string]pulumi.ID, error) {
/// 					tagKeyId := _args[0].(pulumi.ID)
/// 					tagValueId := _args[1].(pulumi.ID)
/// 					return map[string]pulumi.ID(pulumi.String(tagKeyId).ApplyT(func(__convert string) (map[string]pulumi.ID, error) {
/// 						return map[string]pulumi.ID{
/// 							__convert: tagValueId,
/// 						}, nil
/// 					}).(pulumi.IDMapOutput)), nil
/// 				}).(pulumi.IDMapOutput)),
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
/// resource "gcp_compute_regioncommitment" "foobar" {
///   name        = "my-full-commitment"
///   description = "some description"
///   plan        = "THIRTY_SIX_MONTH"
///   type        = "MEMORY_OPTIMIZED"
///   category    = "MACHINE"
///   auto_renew  = true
///   resources {
///     type   = "VCPU"
///     amount = "4"
///   }
///   resources {
///     type   = "MEMORY"
///     amount = "9"
///   }
///   params = {
///     resource_manager_tags = {
///       gcp_tags_tagkey.tag_key.id = gcp_tags_tagvalue.tag_value.id
///     }
///   }
/// }
/// resource "gcp_tags_tagkey" "tag_key" {
///   parent     = "organizations/ORG_ID"
///   short_name = "tagkey"
/// }
/// resource "gcp_tags_tagvalue" "tag_value" {
///   parent     = gcp_tags_tagkey.tag_key.id
///   short_name = "tagvalue"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.RegionCommitment;
/// import com.pulumi.gcp.compute.RegionCommitmentArgs;
/// import com.pulumi.gcp.compute.inputs.RegionCommitmentResourceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionCommitmentParamsArgs;
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
///         var tagKey = new TagKey("tagKey", TagKeyArgs.builder()
///             .parent("organizations/ORG_ID")
///             .shortName("tagkey")
///             .build());
///
///         var tagValue = new TagValue("tagValue", TagValueArgs.builder()
///             .parent(tagKey.id())
///             .shortName("tagvalue")
///             .build());
///
///         var foobar = new RegionCommitment("foobar", RegionCommitmentArgs.builder()
///             .name("my-full-commitment")
///             .description("some description")
///             .plan("THIRTY_SIX_MONTH")
///             .type("MEMORY_OPTIMIZED")
///             .category("MACHINE")
///             .autoRenew(true)
///             .resources(
///                 RegionCommitmentResourceArgs.builder()
///                     .type("VCPU")
///                     .amount("4")
///                     .build(),
///                 RegionCommitmentResourceArgs.builder()
///                     .type("MEMORY")
///                     .amount("9")
///                     .build())
///             .params(RegionCommitmentParamsArgs.builder()
///                 .resourceManagerTags(Output.tuple(tagKey.id(), tagValue.id()).applyValue(values -> {
///                     var tagKeyId = values.t1;
///                     var tagValueId = values.t2;
///                     return tagKeyId.applyValue(___convert -> Map.of(___convert, tagValueId));
///                 }))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RegionCommitment
///     properties:
///       name: my-full-commitment
///       description: some description
///       plan: THIRTY_SIX_MONTH
///       type: MEMORY_OPTIMIZED
///       category: MACHINE
///       autoRenew: true
///       resources:
///         - type: VCPU
///           amount: '4'
///         - type: MEMORY
///           amount: '9'
///       params:
///         resourceManagerTags:
///           ${tagKey.id}: ${tagValue.id}
///   tagKey:
///     type: gcp:tags:TagKey
///     name: tag_key
///     properties:
///       parent: organizations/ORG_ID
///       shortName: tagkey
///   tagValue:
///     type: gcp:tags:TagValue
///     name: tag_value
///     properties:
///       parent: ${tagKey.id}
///       shortName: tagvalue
/// ```
///
///
/// ## Import
///
/// RegionCommitment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/commitments/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionCommitment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default projects/{{project}}/regions/{{region}}/commitments/{{name}}
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionCommitment:RegionCommitment default {{name}}
/// ```
class RegionCommitment extends pulumi.CustomResource {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  late final pulumi.Output<bool> autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  late final pulumi.Output<String> category;
  /// Unique identifier for the resource.
  late final pulumi.Output<int> commitmentId;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Commitment end time in RFC3339 text format.
  late final pulumi.Output<String> endTimestamp;
  /// Specifies the already existing reservations to attach to the Commitment. This field will suppress
  /// diffs that change the value from empty to non-empty. To force changing this field from empty to non-empty,
  /// change another field at the same time.
  late final pulumi.Output<String?> existingReservations;
  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  late final pulumi.Output<RegionCommitmentLicenseResource?> licenseResource;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RegionCommitmentParams?> params;
  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  late final pulumi.Output<String> plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// URL of the region where this commitment may be used.
  late final pulumi.Output<String> region;
  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionCommitmentResource>?> resources;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Commitment start time in RFC3339 text format.
  late final pulumi.Output<String> startTimestamp;
  /// Status of the commitment with regards to eventual expiration
  /// (each commitment has an end date defined).
  late final pulumi.Output<String> status;
  /// A human-readable explanation of the status.
  late final pulumi.Output<String> statusMessage;
  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  late final pulumi.Output<String> type;

  /// Creates a new [RegionCommitment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionCommitment]. {@macro pulumi_compute_region_commitment_region_commitment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionCommitment(
    String name, {
    RegionCommitmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionCommitment:RegionCommitment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    autoRenew = registerOutput<bool>('autoRenew');
    category = registerOutput<String>('category');
    commitmentId = registerOutput<int>('commitmentId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    endTimestamp = registerOutput<String>('endTimestamp');
    existingReservations = registerOutput<String?>('existingReservations');
    licenseResource = registerOutput<RegionCommitmentLicenseResource?>('licenseResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionCommitmentLicenseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    params = registerOutput<RegionCommitmentParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionCommitmentParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    plan = registerOutput<String>('plan');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    resources = registerOutput<List<RegionCommitmentResource>?>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionCommitmentResource>(guardedValue, (value) => RegionCommitmentResource.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    startTimestamp = registerOutput<String>('startTimestamp');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [RegionCommitment] resource's state with the given [name] and [id].
  static RegionCommitment get(
    String name,
    pulumi.Input<String> id, {
    RegionCommitmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionCommitment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionCommitment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionCommitment:RegionCommitment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenew = registerOutput<bool>('autoRenew');
    category = registerOutput<String>('category');
    commitmentId = registerOutput<int>('commitmentId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    endTimestamp = registerOutput<String>('endTimestamp');
    existingReservations = registerOutput<String?>('existingReservations');
    licenseResource = registerOutput<RegionCommitmentLicenseResource?>('licenseResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionCommitmentLicenseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    params = registerOutput<RegionCommitmentParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionCommitmentParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    plan = registerOutput<String>('plan');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    resources = registerOutput<List<RegionCommitmentResource>?>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionCommitmentResource>(guardedValue, (value) => RegionCommitmentResource.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    startTimestamp = registerOutput<String>('startTimestamp');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RegionCommitment] resource.
  RegionCommitment.reference(String urn)
    : super(
        'gcp:compute/regionCommitment:RegionCommitment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoRenew = registerOutput<bool>('autoRenew');
    category = registerOutput<String>('category');
    commitmentId = registerOutput<int>('commitmentId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    endTimestamp = registerOutput<String>('endTimestamp');
    existingReservations = registerOutput<String?>('existingReservations');
    licenseResource = registerOutput<RegionCommitmentLicenseResource?>('licenseResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionCommitmentLicenseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    params = registerOutput<RegionCommitmentParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionCommitmentParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    plan = registerOutput<String>('plan');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    resources = registerOutput<List<RegionCommitmentResource>?>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionCommitmentResource>(guardedValue, (value) => RegionCommitmentResource.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    startTimestamp = registerOutput<String>('startTimestamp');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    type = registerOutput<String>('type');
  }
}
