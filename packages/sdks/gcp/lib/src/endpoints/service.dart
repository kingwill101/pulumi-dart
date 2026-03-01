import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_api.dart';
import 'service_args.dart';
import 'service_endpoint.dart';
import 'service_state.dart';

/// This resource creates and rolls out a Cloud Endpoints service using OpenAPI or gRPC.  View the relevant docs for [OpenAPI](https://cloud.google.com/endpoints/docs/openapi/) and [gRPC](https://cloud.google.com/endpoints/docs/grpc/).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const openapiService = new gcp.endpoints.Service("openapi_service", {
///     serviceName: "api-name.endpoints.project-id.cloud.goog",
///     project: "project-id",
///     openapiConfig: std.file({
///         input: "openapi_spec.yml",
///     }).then(invoke => invoke.result),
/// });
/// const grpcService = new gcp.endpoints.Service("grpc_service", {
///     serviceName: "api-name.endpoints.project-id.cloud.goog",
///     project: "project-id",
///     grpcConfig: std.file({
///         input: "service_spec.yml",
///     }).then(invoke => invoke.result),
///     protocOutputBase64: std.filebase64({
///         input: "compiled_descriptor_file.pb",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// openapi_service = gcp.endpoints.Service("openapi_service",
///     service_name="api-name.endpoints.project-id.cloud.goog",
///     project="project-id",
///     openapi_config=std.file(input="openapi_spec.yml").result)
/// grpc_service = gcp.endpoints.Service("grpc_service",
///     service_name="api-name.endpoints.project-id.cloud.goog",
///     project="project-id",
///     grpc_config=std.file(input="service_spec.yml").result,
///     protoc_output_base64=std.filebase64(input="compiled_descriptor_file.pb").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var openapiService = new Gcp.Endpoints.Service("openapi_service", new()
///     {
///         ServiceName = "api-name.endpoints.project-id.cloud.goog",
///         Project = "project-id",
///         OpenapiConfig = Std.File.Invoke(new()
///         {
///             Input = "openapi_spec.yml",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var grpcService = new Gcp.Endpoints.Service("grpc_service", new()
///     {
///         ServiceName = "api-name.endpoints.project-id.cloud.goog",
///         Project = "project-id",
///         GrpcConfig = Std.File.Invoke(new()
///         {
///             Input = "service_spec.yml",
///         }).Apply(invoke => invoke.Result),
///         ProtocOutputBase64 = Std.Filebase64.Invoke(new()
///         {
///             Input = "compiled_descriptor_file.pb",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/endpoints"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "openapi_spec.yml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = endpoints.NewService(ctx, "openapi_service", &endpoints.ServiceArgs{
/// 			ServiceName:   pulumi.String("api-name.endpoints.project-id.cloud.goog"),
/// 			Project:       pulumi.String("project-id"),
/// 			OpenapiConfig: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "service_spec.yml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase642, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "compiled_descriptor_file.pb",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = endpoints.NewService(ctx, "grpc_service", &endpoints.ServiceArgs{
/// 			ServiceName:        pulumi.String("api-name.endpoints.project-id.cloud.goog"),
/// 			Project:            pulumi.String("project-id"),
/// 			GrpcConfig:         pulumi.String(invokeFile1.Result),
/// 			ProtocOutputBase64: pulumi.String(invokeFilebase642.Result),
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
/// import com.pulumi.gcp.endpoints.Service;
/// import com.pulumi.gcp.endpoints.ServiceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var openapiService = new Service("openapiService", ServiceArgs.builder()
///             .serviceName("api-name.endpoints.project-id.cloud.goog")
///             .project("project-id")
///             .openapiConfig(StdFunctions.file(FileArgs.builder()
///                 .input("openapi_spec.yml")
///                 .build()).result())
///             .build());
///
///         var grpcService = new Service("grpcService", ServiceArgs.builder()
///             .serviceName("api-name.endpoints.project-id.cloud.goog")
///             .project("project-id")
///             .grpcConfig(StdFunctions.file(FileArgs.builder()
///                 .input("service_spec.yml")
///                 .build()).result())
///             .protocOutputBase64(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("compiled_descriptor_file.pb")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   openapiService:
///     type: gcp:endpoints:Service
///     name: openapi_service
///     properties:
///       serviceName: api-name.endpoints.project-id.cloud.goog
///       project: project-id
///       openapiConfig:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: openapi_spec.yml
///           return: result
///   grpcService:
///     type: gcp:endpoints:Service
///     name: grpc_service
///     properties:
///       serviceName: api-name.endpoints.project-id.cloud.goog
///       project: project-id
///       grpcConfig:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: service_spec.yml
///           return: result
///       protocOutputBase64:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: compiled_descriptor_file.pb
///           return: result
/// ```
///
///
/// The example in `examples/endpoints_on_compute_engine` shows the API from the quickstart running on a Compute Engine VM and reachable through Cloud Endpoints, which may also be useful.
///
/// ## Import
///
/// This resource does not support import.
class Service extends pulumi.CustomResource {
  /// A list of API objects; structure is documented below.
  late final pulumi.Output<List<ServiceApi>> apis;
  /// The autogenerated ID for the configuration that is rolled out as part of the creation of this resource.  Must be provided to compute engine instances as a tag.
  late final pulumi.Output<String> configId;
  /// The address at which the service can be found - usually the same as the service name.
  late final pulumi.Output<String> dnsAddress;
  /// A list of Endpoint objects; structure is documented below.
  late final pulumi.Output<List<ServiceEndpoint>> endpoints;
  /// The full text of the Service Config YAML file (Example located [here](https://github.com/GoogleCloudPlatform/python-docs-samples/blob/main/endpoints/bookstore-grpc/api_config.yaml)).
  /// If provided, must also provide `protoc_output_base64`.  `open_api` config must *not* be provided.
  late final pulumi.Output<String?> grpcConfig;
  /// The full text of the OpenAPI YAML configuration as described [here](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/2.0.md).
  /// Either this, or *both* of `grpc_config` and `protoc_output_base64` must be specified.
  late final pulumi.Output<String?> openapiConfig;
  /// The project ID that the service belongs to.  If not provided, provider project is used.
  late final pulumi.Output<String> project;
  /// The full contents of the Service Descriptor File generated by protoc.  This should be a compiled .pb file, base64-encoded.
  late final pulumi.Output<String?> protocOutputBase64;
  /// The name of the service.  Usually of the form `$apiname.endpoints.$projectid.cloud.goog`.
  ///
  /// - - -
  late final pulumi.Output<String> serviceName;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_endpoints_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:endpoints/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apis = registerOutput<List<ServiceApi>>('apis');
    this.configId = registerOutput<String>('configId');
    this.dnsAddress = registerOutput<String>('dnsAddress');
    this.endpoints = registerOutput<List<ServiceEndpoint>>('endpoints');
    this.grpcConfig = registerOutput<String?>('grpcConfig');
    this.openapiConfig = registerOutput<String?>('openapiConfig');
    this.project = registerOutput<String>('project');
    this.protocOutputBase64 = registerOutput<String?>('protocOutputBase64');
    this.serviceName = registerOutput<String>('serviceName');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:endpoints/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apis = registerOutput<List<ServiceApi>>('apis');
    this.configId = registerOutput<String>('configId');
    this.dnsAddress = registerOutput<String>('dnsAddress');
    this.endpoints = registerOutput<List<ServiceEndpoint>>('endpoints');
    this.grpcConfig = registerOutput<String?>('grpcConfig');
    this.openapiConfig = registerOutput<String?>('openapiConfig');
    this.project = registerOutput<String>('project');
    this.protocOutputBase64 = registerOutput<String?>('protocOutputBase64');
    this.serviceName = registerOutput<String>('serviceName');
  }
}
