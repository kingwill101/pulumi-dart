import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_metadata_store_args.dart';
import 'ai_metadata_store_encryption_spec.dart';
import 'ai_metadata_store_state.dart';
import 'ai_metadata_store_vertex_state.dart';

/// Instance of a metadata store. Contains a set of metadata that can be queried.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about MetadataStore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.metadataStores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Metadata Store
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const store = new gcp.vertex.AiMetadataStore("store", {
///     name: "test-store",
///     description: "Store to test the terraform module",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// store = gcp.vertex.AiMetadataStore("store",
///     name="test-store",
///     description="Store to test the terraform module",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var store = new Gcp.Vertex.AiMetadataStore("store", new()
///     {
///         Name = "test-store",
///         Description = "Store to test the terraform module",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiMetadataStore(ctx, "store", &vertex.AiMetadataStoreArgs{
/// 			Name:        pulumi.String("test-store"),
/// 			Description: pulumi.String("Store to test the terraform module"),
/// 			Region:      pulumi.String("us-central1"),
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
/// resource "gcp_vertex_aimetadatastore" "store" {
///   name        = "test-store"
///   description = "Store to test the terraform module"
///   region      = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiMetadataStore;
/// import com.pulumi.gcp.vertex.AiMetadataStoreArgs;
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
///         var store = new AiMetadataStore("store", AiMetadataStoreArgs.builder()
///             .name("test-store")
///             .description("Store to test the terraform module")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   store:
///     type: gcp:vertex:AiMetadataStore
///     properties:
///       name: test-store
///       description: Store to test the terraform module
///       region: us-central1
/// ```
///
///
/// ## Import
///
/// MetadataStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/metadataStores/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, MetadataStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default projects/{{project}}/locations/{{region}}/metadataStores/{{name}}
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{name}}
/// ```
class AiMetadataStore extends pulumi.CustomResource {
  /// The timestamp of when the MetadataStore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the MetadataStore.
  late final pulumi.Output<String?> description;
  /// Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiMetadataStoreEncryptionSpec?> encryptionSpec;
  /// The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the Metadata Store. eg us-central1
  late final pulumi.Output<String> region;
  /// State information of the MetadataStore.
  /// Structure is documented below.
  late final pulumi.Output<List<AiMetadataStoreState>> states;
  /// The timestamp of when the MetadataStore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiMetadataStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiMetadataStore]. {@macro pulumi_vertex_ai_metadata_store_ai_metadata_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiMetadataStore(
    String name, {
    AiMetadataStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiMetadataStore:AiMetadataStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    encryptionSpec = registerOutput<AiMetadataStoreEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiMetadataStoreEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    states = registerOutput<List<AiMetadataStoreState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiMetadataStoreState>(guardedValue, (value) => AiMetadataStoreState.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiMetadataStore] resource's state with the given [name] and [id].
  static AiMetadataStore get(
    String name,
    pulumi.Input<String> id, {
    AiMetadataStoreVertexState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiMetadataStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiMetadataStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiMetadataStore:AiMetadataStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    encryptionSpec = registerOutput<AiMetadataStoreEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiMetadataStoreEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    states = registerOutput<List<AiMetadataStoreState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiMetadataStoreState>(guardedValue, (value) => AiMetadataStoreState.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiMetadataStore] resource.
  AiMetadataStore.reference(String urn)
    : super(
        'gcp:vertex/aiMetadataStore:AiMetadataStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    encryptionSpec = registerOutput<AiMetadataStoreEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiMetadataStoreEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    states = registerOutput<List<AiMetadataStoreState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiMetadataStoreState>(guardedValue, (value) => AiMetadataStoreState.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
