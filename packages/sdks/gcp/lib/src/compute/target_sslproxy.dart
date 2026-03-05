import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_sslproxy_args.dart';
import 'target_sslproxy_state.dart';

/// Represents a TargetSslProxy resource, which is used by one or more
/// global forwarding rule to route incoming SSL requests to a backend
/// service.
///
///
/// To get more information about TargetSslProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetSslProxies)
/// * How-to Guides
/// * [Setting Up SSL proxy for Google Cloud Load Balancing](https://cloud.google.com/compute/docs/load-balancing/tcp-ssl/)
///
/// ## Example Usage
///
/// ### Target Ssl Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const defaultSSLCertificate = new gcp.compute.SSLCertificate("default", {
///     name: "default-cert",
///     privateKey: std.file({
///         input: "path/to/private.key",
///     }).then(invoke => invoke.result),
///     certificate: std.file({
///         input: "path/to/certificate.crt",
///     }).then(invoke => invoke.result),
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 443,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     protocol: "SSL",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const _default = new gcp.compute.TargetSSLProxy("default", {
///     name: "test-proxy",
///     backendService: defaultBackendService.id,
///     sslCertificates: [defaultSSLCertificate.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default_ssl_certificate = gcp.compute.SSLCertificate("default",
///     name="default-cert",
///     private_key=std.file(input="path/to/private.key").result,
///     certificate=std.file(input="path/to/certificate.crt").result)
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 443,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     protocol="SSL",
///     health_checks=default_health_check.id)
/// default = gcp.compute.TargetSSLProxy("default",
///     name="test-proxy",
///     backend_service=default_backend_service.id,
///     ssl_certificates=[default_ssl_certificate.id])
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
///     var defaultSSLCertificate = new Gcp.Compute.SSLCertificate("default", new()
///     {
///         Name = "default-cert",
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "path/to/private.key",
///         }).Apply(invoke => invoke.Result),
///         Certificate = Std.File.Invoke(new()
///         {
///             Input = "path/to/certificate.crt",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "SSL",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var @default = new Gcp.Compute.TargetSSLProxy("default", new()
///     {
///         Name = "test-proxy",
///         BackendService = defaultBackendService.Id,
///         SslCertificates = new[]
///         {
///             defaultSSLCertificate.Id,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/private.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "path/to/certificate.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSSLCertificate, err := compute.NewSSLCertificate(ctx, "default", &compute.SSLCertificateArgs{
/// 			Name:        pulumi.String("default-cert"),
/// 			PrivateKey:  pulumi.String(invokeFile.Result),
/// 			Certificate: pulumi.String(invokeFile1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			Protocol:     pulumi.String("SSL"),
/// 			HealthChecks: defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetSSLProxy(ctx, "default", &compute.TargetSSLProxyArgs{
/// 			Name:           pulumi.String("test-proxy"),
/// 			BackendService: defaultBackendService.ID(),
/// 			SslCertificates: pulumi.StringArray{
/// 				defaultSSLCertificate.ID(),
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
/// import com.pulumi.gcp.compute.SSLCertificate;
/// import com.pulumi.gcp.compute.SSLCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.TargetSSLProxy;
/// import com.pulumi.gcp.compute.TargetSSLProxyArgs;
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
///         var defaultSSLCertificate = new SSLCertificate("defaultSSLCertificate", SSLCertificateArgs.builder()
///             .name("default-cert")
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/private.key")
///                 .build()).result())
///             .certificate(StdFunctions.file(FileArgs.builder()
///                 .input("path/to/certificate.crt")
///                 .build()).result())
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("SSL")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var default_ = new TargetSSLProxy("default", TargetSSLProxyArgs.builder()
///             .name("test-proxy")
///             .backendService(defaultBackendService.id())
///             .sslCertificates(defaultSSLCertificate.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetSSLProxy
///     properties:
///       name: test-proxy
///       backendService: ${defaultBackendService.id}
///       sslCertificates:
///         - ${defaultSSLCertificate.id}
///   defaultSSLCertificate:
///     type: gcp:compute:SSLCertificate
///     name: default
///     properties:
///       name: default-cert
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/private.key
///           return: result
///       certificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: path/to/certificate.crt
///           return: result
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: SSL
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '443'
/// ```
///
///
/// ## Import
///
/// TargetSslProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetSslProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetSslProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default projects/{{project}}/global/targetSslProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default {{name}}
/// ```
class TargetSSLProxy extends pulumi.CustomResource {
  /// A reference to the BackendService resource.
  late final pulumi.Output<String> backendService;
  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field can only be set for global target proxies.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  late final pulumi.Output<String?> certificateMap;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  late final pulumi.Output<String?> proxyHeader;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A list of SslCertificate resources that are used to authenticate
  /// connections between users and the load balancer. At least one
  /// SSL certificate must be specified.
  late final pulumi.Output<List<String>?> sslCertificates;
  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetSslProxy resource. If not set, the TargetSslProxy
  /// resource will not have any SSL policy configured.
  late final pulumi.Output<String?> sslPolicy;

  /// Creates a new [TargetSSLProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetSSLProxy]. {@macro pulumi_compute_target_sslproxy_target_sslproxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetSSLProxy(
    String name, {
    TargetSSLProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetSSLProxy:TargetSSLProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendService = registerOutput<String>('backendService');
    certificateMap = registerOutput<String?>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
    sslCertificates = registerOutput<List<String>?>('sslCertificates');
    sslPolicy = registerOutput<String?>('sslPolicy');
  }

  /// Gets an existing [TargetSSLProxy] resource's state with the given [name] and [id].
  static TargetSSLProxy get(
    String name,
    pulumi.Input<String> id, {
    TargetSSLProxyState? state,
  }) {
    return TargetSSLProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetSSLProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetSSLProxy:TargetSSLProxy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendService = registerOutput<String>('backendService');
    certificateMap = registerOutput<String?>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
    sslCertificates = registerOutput<List<String>?>('sslCertificates');
    sslPolicy = registerOutput<String?>('sslPolicy');
  }
}
