import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_environment_request_args.dart';

/// Creates an open request for a Pulumi ESC environment that has gated opens enabled. When an environment has open gates configured, opening the environment requires an approval workflow. This endpoint initiates that process by creating an open request, and also creates corresponding open requests for each imported environment that has open gates. Requires the Approvals feature to be enabled for the organization. Returns 400 if the environment does not have gated opens.
class OpenEnvironmentRequest extends pulumi.CustomResource {
  /// Total duration that the resulting grant can be used to access the environment open endpoint (after first open)
  late final pulumi.Output<int> accessDurationSeconds;
  /// Time from application of the request until the resulting grant expires
  late final pulumi.Output<int> grantExpirationSeconds;

  /// Creates a new [OpenEnvironmentRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenEnvironmentRequest]. {@macro pulumi_api_esc_open_environment_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenEnvironmentRequest(
    String name, {
    OpenEnvironmentRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:OpenEnvironmentRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessDurationSeconds = registerOutput<int>('accessDurationSeconds');
    grantExpirationSeconds = registerOutput<int>('grantExpirationSeconds');
  }
}
