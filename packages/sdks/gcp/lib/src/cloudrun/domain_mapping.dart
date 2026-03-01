import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_args.dart';
import 'domain_mapping_metadata.dart';
import 'domain_mapping_spec.dart';
import 'domain_mapping_state.dart';
import 'domain_mapping_status.dart';

/// Resource to hold the state and status of a user's domain mapping.
///
///
/// To get more information about DomainMapping, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v1/projects.locations.domainmappings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/mapping-custom-domains)
///
/// ## Example Usage
///
/// ### Cloud Run Domain Mapping Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     metadata: {
///         namespace: "my-project-name",
///     },
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     },
/// });
/// const defaultDomainMapping = new gcp.cloudrun.DomainMapping("default", {
///     location: "us-central1",
///     name: "verified-domain.com",
///     metadata: {
///         namespace: "my-project-name",
///     },
///     spec: {
///         routeName: _default.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     metadata={
///         "namespace": "my-project-name",
///     },
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     })
/// default_domain_mapping = gcp.cloudrun.DomainMapping("default",
///     location="us-central1",
///     name="verified-domain.com",
///     metadata={
///         "namespace": "my-project-name",
///     },
///     spec={
///         "route_name": default.name,
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
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Metadata = new Gcp.CloudRun.Inputs.ServiceMetadataArgs
///         {
///             Namespace = "my-project-name",
///         },
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultDomainMapping = new Gcp.CloudRun.DomainMapping("default", new()
///     {
///         Location = "us-central1",
///         Name = "verified-domain.com",
///         Metadata = new Gcp.CloudRun.Inputs.DomainMappingMetadataArgs
///         {
///             Namespace = "my-project-name",
///         },
///         Spec = new Gcp.CloudRun.Inputs.DomainMappingSpecArgs
///         {
///             RouteName = @default.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Metadata: &cloudrun.ServiceMetadataArgs{
/// 				Namespace: pulumi.String("my-project-name"),
/// 			},
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrun.NewDomainMapping(ctx, "default", &cloudrun.DomainMappingArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("verified-domain.com"),
/// 			Metadata: &cloudrun.DomainMappingMetadataArgs{
/// 				Namespace: pulumi.String("my-project-name"),
/// 			},
/// 			Spec: &cloudrun.DomainMappingSpecArgs{
/// 				RouteName: _default.Name,
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
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceMetadataArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.DomainMapping;
/// import com.pulumi.gcp.cloudrun.DomainMappingArgs;
/// import com.pulumi.gcp.cloudrun.inputs.DomainMappingMetadataArgs;
/// import com.pulumi.gcp.cloudrun.inputs.DomainMappingSpecArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .metadata(ServiceMetadataArgs.builder()
///                 .namespace("my-project-name")
///                 .build())
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultDomainMapping = new DomainMapping("defaultDomainMapping", DomainMappingArgs.builder()
///             .location("us-central1")
///             .name("verified-domain.com")
///             .metadata(DomainMappingMetadataArgs.builder()
///                 .namespace("my-project-name")
///                 .build())
///             .spec(DomainMappingSpecArgs.builder()
///                 .routeName(default_.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       metadata:
///         namespace: my-project-name
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///   defaultDomainMapping:
///     type: gcp:cloudrun:DomainMapping
///     name: default
///     properties:
///       location: us-central1
///       name: verified-domain.com
///       metadata:
///         namespace: my-project-name
///       spec:
///         routeName: ${default.name}
/// ```
///
///
/// ## Import
///
/// DomainMapping can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/namespaces/{{project}}/domainmappings/{{name}}`
///
/// * `{{location}}/{{project}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DomainMapping can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrun/domainMapping:DomainMapping default locations/{{location}}/namespaces/{{project}}/domainmappings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrun/domainMapping:DomainMapping default {{location}}/{{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrun/domainMapping:DomainMapping default {{location}}/{{name}}
/// ```
class DomainMapping extends pulumi.CustomResource {
  /// The location of the cloud run instance. eg us-central1
  late final pulumi.Output<String> location;
  /// Metadata associated with this DomainMapping.
  /// Structure is documented below.
  late final pulumi.Output<DomainMappingMetadata> metadata;
  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The spec for this DomainMapping.
  /// Structure is documented below.
  late final pulumi.Output<DomainMappingSpec> spec;
  /// (Output)
  /// Status of the condition, one of True, False, Unknown.
  late final pulumi.Output<List<DomainMappingStatus>> statuses;

  /// Creates a new [DomainMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainMapping]. {@macro pulumi_cloudrun_domain_mapping_domain_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainMapping(
    String name, {
    DomainMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrun/domainMapping:DomainMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<DomainMappingMetadata>('metadata');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spec = registerOutput<DomainMappingSpec>('spec');
    this.statuses = registerOutput<List<DomainMappingStatus>>('statuses');
  }

  /// Gets an existing [DomainMapping] resource's state with the given [name] and [id].
  static DomainMapping get(
    String name,
    pulumi.Input<String> id, {
    DomainMappingState? state,
  }) {
    return DomainMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrun/domainMapping:DomainMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<DomainMappingMetadata>('metadata');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spec = registerOutput<DomainMappingSpec>('spec');
    this.statuses = registerOutput<List<DomainMappingStatus>>('statuses');
  }
}
