import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_health_check_args.dart';
import 'http_health_check_state.dart';

/// An HttpHealthCheck resource. This resource defines a template for how
/// individual VMs should be checked for health, via HTTP.
///
/// &gt; **Note:** gcp.compute.HttpHealthCheck is a legacy health check.
/// The newer [gcp.compute.HealthCheck](https://www.terraform.io/docs/providers/google/r/compute_health_check.html)
/// should be preferred for all uses except
/// [Network Load Balancers](https://cloud.google.com/compute/docs/load-balancing/network/)
/// which still require the legacy version.
///
///
/// To get more information about HttpHealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/httpHealthChecks)
/// * How-to Guides
/// * [Adding Health Checks](https://cloud.google.com/compute/docs/load-balancing/health-checks#legacy_health_checks)
///
/// ## Example Usage
///
/// ### Http Health Check Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HttpHealthCheck("default", {
///     name: "authentication-health-check",
///     requestPath: "/health_check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HttpHealthCheck("default",
///     name="authentication-health-check",
///     request_path="/health_check",
///     timeout_sec=1,
///     check_interval_sec=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "authentication-health-check",
///         RequestPath = "/health_check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
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
/// 		_, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("authentication-health-check"),
/// 			RequestPath:      pulumi.String("/health_check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
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
/// resource "gcp_compute_httphealthcheck" "default" {
///   name               = "authentication-health-check"
///   request_path       = "/health_check"
///   timeout_sec        = 1
///   check_interval_sec = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
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
///         var default_ = new HttpHealthCheck("default", HttpHealthCheckArgs.builder()
///             .name("authentication-health-check")
///             .requestPath("/health_check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:HttpHealthCheck
///     properties:
///       name: authentication-health-check
///       requestPath: /health_check
///       timeoutSec: 1
///       checkIntervalSec: 1
/// ```
///
///
/// ## Import
///
/// HttpHealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/httpHealthChecks/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, HttpHealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/httpHealthCheck:HttpHealthCheck default projects/{{project}}/global/httpHealthChecks/{{name}}
/// $ pulumi import gcp:compute/httpHealthCheck:HttpHealthCheck default {{project}}/{{name}}
/// $ pulumi import gcp:compute/httpHealthCheck:HttpHealthCheck default {{name}}
/// ```
class HttpHealthCheck extends pulumi.CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  late final pulumi.Output<int?> checkIntervalSec;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;
  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  late final pulumi.Output<int?> healthyThreshold;
  /// The value of the host header in the HTTP health check request. If
  /// left empty (default value), the public IP on behalf of which this
  /// health check is performed will be used.
  late final pulumi.Output<String?> host;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The TCP port number for the HTTP health check request.
  /// The default value is 80.
  late final pulumi.Output<int?> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The request path of the HTTP health check request.
  /// The default value is /.
  late final pulumi.Output<String?> requestPath;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  late final pulumi.Output<int?> timeoutSec;
  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  late final pulumi.Output<int?> unhealthyThreshold;

  /// Creates a new [HttpHealthCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpHealthCheck]. {@macro pulumi_compute_http_health_check_http_health_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpHealthCheck(
    String name, {
    HttpHealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/httpHealthCheck:HttpHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    host = registerOutput<String?>('host');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    requestPath = registerOutput<String?>('requestPath');
    selfLink = registerOutput<String>('selfLink');
    timeoutSec = registerOutput<int?>('timeoutSec');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }

  /// Gets an existing [HttpHealthCheck] resource's state with the given [name] and [id].
  static HttpHealthCheck get(
    String name,
    pulumi.Input<String> id, {
    HttpHealthCheckState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HttpHealthCheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HttpHealthCheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/httpHealthCheck:HttpHealthCheck',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    host = registerOutput<String?>('host');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    requestPath = registerOutput<String?>('requestPath');
    selfLink = registerOutput<String>('selfLink');
    timeoutSec = registerOutput<int?>('timeoutSec');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }

  /// Creates a typed reference to an existing [HttpHealthCheck] resource.
  HttpHealthCheck.reference(String urn)
    : super(
        'gcp:compute/httpHealthCheck:HttpHealthCheck',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    host = registerOutput<String?>('host');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    requestPath = registerOutput<String?>('requestPath');
    selfLink = registerOutput<String>('selfLink');
    timeoutSec = registerOutput<int?>('timeoutSec');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }
}
