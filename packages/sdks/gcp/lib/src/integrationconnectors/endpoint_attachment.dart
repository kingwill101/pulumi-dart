import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_args.dart';
import 'endpoint_attachment_state.dart';

/// An Integration connectors Endpoint Attachment.
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/integration-connectors/docs/reference/rest/v1/projects.locations.endpointAttachments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/integration-connectors/docs/create-endpoint-attachment)
///
/// ## Example Usage
///
/// ### Integration Connectors Endpoint Attachment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sampleendpointattachment = new gcp.integrationconnectors.EndpointAttachment("sampleendpointattachment", {
///     name: "test-endpoint-attachment",
///     location: "us-central1",
///     description: "tf created description",
///     serviceAttachment: "projects/connectors-example/regions/us-central1/serviceAttachments/test",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sampleendpointattachment = gcp.integrationconnectors.EndpointAttachment("sampleendpointattachment",
///     name="test-endpoint-attachment",
///     location="us-central1",
///     description="tf created description",
///     service_attachment="projects/connectors-example/regions/us-central1/serviceAttachments/test",
///     labels={
///         "foo": "bar",
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
///     var sampleendpointattachment = new Gcp.IntegrationConnectors.EndpointAttachment("sampleendpointattachment", new()
///     {
///         Name = "test-endpoint-attachment",
///         Location = "us-central1",
///         Description = "tf created description",
///         ServiceAttachment = "projects/connectors-example/regions/us-central1/serviceAttachments/test",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/integrationconnectors"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := integrationconnectors.NewEndpointAttachment(ctx, "sampleendpointattachment", &integrationconnectors.EndpointAttachmentArgs{
/// 			Name:              pulumi.String("test-endpoint-attachment"),
/// 			Location:          pulumi.String("us-central1"),
/// 			Description:       pulumi.String("tf created description"),
/// 			ServiceAttachment: pulumi.String("projects/connectors-example/regions/us-central1/serviceAttachments/test"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_integrationconnectors_endpointattachment" "sampleendpointattachment" {
///   name               = "test-endpoint-attachment"
///   location           = "us-central1"
///   description        = "tf created description"
///   service_attachment = "projects/connectors-example/regions/us-central1/serviceAttachments/test"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.integrationconnectors.EndpointAttachment;
/// import com.pulumi.gcp.integrationconnectors.EndpointAttachmentArgs;
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
///         var sampleendpointattachment = new EndpointAttachment("sampleendpointattachment", EndpointAttachmentArgs.builder()
///             .name("test-endpoint-attachment")
///             .location("us-central1")
///             .description("tf created description")
///             .serviceAttachment("projects/connectors-example/regions/us-central1/serviceAttachments/test")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sampleendpointattachment:
///     type: gcp:integrationconnectors:EndpointAttachment
///     properties:
///       name: test-endpoint-attachment
///       location: us-central1
///       description: tf created description
///       serviceAttachment: projects/connectors-example/regions/us-central1/serviceAttachments/test
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpointAttachments/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default projects/{{project}}/locations/{{location}}/endpointAttachments/{{name}}
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:integrationconnectors/endpointAttachment:EndpointAttachment default {{location}}/{{name}}
/// ```
class EndpointAttachment extends pulumi.CustomResource {
  /// Time the Namespace was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Enable global access for endpoint attachment.
  late final pulumi.Output<bool?> endpointGlobalAccess;
  /// The Private Service Connect connection endpoint ip.
  late final pulumi.Output<String> endpointIp;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location in which Endpoint Attachment needs to be created.
  late final pulumi.Output<String> location;
  /// Name of Endpoint Attachment needs to be created.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The path of the service attachment.
  late final pulumi.Output<String> serviceAttachment;
  /// Time the Namespace was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EndpointAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAttachment]. {@macro pulumi_integrationconnectors_endpoint_attachment_endpoint_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    endpointGlobalAccess = registerOutput<bool?>('endpointGlobalAccess');
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAttachment = registerOutput<String>('serviceAttachment');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [EndpointAttachment] resource's state with the given [name] and [id].
  static EndpointAttachment get(
    String name,
    pulumi.Input<String> id, {
    EndpointAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EndpointAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EndpointAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    endpointGlobalAccess = registerOutput<bool?>('endpointGlobalAccess');
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAttachment = registerOutput<String>('serviceAttachment');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [EndpointAttachment] resource.
  EndpointAttachment.reference(String urn)
    : super(
        'gcp:integrationconnectors/endpointAttachment:EndpointAttachment',
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
    endpointGlobalAccess = registerOutput<bool?>('endpointGlobalAccess');
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAttachment = registerOutput<String>('serviceAttachment');
    updateTime = registerOutput<String>('updateTime');
  }
}
