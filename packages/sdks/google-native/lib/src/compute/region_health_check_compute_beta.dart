import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpchealth_check_response_compute_beta.dart';
import 'health_check_log_config_response_compute_beta.dart';
import 'http2_health_check_response_compute_beta.dart';
import 'httphealth_check_response_compute_beta.dart';
import 'httpshealth_check_response_compute_beta.dart';
import 'region_health_check_compute_beta_args.dart';
import 'sslhealth_check_response_compute_beta.dart';
import 'tcphealth_check_response_compute_beta.dart';

/// Creates a HealthCheck resource in the specified project using the data included in the request.
class RegionHealthCheckComputeBeta extends pulumi.CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  late final pulumi.Output<int> checkIntervalSec;
  /// Creation timestamp in 3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  late final pulumi.Output<GRPCHealthCheckResponseComputeBeta> grpcHealthCheck;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  late final pulumi.Output<int> healthyThreshold;
  late final pulumi.Output<HTTP2HealthCheckResponseComputeBeta> http2HealthCheck;
  late final pulumi.Output<HTTPHealthCheckResponseComputeBeta> httpHealthCheck;
  late final pulumi.Output<HTTPSHealthCheckResponseComputeBeta> httpsHealthCheck;
  /// Type of the resource.
  late final pulumi.Output<String> kind;
  /// Configure logging on this health check.
  late final pulumi.Output<HealthCheckLogConfigResponseComputeBeta> logConfig;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  late final pulumi.Output<SSLHealthCheckResponseComputeBeta> sslHealthCheck;
  late final pulumi.Output<TCPHealthCheckResponseComputeBeta> tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  late final pulumi.Output<int> timeoutSec;
  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  late final pulumi.Output<String> type;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  late final pulumi.Output<int> unhealthyThreshold;

  /// Creates a new [RegionHealthCheckComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionHealthCheckComputeBeta]. {@macro pulumi_compute_beta_region_health_check_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionHealthCheckComputeBeta(
    String name, {
    RegionHealthCheckComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:RegionHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkIntervalSec = registerOutput<int>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    grpcHealthCheck = registerOutput<GRPCHealthCheckResponseComputeBeta>('grpcHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GRPCHealthCheckResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthyThreshold = registerOutput<int>('healthyThreshold');
    http2HealthCheck = registerOutput<HTTP2HealthCheckResponseComputeBeta>('http2HealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HTTP2HealthCheckResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpHealthCheck = registerOutput<HTTPHealthCheckResponseComputeBeta>('httpHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HTTPHealthCheckResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsHealthCheck = registerOutput<HTTPSHealthCheckResponseComputeBeta>('httpsHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HTTPSHealthCheckResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    logConfig = registerOutput<HealthCheckLogConfigResponseComputeBeta>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HealthCheckLogConfigResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    sslHealthCheck = registerOutput<SSLHealthCheckResponseComputeBeta>('sslHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SSLHealthCheckResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tcpHealthCheck = registerOutput<TCPHealthCheckResponseComputeBeta>('tcpHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TCPHealthCheckResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeoutSec = registerOutput<int>('timeoutSec');
    type = registerOutput<String>('type');
    unhealthyThreshold = registerOutput<int>('unhealthyThreshold');
  }
}
