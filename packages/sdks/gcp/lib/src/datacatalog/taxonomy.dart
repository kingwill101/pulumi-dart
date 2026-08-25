import 'package:pulumi/pulumi.dart' as pulumi;
import 'taxonomy_args.dart';
import 'taxonomy_state.dart';

/// A collection of policy tags that classify data along a common axis.
///
///
/// To get more information about Taxonomy, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.taxonomies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Taxonomy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicTaxonomy = new gcp.datacatalog.Taxonomy("basic_taxonomy", {
///     displayName: "my_taxonomy",
///     description: "A collection of policy tags",
///     activatedPolicyTypes: ["FINE_GRAINED_ACCESS_CONTROL"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_taxonomy = gcp.datacatalog.Taxonomy("basic_taxonomy",
///     display_name="my_taxonomy",
///     description="A collection of policy tags",
///     activated_policy_types=["FINE_GRAINED_ACCESS_CONTROL"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicTaxonomy = new Gcp.DataCatalog.Taxonomy("basic_taxonomy", new()
///     {
///         DisplayName = "my_taxonomy",
///         Description = "A collection of policy tags",
///         ActivatedPolicyTypes = new[]
///         {
///             "FINE_GRAINED_ACCESS_CONTROL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.NewTaxonomy(ctx, "basic_taxonomy", &datacatalog.TaxonomyArgs{
/// 			DisplayName: pulumi.String("my_taxonomy"),
/// 			Description: pulumi.String("A collection of policy tags"),
/// 			ActivatedPolicyTypes: pulumi.StringArray{
/// 				pulumi.String("FINE_GRAINED_ACCESS_CONTROL"),
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
/// resource "gcp_datacatalog_taxonomy" "basic_taxonomy" {
///   display_name           = "my_taxonomy"
///   description            = "A collection of policy tags"
///   activated_policy_types = ["FINE_GRAINED_ACCESS_CONTROL"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datacatalog.Taxonomy;
/// import com.pulumi.gcp.datacatalog.TaxonomyArgs;
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
///         var basicTaxonomy = new Taxonomy("basicTaxonomy", TaxonomyArgs.builder()
///             .displayName("my_taxonomy")
///             .description("A collection of policy tags")
///             .activatedPolicyTypes("FINE_GRAINED_ACCESS_CONTROL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicTaxonomy:
///     type: gcp:datacatalog:Taxonomy
///     name: basic_taxonomy
///     properties:
///       displayName: my_taxonomy
///       description: A collection of policy tags
///       activatedPolicyTypes:
///         - FINE_GRAINED_ACCESS_CONTROL
/// ```
///
///
/// ## Import
///
/// Taxonomy can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Taxonomy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/taxonomy:Taxonomy default {{name}}
/// ```
class Taxonomy extends pulumi.CustomResource {
  /// A list of policy types that are activated for this taxonomy. If not set,
  /// defaults to an empty list.
  /// Each value may be one of: `POLICY_TYPE_UNSPECIFIED`, `FINE_GRAINED_ACCESS_CONTROL`.
  late final pulumi.Output<List<String>?> activatedPolicyTypes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of this taxonomy. It must: contain only unicode characters,
  /// tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
  /// long when encoded in UTF-8. If not set, defaults to an empty description.
  late final pulumi.Output<String?> description;
  /// User defined name of this taxonomy.
  /// The taxonomy display name must be unique within an organization.
  /// It must: contain only unicode letters, numbers, underscores, dashes
  /// and spaces; not start or end with spaces; and be at most 200 bytes
  /// long when encoded in UTF-8.
  late final pulumi.Output<String> displayName;
  /// Resource name of this taxonomy, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}".
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Taxonomy location region.
  late final pulumi.Output<String> region;

  /// Creates a new [Taxonomy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Taxonomy]. {@macro pulumi_datacatalog_taxonomy_taxonomy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Taxonomy(
    String name, {
    TaxonomyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/taxonomy:Taxonomy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    activatedPolicyTypes = registerOutput<List<String>?>('activatedPolicyTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Taxonomy] resource's state with the given [name] and [id].
  static Taxonomy get(
    String name,
    pulumi.Input<String> id, {
    TaxonomyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Taxonomy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Taxonomy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/taxonomy:Taxonomy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activatedPolicyTypes = registerOutput<List<String>?>('activatedPolicyTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Taxonomy] resource.
  Taxonomy.reference(String urn)
    : super(
        'gcp:datacatalog/taxonomy:Taxonomy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activatedPolicyTypes = registerOutput<List<String>?>('activatedPolicyTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
