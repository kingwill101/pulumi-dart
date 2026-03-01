import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_signed_url_key_args.dart';
import 'backend_service_signed_url_key_state.dart';

/// A key for signing Cloud CDN signed URLs for Backend Services.
///
///
/// To get more information about BackendServiceSignedUrlKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices)
/// * How-to Guides
/// * [Using Signed URLs](https://cloud.google.com/cdn/docs/using-signed-urls/)
///
///
///
/// ## Example Usage
///
/// ### Backend Service Signed Url Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const urlSignature = new random.index.Id("url_signature", {byteLength: 16});
/// const webserver = new gcp.compute.InstanceTemplate("webserver", {
///     name: "standard-webserver",
///     machineType: "e2-medium",
///     networkInterfaces: [{
///         network: "default",
///     }],
///     disks: [{
///         sourceImage: "debian-cloud/debian-11",
///         autoDelete: true,
///         boot: true,
///     }],
/// });
/// const webservers = new gcp.compute.InstanceGroupManager("webservers", {
///     name: "my-webservers",
///     versions: [{
///         instanceTemplate: webserver.id,
///         name: "primary",
///     }],
///     baseInstanceName: "webserver",
///     zone: "us-central1-f",
///     targetSize: 1,
/// });
/// const _default = new gcp.compute.HttpHealthCheck("default", {
///     name: "test",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const exampleBackend = new gcp.compute.BackendService("example_backend", {
///     name: "my-backend-service",
///     description: "Our company website",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     enableCdn: true,
///     backends: [{
///         group: webservers.instanceGroup,
///     }],
///     healthChecks: _default.id,
/// });
/// const backendKey = new gcp.compute.BackendServiceSignedUrlKey("backend_key", {
///     name: "test-key",
///     keyValue: urlSignature.b64Url,
///     backendService: exampleBackend.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// url_signature = random.index.Id("url_signature", byte_length=16)
/// webserver = gcp.compute.InstanceTemplate("webserver",
///     name="standard-webserver",
///     machine_type="e2-medium",
///     network_interfaces=[{
///         "network": "default",
///     }],
///     disks=[{
///         "source_image": "debian-cloud/debian-11",
///         "auto_delete": True,
///         "boot": True,
///     }])
/// webservers = gcp.compute.InstanceGroupManager("webservers",
///     name="my-webservers",
///     versions=[{
///         "instance_template": webserver.id,
///         "name": "primary",
///     }],
///     base_instance_name="webserver",
///     zone="us-central1-f",
///     target_size=1)
/// default = gcp.compute.HttpHealthCheck("default",
///     name="test",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// example_backend = gcp.compute.BackendService("example_backend",
///     name="my-backend-service",
///     description="Our company website",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     enable_cdn=True,
///     backends=[{
///         "group": webservers.instance_group,
///     }],
///     health_checks=default.id)
/// backend_key = gcp.compute.BackendServiceSignedUrlKey("backend_key",
///     name="test-key",
///     key_value=url_signature["b64Url"],
///     backend_service=example_backend.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var urlSignature = new Random.Index.Id("url_signature", new()
///     {
///         ByteLength = 16,
///     });
///
///     var webserver = new Gcp.Compute.InstanceTemplate("webserver", new()
///     {
///         Name = "standard-webserver",
///         MachineType = "e2-medium",
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///     });
///
///     var webservers = new Gcp.Compute.InstanceGroupManager("webservers", new()
///     {
///         Name = "my-webservers",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = webserver.Id,
///                 Name = "primary",
///             },
///         },
///         BaseInstanceName = "webserver",
///         Zone = "us-central1-f",
///         TargetSize = 1,
///     });
///
///     var @default = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "test",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var exampleBackend = new Gcp.Compute.BackendService("example_backend", new()
///     {
///         Name = "my-backend-service",
///         Description = "Our company website",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         EnableCdn = true,
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.BackendServiceBackendArgs
///             {
///                 Group = webservers.InstanceGroup,
///             },
///         },
///         HealthChecks = @default.Id,
///     });
///
///     var backendKey = new Gcp.Compute.BackendServiceSignedUrlKey("backend_key", new()
///     {
///         Name = "test-key",
///         KeyValue = urlSignature.B64Url,
///         BackendService = exampleBackend.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		urlSignature, err := random.NewId(ctx, "url_signature", &random.IdArgs{
/// 			ByteLength: 16,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webserver, err := compute.NewInstanceTemplate(ctx, "webserver", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("standard-webserver"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("debian-cloud/debian-11"),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webservers, err := compute.NewInstanceGroupManager(ctx, "webservers", &compute.InstanceGroupManagerArgs{
/// 			Name: pulumi.String("my-webservers"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: webserver.ID(),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			BaseInstanceName: pulumi.String("webserver"),
/// 			Zone:             pulumi.String("us-central1-f"),
/// 			TargetSize:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("test"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackend, err := compute.NewBackendService(ctx, "example_backend", &compute.BackendServiceArgs{
/// 			Name:        pulumi.String("my-backend-service"),
/// 			Description: pulumi.String("Our company website"),
/// 			PortName:    pulumi.String("http"),
/// 			Protocol:    pulumi.String("HTTP"),
/// 			TimeoutSec:  pulumi.Int(10),
/// 			EnableCdn:   pulumi.Bool(true),
/// 			Backends: compute.BackendServiceBackendArray{
/// 				&compute.BackendServiceBackendArgs{
/// 					Group: webservers.InstanceGroup,
/// 				},
/// 			},
/// 			HealthChecks: _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendServiceSignedUrlKey(ctx, "backend_key", &compute.BackendServiceSignedUrlKeyArgs{
/// 			Name:           pulumi.String("test-key"),
/// 			KeyValue:       urlSignature.B64Url,
/// 			BackendService: exampleBackend.Name,
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.BackendServiceSignedUrlKey;
/// import com.pulumi.gcp.compute.BackendServiceSignedUrlKeyArgs;
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
///         var urlSignature = new Id("urlSignature", IdArgs.builder()
///             .byteLength(16)
///             .build());
///
///         var webserver = new InstanceTemplate("webserver", InstanceTemplateArgs.builder()
///             .name("standard-webserver")
///             .machineType("e2-medium")
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("debian-cloud/debian-11")
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .build());
///
///         var webservers = new InstanceGroupManager("webservers", InstanceGroupManagerArgs.builder()
///             .name("my-webservers")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(webserver.id())
///                 .name("primary")
///                 .build())
///             .baseInstanceName("webserver")
///             .zone("us-central1-f")
///             .targetSize(1)
///             .build());
///
///         var default_ = new HttpHealthCheck("default", HttpHealthCheckArgs.builder()
///             .name("test")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var exampleBackend = new BackendService("exampleBackend", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .description("Our company website")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .enableCdn(true)
///             .backends(BackendServiceBackendArgs.builder()
///                 .group(webservers.instanceGroup())
///                 .build())
///             .healthChecks(default_.id())
///             .build());
///
///         var backendKey = new BackendServiceSignedUrlKey("backendKey", BackendServiceSignedUrlKeyArgs.builder()
///             .name("test-key")
///             .keyValue(urlSignature.b64Url())
///             .backendService(exampleBackend.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlSignature:
///     type: random:Id
///     name: url_signature
///     properties:
///       byteLength: 16
///   backendKey:
///     type: gcp:compute:BackendServiceSignedUrlKey
///     name: backend_key
///     properties:
///       name: test-key
///       keyValue: ${urlSignature.b64Url}
///       backendService: ${exampleBackend.name}
///   exampleBackend:
///     type: gcp:compute:BackendService
///     name: example_backend
///     properties:
///       name: my-backend-service
///       description: Our company website
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       enableCdn: true
///       backends:
///         - group: ${webservers.instanceGroup}
///       healthChecks: ${default.id}
///   webservers:
///     type: gcp:compute:InstanceGroupManager
///     properties:
///       name: my-webservers
///       versions:
///         - instanceTemplate: ${webserver.id}
///           name: primary
///       baseInstanceName: webserver
///       zone: us-central1-f
///       targetSize: 1
///   webserver:
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: standard-webserver
///       machineType: e2-medium
///       networkInterfaces:
///         - network: default
///       disks:
///         - sourceImage: debian-cloud/debian-11
///           autoDelete: true
///           boot: true
///   default:
///     type: gcp:compute:HttpHealthCheck
///     properties:
///       name: test
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class BackendServiceSignedUrlKey extends pulumi.CustomResource {
  /// The backend service this signed URL key belongs.
  late final pulumi.Output<String> backendService;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> keyValue;
  /// Name of the signed URL key.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [BackendServiceSignedUrlKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendServiceSignedUrlKey]. {@macro pulumi_compute_backend_service_signed_url_key_backend_service_signed_url_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendServiceSignedUrlKey(
    String name, {
    BackendServiceSignedUrlKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendServiceSignedUrlKey:BackendServiceSignedUrlKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendService = registerOutput<String>('backendService');
    this.keyValue = registerOutput<String>('keyValue');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [BackendServiceSignedUrlKey] resource's state with the given [name] and [id].
  static BackendServiceSignedUrlKey get(
    String name,
    pulumi.Input<String> id, {
    BackendServiceSignedUrlKeyState? state,
  }) {
    return BackendServiceSignedUrlKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendServiceSignedUrlKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendServiceSignedUrlKey:BackendServiceSignedUrlKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendService = registerOutput<String>('backendService');
    this.keyValue = registerOutput<String>('keyValue');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
