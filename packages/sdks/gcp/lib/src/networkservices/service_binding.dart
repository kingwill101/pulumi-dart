import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_binding_args.dart';
import 'service_binding_state.dart';

/// &gt; **Warning:** Cloud Service Mesh's integration with Service Directory is going to be deprecated. [Learn more](https://docs.cloud.google.com/service-mesh/docs/service-routing/service-directory-integration-setup). Creating new service binding resources will be disabled.
///
/// ServiceBinding is the resource that defines a Service Directory Service to be used in a
/// BackendService resource.
///
///
/// To get more information about ServiceBinding, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.serviceBindings)
///
/// ## Example Usage
///
/// ### Network Services Service Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.servicedirectory.Namespace("default", {
///     namespaceId: "my-namespace",
///     location: "us-central1",
/// });
/// const defaultService = new gcp.servicedirectory.Service("default", {
///     serviceId: "my-service",
///     namespace: _default.id,
///     metadata: {
///         stage: "prod",
///         region: "us-central1",
///     },
/// });
/// const defaultServiceBinding = new gcp.networkservices.ServiceBinding("default", {
///     name: "my-service-binding",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     service: defaultService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.servicedirectory.Namespace("default",
///     namespace_id="my-namespace",
///     location="us-central1")
/// default_service = gcp.servicedirectory.Service("default",
///     service_id="my-service",
///     namespace=default.id,
///     metadata={
///         "stage": "prod",
///         "region": "us-central1",
///     })
/// default_service_binding = gcp.networkservices.ServiceBinding("default",
///     name="my-service-binding",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     service=default_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ServiceDirectory.Namespace("default", new()
///     {
///         NamespaceId = "my-namespace",
///         Location = "us-central1",
///     });
///
///     var defaultService = new Gcp.ServiceDirectory.Service("default", new()
///     {
///         ServiceId = "my-service",
///         Namespace = @default.Id,
///         Metadata =
///         {
///             { "stage", "prod" },
///             { "region", "us-central1" },
///         },
///     });
///
///     var defaultServiceBinding = new Gcp.NetworkServices.ServiceBinding("default", new()
///     {
///         Name = "my-service-binding",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Service = defaultService.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := servicedirectory.NewNamespace(ctx, "default", &servicedirectory.NamespaceArgs{
/// 			NamespaceId: pulumi.String("my-namespace"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := servicedirectory.NewService(ctx, "default", &servicedirectory.ServiceArgs{
/// 			ServiceId: pulumi.String("my-service"),
/// 			Namespace: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Metadata: pulumi.StringMap{
/// 				"stage":  pulumi.String("prod"),
/// 				"region": pulumi.String("us-central1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewServiceBinding(ctx, "default", &networkservices.ServiceBindingArgs{
/// 			Name: pulumi.String("my-service-binding"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Service:     defaultService.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_servicedirectory_namespace" "default" {
///   namespace_id = "my-namespace"
///   location     = "us-central1"
/// }
/// resource "gcp_servicedirectory_service" "default" {
///   service_id = "my-service"
///   namespace  = gcp_servicedirectory_namespace.default.id
///   metadata = {
///     "stage"  = "prod"
///     "region" = "us-central1"
///   }
/// }
/// resource "gcp_networkservices_servicebinding" "default" {
///   name = "my-service-binding"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   service     = gcp_servicedirectory_service.default.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.servicedirectory.Namespace;
/// import com.pulumi.gcp.servicedirectory.NamespaceArgs;
/// import com.pulumi.gcp.servicedirectory.Service;
/// import com.pulumi.gcp.servicedirectory.ServiceArgs;
/// import com.pulumi.gcp.networkservices.ServiceBinding;
/// import com.pulumi.gcp.networkservices.ServiceBindingArgs;
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
///         var default_ = new Namespace("default", NamespaceArgs.builder()
///             .namespaceId("my-namespace")
///             .location("us-central1")
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .serviceId("my-service")
///             .namespace(default_.id())
///             .metadata(Map.ofEntries(
///                 Map.entry("stage", "prod"),
///                 Map.entry("region", "us-central1")
///             ))
///             .build());
///
///         var defaultServiceBinding = new ServiceBinding("defaultServiceBinding", ServiceBindingArgs.builder()
///             .name("my-service-binding")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .service(defaultService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:servicedirectory:Namespace
///     properties:
///       namespaceId: my-namespace
///       location: us-central1
///   defaultService:
///     type: gcp:servicedirectory:Service
///     name: default
///     properties:
///       serviceId: my-service
///       namespace: ${default.id}
///       metadata:
///         stage: prod
///         region: us-central1
///   defaultServiceBinding:
///     type: gcp:networkservices:ServiceBinding
///     name: default
///     properties:
///       name: my-service-binding
///       labels:
///         foo: bar
///       description: my description
///       service: ${defaultService.id}
/// ```
///
///
/// ## Import
///
/// ServiceBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/serviceBindings/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ServiceBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/serviceBinding:ServiceBinding default projects/{{project}}/locations/global/serviceBindings/{{name}}
/// $ pulumi import gcp:networkservices/serviceBinding:ServiceBinding default {{project}}/{{name}}
/// $ pulumi import gcp:networkservices/serviceBinding:ServiceBinding default {{name}}
/// ```
class ServiceBinding extends pulumi.CustomResource {
  /// Time the ServiceBinding was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the ServiceBinding resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the ServiceBinding resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The full Service Directory Service name of the format
  /// projects/*/locations/*/namespaces/*/services/*
  late final pulumi.Output<String> service;
  /// Time the ServiceBinding was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceBinding]. {@macro pulumi_networkservices_service_binding_service_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceBinding(
    String name, {
    ServiceBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/serviceBinding:ServiceBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    service = registerOutput<String>('service');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ServiceBinding] resource's state with the given [name] and [id].
  static ServiceBinding get(
    String name,
    pulumi.Input<String> id, {
    ServiceBindingState? state,
  }) {
    return ServiceBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/serviceBinding:ServiceBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    service = registerOutput<String>('service');
    updateTime = registerOutput<String>('updateTime');
  }
}
