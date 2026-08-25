import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_args.dart';
import 'catalog_state.dart';

/// Catalogs are top-level containers for Databases and Tables.
///
///
/// To get more information about Catalog, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/biglake/rest/v1/projects.locations.catalogs)
/// * How-to Guides
/// * [Manage open source metadata with BigLake Metastore](https://cloud.google.com/bigquery/docs/manage-open-source-metadata#create_catalogs)
///
/// ## Example Usage
///
/// ### Bigquery Biglake Catalog
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.biglake.Catalog("default", {
///     name: "my_catalog",
///     location: "US",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.biglake.Catalog("default",
///     name="my_catalog",
///     location="US")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.BigLake.Catalog("default", new()
///     {
///         Name = "my_catalog",
///         Location = "US",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewCatalog(ctx, "default", &biglake.CatalogArgs{
/// 			Name:     pulumi.String("my_catalog"),
/// 			Location: pulumi.String("US"),
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
/// resource "gcp_biglake_catalog" "default" {
///   name     = "my_catalog"
///   location = "US"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.Catalog;
/// import com.pulumi.gcp.biglake.CatalogArgs;
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
///         var default_ = new Catalog("default", CatalogArgs.builder()
///             .name("my_catalog")
///             .location("US")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:biglake:Catalog
///     properties:
///       name: my_catalog
///       location: US
/// ```
///
///
/// ## Import
///
/// Catalog can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/catalogs/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Catalog can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/catalog:Catalog default projects/{{project}}/locations/{{location}}/catalogs/{{name}}
/// $ pulumi import gcp:biglake/catalog:Catalog default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:biglake/catalog:Catalog default {{location}}/{{name}}
/// ```
class Catalog extends pulumi.CustomResource {
  /// Output only. The creation time of the catalog. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits.
  late final pulumi.Output<String> createTime;
  /// Output only. The deletion time of the catalog. Only set after the catalog
  /// is deleted. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Output only. The time when this catalog is considered expired. Only set
  /// after the catalog is deleted. Only set after the catalog is deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits.
  late final pulumi.Output<String> expireTime;
  /// The geographic location where the Catalog should reside.
  late final pulumi.Output<String> location;
  /// The name of the Catalog. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The last modification time of the catalog. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Catalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Catalog]. {@macro pulumi_biglake_catalog_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/catalog:Catalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Catalog] resource's state with the given [name] and [id].
  static Catalog get(
    String name,
    pulumi.Input<String> id, {
    CatalogState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Catalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Catalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/catalog:Catalog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Catalog] resource.
  Catalog.reference(String urn)
    : super(
        'gcp:biglake/catalog:Catalog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
