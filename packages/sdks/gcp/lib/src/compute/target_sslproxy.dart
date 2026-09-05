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
/// const defaultCertificateMap = new gcp.certificatemanager.CertificateMap("default", {
///     name: "certificate-map-test",
///     description: "My acceptance test certificate map",
/// });
/// const _default = new gcp.compute.TargetSSLProxy("default", {
///     name: "test-proxy",
///     backendService: defaultBackendService.id,
///     sslCertificates: [defaultSSLCertificate.id],
///     certificateMap: pulumi.interpolate`//certificatemanager.googleapis.com/${defaultCertificateMap.id}`,
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
/// default_certificate_map = gcp.certificatemanager.CertificateMap("default",
///     name="certificate-map-test",
///     description="My acceptance test certificate map")
/// default = gcp.compute.TargetSSLProxy("default",
///     name="test-proxy",
///     backend_service=default_backend_service.id,
///     ssl_certificates=[default_ssl_certificate.id],
///     certificate_map=default_certificate_map.id.apply(lambda id: f"//certificatemanager.googleapis.com/{id}"))
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
///     var defaultCertificateMap = new Gcp.CertificateManager.CertificateMap("default", new()
///     {
///         Name = "certificate-map-test",
///         Description = "My acceptance test certificate map",
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
///         CertificateMap = defaultCertificateMap.Id.Apply(id => $"//certificatemanager.googleapis.com/{id}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
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
/// 			HealthChecks: defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCertificateMap, err := certificatemanager.NewCertificateMapResource(ctx, "default", &certificatemanager.CertificateMapResourceArgs{
/// 			Name:        pulumi.String("certificate-map-test"),
/// 			Description: pulumi.String("My acceptance test certificate map"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetSSLProxy(ctx, "default", &compute.TargetSSLProxyArgs{
/// 			Name:           pulumi.String("test-proxy"),
/// 			BackendService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 			SslCertificates: pulumi.StringArray{
/// 				defaultSSLCertificate.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			CertificateMap: defaultCertificateMap.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 				return fmt.Sprintf("//certificatemanager.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_compute_targetsslproxy" "default" {
///   name             = "test-proxy"
///   backend_service  = gcp_compute_backendservice.default.id
///   ssl_certificates = [gcp_compute_sslcertificate.default.id]
///   certificate_map  ="//certificatemanager.googleapis.com/${gcp_certificatemanager_certificatemap.default.id}"
/// }
/// resource "gcp_compute_sslcertificate" "default" {
///   name        = "default-cert"
///   private_key = file("path/to/private.key")
///   certificate = file("path/to/certificate.crt")
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   protocol      = "SSL"
///   health_checks = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name               = "health-check"
///   check_interval_sec = 1
///   timeout_sec        = 1
///   tcp_health_check = {
///     port = "443"
///   }
/// }
/// resource "gcp_certificatemanager_certificatemap" "default" {
///   name        = "certificate-map-test"
///   description = "My acceptance test certificate map"
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
/// import com.pulumi.gcp.certificatemanager.CertificateMap;
/// import com.pulumi.gcp.certificatemanager.CertificateMapArgs;
/// import com.pulumi.gcp.compute.TargetSSLProxy;
/// import com.pulumi.gcp.compute.TargetSSLProxyArgs;
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
///         var defaultCertificateMap = new CertificateMap("defaultCertificateMap", CertificateMapArgs.builder()
///             .name("certificate-map-test")
///             .description("My acceptance test certificate map")
///             .build());
///
///         var default_ = new TargetSSLProxy("default", TargetSSLProxyArgs.builder()
///             .name("test-proxy")
///             .backendService(defaultBackendService.id())
///             .sslCertificates(defaultSSLCertificate.id())
///             .certificateMap(defaultCertificateMap.id().applyValue(_id -> String.format("//certificatemanager.googleapis.com/%s", _id)))
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
///       certificateMap: //certificatemanager.googleapis.com/${defaultCertificateMap.id}
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
///   defaultCertificateMap:
///     type: gcp:certificatemanager:CertificateMap
///     name: default
///     properties:
///       name: certificate-map-test
///       description: My acceptance test certificate map
/// ```
///
///
/// ## Import
///
/// TargetSslProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetSslProxies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TargetSslProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default projects/{{project}}/global/targetSslProxies/{{name}}
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default {{project}}/{{name}}
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
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
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    backendService = registerOutput<String>('backendService');
    certificateMap = registerOutput<String?>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
    sslCertificates = registerOutput<List<String>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sslPolicy = registerOutput<String?>('sslPolicy');
  }

  /// Gets an existing [TargetSSLProxy] resource's state with the given [name] and [id].
  static TargetSSLProxy get(
    String name,
    pulumi.Input<String> id, {
    TargetSSLProxyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetSSLProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
    sslCertificates = registerOutput<List<String>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sslPolicy = registerOutput<String?>('sslPolicy');
  }

  /// Creates a typed reference to an existing [TargetSSLProxy] resource.
  TargetSSLProxy.reference(String urn)
    : super(
        'gcp:compute/targetSSLProxy:TargetSSLProxy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backendService = registerOutput<String>('backendService');
    certificateMap = registerOutput<String?>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
    sslCertificates = registerOutput<List<String>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sslPolicy = registerOutput<String?>('sslPolicy');
  }
}
