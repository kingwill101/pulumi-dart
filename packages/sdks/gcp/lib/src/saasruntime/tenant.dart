import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_args.dart';
import 'tenant_state.dart';

/// The Tenant resource represents the service producer's view of a service instance created for a consumer. It enables the association between the service producer's managed resources and the end consumer.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Tenant Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSaas = new gcp.saasruntime.SaaS("example_saas", {
///     saasId: "example-saas",
///     location: "global",
///     locations: [{
///         name: "us-central1",
///     }],
/// });
/// const example = new gcp.saasruntime.Tenant("example", {
///     location: "global",
///     tenantId: "example-tenant",
///     saas: exampleSaas.id,
///     consumerResource: "//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_saas = gcp.saasruntime.SaaS("example_saas",
///     saas_id="example-saas",
///     location="global",
///     locations=[{
///         "name": "us-central1",
///     }])
/// example = gcp.saasruntime.Tenant("example",
///     location="global",
///     tenant_id="example-tenant",
///     saas=example_saas.id,
///     consumer_resource="//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSaas = new Gcp.SaaSRuntime.SaaS("example_saas", new()
///     {
///         SaasId = "example-saas",
///         Location = "global",
///         Locations = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = "us-central1",
///             },
///         },
///     });
///
///     var example = new Gcp.SaaSRuntime.Tenant("example", new()
///     {
///         Location = "global",
///         TenantId = "example-tenant",
///         Saas = exampleSaas.Id,
///         ConsumerResource = "//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/saasruntime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSaas, err := saasruntime.NewSaaS(ctx, "example_saas", &saasruntime.SaaSArgs{
/// 			SaasId:   pulumi.String("example-saas"),
/// 			Location: pulumi.String("global"),
/// 			Locations: saasruntime.SaaSLocationArray{
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String("us-central1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewTenant(ctx, "example", &saasruntime.TenantArgs{
/// 			Location:         pulumi.String("global"),
/// 			TenantId:         pulumi.String("example-tenant"),
/// 			Saas:             exampleSaas.ID(),
/// 			ConsumerResource: pulumi.String("//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance"),
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
/// import com.pulumi.gcp.saasruntime.SaaS;
/// import com.pulumi.gcp.saasruntime.SaaSArgs;
/// import com.pulumi.gcp.saasruntime.inputs.SaaSLocationArgs;
/// import com.pulumi.gcp.saasruntime.Tenant;
/// import com.pulumi.gcp.saasruntime.TenantArgs;
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
///         var exampleSaas = new SaaS("exampleSaas", SaaSArgs.builder()
///             .saasId("example-saas")
///             .location("global")
///             .locations(SaaSLocationArgs.builder()
///                 .name("us-central1")
///                 .build())
///             .build());
///
///         var example = new Tenant("example", TenantArgs.builder()
///             .location("global")
///             .tenantId("example-tenant")
///             .saas(exampleSaas.id())
///             .consumerResource("//compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSaas:
///     type: gcp:saasruntime:SaaS
///     name: example_saas
///     properties:
///       saasId: example-saas
///       location: global
///       locations:
///         - name: us-central1
///   example:
///     type: gcp:saasruntime:Tenant
///     properties:
///       location: global
///       tenantId: example-tenant
///       saas: ${exampleSaas.id}
///       consumerResource: //compute.googleapis.com/projects/example-project/zones/us-central1-a/instances/example-instance
/// ```
///
///
/// ## Import
///
/// Tenant can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tenants/{{tenant_id}}`
///
/// * `{{project}}/{{location}}/{{tenant_id}}`
///
/// * `{{location}}/{{tenant_id}}`
///
/// When using the `pulumi import` command, Tenant can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/tenant:Tenant default projects/{{project}}/locations/{{location}}/tenants/{{tenant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/tenant:Tenant default {{project}}/{{location}}/{{tenant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/tenant:Tenant default {{location}}/{{tenant_id}}
/// ```
class Tenant extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// A reference to the consumer resource this SaaS Tenant is representing.
  /// The relationship with a consumer resource can be used by SaaS Runtime for
  /// retrieving consumer-defined settings and policies such as maintenance
  /// policies (using Unified Maintenance Policy API).
  late final pulumi.Output<String?> consumerResource;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/tenants/{tenant}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the
  /// SaaS Runtime common data model.
  late final pulumi.Output<String> saas;
  /// The ID value for the new tenant.
  late final pulumi.Output<String> tenantId;
  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final pulumi.Output<String> uid;
  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Tenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tenant]. {@macro pulumi_saasruntime_tenant_tenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tenant(
    String name, {
    TenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/tenant:Tenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    consumerResource = registerOutput<String?>('consumerResource');
    createTime = registerOutput<String>('createTime');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    saas = registerOutput<String>('saas');
    tenantId = registerOutput<String>('tenantId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Tenant] resource's state with the given [name] and [id].
  static Tenant get(
    String name,
    pulumi.Input<String> id, {
    TenantState? state,
  }) {
    return Tenant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tenant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:saasruntime/tenant:Tenant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    consumerResource = registerOutput<String?>('consumerResource');
    createTime = registerOutput<String>('createTime');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    saas = registerOutput<String>('saas');
    tenantId = registerOutput<String>('tenantId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
