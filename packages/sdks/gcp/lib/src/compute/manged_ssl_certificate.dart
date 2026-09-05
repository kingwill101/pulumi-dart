import 'package:pulumi/pulumi.dart' as pulumi;
import 'manged_ssl_certificate_args.dart';
import 'manged_ssl_certificate_managed.dart';
import 'manged_ssl_certificate_state.dart';

/// An SslCertificate resource, used for HTTPS load balancing.  This resource
/// represents a certificate for which the certificate secrets are created and
/// managed by Google.
///
/// For a resource where you provide the key, see the
/// SSL Certificate resource.
///
///
/// To get more information about ManagedSslCertificate, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/ssl-certificates)
///
/// &gt; **Warning:** This resource should be used with extreme caution!  Provisioning an SSL
/// certificate is complex.  Ensure that you understand the lifecycle of a
/// certificate before attempting complex tasks like cert rotation automatically.
/// This resource will "return" as soon as the certificate object is created,
/// but post-creation the certificate object will go through a "provisioning"
/// process.  The provisioning process can complete only when the domain name
/// for which the certificate is created points to a target pool which, itself,
/// points at the certificate.  Depending on your DNS provider, this may take
/// some time, and migrating from self-managed certificates to Google-managed
/// certificates may entail some downtime while the certificate provisions.
///
/// In conclusion: Be extremely cautious.
///
/// ## Example Usage
///
/// ### Managed Ssl Certificate Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.ManagedSslCertificate("default", {
///     name: "test-cert",
///     managed: {
///         domains: ["sslcert.tf-test.club."],
///     },
/// });
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "http-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultURLMap = new gcp.compute.URLMap("default", {
///     name: "url-map",
///     description: "a description",
///     defaultService: defaultBackendService.id,
///     hostRules: [{
///         hosts: ["sslcert.tf-test.club"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: defaultBackendService.id,
///         pathRules: [{
///             paths: ["/*"],
///             service: defaultBackendService.id,
///         }],
///     }],
/// });
/// const defaultTargetHttpsProxy = new gcp.compute.TargetHttpsProxy("default", {
///     name: "test-proxy",
///     urlMap: defaultURLMap.id,
///     sslCertificates: [_default.id],
/// });
/// const defaultGlobalForwardingRule = new gcp.compute.GlobalForwardingRule("default", {
///     name: "forwarding-rule",
///     target: defaultTargetHttpsProxy.id,
///     portRange: "443",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.ManagedSslCertificate("default",
///     name="test-cert",
///     managed={
///         "domains": ["sslcert.tf-test.club."],
///     })
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="http-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// default_url_map = gcp.compute.URLMap("default",
///     name="url-map",
///     description="a description",
///     default_service=default_backend_service.id,
///     host_rules=[{
///         "hosts": ["sslcert.tf-test.club"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default_backend_service.id,
///         "path_rules": [{
///             "paths": ["/*"],
///             "service": default_backend_service.id,
///         }],
///     }])
/// default_target_https_proxy = gcp.compute.TargetHttpsProxy("default",
///     name="test-proxy",
///     url_map=default_url_map.id,
///     ssl_certificates=[default.id])
/// default_global_forwarding_rule = gcp.compute.GlobalForwardingRule("default",
///     name="forwarding-rule",
///     target=default_target_https_proxy.id,
///     port_range="443")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.ManagedSslCertificate("default", new()
///     {
///         Name = "test-cert",
///         Managed = new Gcp.Compute.Inputs.ManagedSslCertificateManagedArgs
///         {
///             Domains = new[]
///             {
///                 "sslcert.tf-test.club.",
///             },
///         },
///     });
///
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "http-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultURLMap = new Gcp.Compute.URLMap("default", new()
///     {
///         Name = "url-map",
///         Description = "a description",
///         DefaultService = defaultBackendService.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "sslcert.tf-test.club",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = defaultBackendService.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/*",
///                         },
///                         Service = defaultBackendService.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultTargetHttpsProxy = new Gcp.Compute.TargetHttpsProxy("default", new()
///     {
///         Name = "test-proxy",
///         UrlMap = defaultURLMap.Id,
///         SslCertificates = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     var defaultGlobalForwardingRule = new Gcp.Compute.GlobalForwardingRule("default", new()
///     {
///         Name = "forwarding-rule",
///         Target = defaultTargetHttpsProxy.Id,
///         PortRange = "443",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewManagedSslCertificate(ctx, "default", &compute.ManagedSslCertificateArgs{
/// 			Name: pulumi.String("test-cert"),
/// 			Managed: &compute.ManagedSslCertificateManagedArgs{
/// 				Domains: pulumi.StringArray{
/// 					pulumi.String("sslcert.tf-test.club."),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("http-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultURLMap, err := compute.NewURLMap(ctx, "default", &compute.URLMapArgs{
/// 			Name:           pulumi.String("url-map"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("sslcert.tf-test.club"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/*"),
/// 							},
/// 							Service: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTargetHttpsProxy, err := compute.NewTargetHttpsProxy(ctx, "default", &compute.TargetHttpsProxyArgs{
/// 			Name:   pulumi.String("test-proxy"),
/// 			UrlMap: defaultURLMap.ID().ToIDOutput().ToStringOutput(),
/// 			SslCertificates: pulumi.StringArray{
/// 				_default.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewGlobalForwardingRule(ctx, "default", &compute.GlobalForwardingRuleArgs{
/// 			Name:      pulumi.String("forwarding-rule"),
/// 			Target:    defaultTargetHttpsProxy.ID().ToIDOutput().ToStringOutput(),
/// 			PortRange: pulumi.String("443"),
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
/// resource "gcp_compute_managedsslcertificate" "default" {
///   name = "test-cert"
///   managed = {
///     domains = ["sslcert.tf-test.club."]
///   }
/// }
/// resource "gcp_compute_targethttpsproxy" "default" {
///   name             = "test-proxy"
///   url_map          = gcp_compute_urlmap.default.id
///   ssl_certificates = [gcp_compute_managedsslcertificate.default.id]
/// }
/// resource "gcp_compute_urlmap" "default" {
///   name            = "url-map"
///   description     = "a description"
///   default_service = gcp_compute_backendservice.default.id
///   host_rules {
///     hosts        = ["sslcert.tf-test.club"]
///     path_matcher = "allpaths"
///   }
///   path_matchers {
///     name            = "allpaths"
///     default_service = gcp_compute_backendservice.default.id
///     path_rules {
///       paths   = ["/*"]
///       service = gcp_compute_backendservice.default.id
///     }
///   }
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   port_name     = "http"
///   protocol      = "HTTP"
///   timeout_sec   = 10
///   health_checks = gcp_compute_httphealthcheck.default.id
/// }
/// resource "gcp_compute_httphealthcheck" "default" {
///   name               = "http-health-check"
///   request_path       = "/"
///   check_interval_sec = 1
///   timeout_sec        = 1
/// }
/// resource "gcp_compute_globalforwardingrule" "default" {
///   name       = "forwarding-rule"
///   target     = gcp_compute_targethttpsproxy.default.id
///   port_range = 443
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ManagedSslCertificate;
/// import com.pulumi.gcp.compute.ManagedSslCertificateArgs;
/// import com.pulumi.gcp.compute.inputs.ManagedSslCertificateManagedArgs;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherPathRuleArgs;
/// import com.pulumi.gcp.compute.TargetHttpsProxy;
/// import com.pulumi.gcp.compute.TargetHttpsProxyArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
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
///         var default_ = new ManagedSslCertificate("default", ManagedSslCertificateArgs.builder()
///             .name("test-cert")
///             .managed(ManagedSslCertificateManagedArgs.builder()
///                 .domains("sslcert.tf-test.club.")
///                 .build())
///             .build());
///
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("http-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultURLMap = new URLMap("defaultURLMap", URLMapArgs.builder()
///             .name("url-map")
///             .description("a description")
///             .defaultService(defaultBackendService.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("sslcert.tf-test.club")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(defaultBackendService.id())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/*")
///                     .service(defaultBackendService.id())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultTargetHttpsProxy = new TargetHttpsProxy("defaultTargetHttpsProxy", TargetHttpsProxyArgs.builder()
///             .name("test-proxy")
///             .urlMap(defaultURLMap.id())
///             .sslCertificates(default_.id())
///             .build());
///
///         var defaultGlobalForwardingRule = new GlobalForwardingRule("defaultGlobalForwardingRule", GlobalForwardingRuleArgs.builder()
///             .name("forwarding-rule")
///             .target(defaultTargetHttpsProxy.id())
///             .portRange("443")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:ManagedSslCertificate
///     properties:
///       name: test-cert
///       managed:
///         domains:
///           - sslcert.tf-test.club.
///   defaultTargetHttpsProxy:
///     type: gcp:compute:TargetHttpsProxy
///     name: default
///     properties:
///       name: test-proxy
///       urlMap: ${defaultURLMap.id}
///       sslCertificates:
///         - ${default.id}
///   defaultURLMap:
///     type: gcp:compute:URLMap
///     name: default
///     properties:
///       name: url-map
///       description: a description
///       defaultService: ${defaultBackendService.id}
///       hostRules:
///         - hosts:
///             - sslcert.tf-test.club
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${defaultBackendService.id}
///           pathRules:
///             - paths:
///                 - /*
///               service: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: http-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   defaultGlobalForwardingRule:
///     type: gcp:compute:GlobalForwardingRule
///     name: default
///     properties:
///       name: forwarding-rule
///       target: ${defaultTargetHttpsProxy.id}
///       portRange: 443
/// ```
///
/// ## Import
///
/// ManagedSslCertificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/sslCertificates/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ManagedSslCertificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/mangedSslCertificate:MangedSslCertificate default projects/{{project}}/global/sslCertificates/{{name}}
/// $ pulumi import gcp:compute/mangedSslCertificate:MangedSslCertificate default {{project}}/{{name}}
/// $ pulumi import gcp:compute/mangedSslCertificate:MangedSslCertificate default {{name}}
/// ```
class MangedSslCertificate extends pulumi.CustomResource {
  /// The unique identifier for the resource.
  late final pulumi.Output<int> certificateId;
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
  /// Expire time of the certificate in RFC3339 text format.
  late final pulumi.Output<String> expireTime;
  /// Properties relevant to a managed certificate.  These will be used if the
  /// certificate is managed (as indicated by a value of `MANAGED` in `type`).
  /// Structure is documented below.
  late final pulumi.Output<MangedSslCertificateManaged?> managed;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Domains associated with the certificate via Subject Alternative Name.
  late final pulumi.Output<List<String>> subjectAlternativeNames;
  /// Enum field whose value is always `MANAGED` - used to signal to the API
  /// which type this is.
  /// Default value is `MANAGED`.
  /// Possible values are: `MANAGED`.
  late final pulumi.Output<String?> type;

  /// Creates a new [MangedSslCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MangedSslCertificate]. {@macro pulumi_compute_manged_ssl_certificate_manged_ssl_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MangedSslCertificate(
    String name, {
    MangedSslCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/mangedSslCertificate:MangedSslCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    certificateId = registerOutput<int>('certificateId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    managed = registerOutput<MangedSslCertificateManaged?>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MangedSslCertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [MangedSslCertificate] resource's state with the given [name] and [id].
  static MangedSslCertificate get(
    String name,
    pulumi.Input<String> id, {
    MangedSslCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MangedSslCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MangedSslCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/mangedSslCertificate:MangedSslCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateId = registerOutput<int>('certificateId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    managed = registerOutput<MangedSslCertificateManaged?>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MangedSslCertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [MangedSslCertificate] resource.
  MangedSslCertificate.reference(String urn)
    : super(
        'gcp:compute/mangedSslCertificate:MangedSslCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateId = registerOutput<int>('certificateId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    managed = registerOutput<MangedSslCertificateManaged?>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MangedSslCertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String?>('type');
  }
}
