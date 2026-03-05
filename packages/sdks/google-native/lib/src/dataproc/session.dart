import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_response.dart';
import 'jupyter_config_response.dart';
import 'runtime_config_response.dart';
import 'runtime_info_response.dart';
import 'session_args.dart';

/// Create an interactive session asynchronously.
class Session extends pulumi.CustomResource {
  /// The time when the session was created.
  late final pulumi.Output<String> createTime;

  /// The email address of the user who created the session.
  late final pulumi.Output<String> creator;

  /// Optional. Environment configuration for the session execution.
  late final pulumi.Output<EnvironmentConfigResponse> environmentConfig;

  /// Optional. Jupyter session config.
  late final pulumi.Output<JupyterConfigResponse> jupyterSession;

  /// Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a session.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the session.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A unique ID used to identify the request. If the service receives two CreateSessionRequests (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateSessionRequest)s with the same ID, the second request is ignored, and the first Session is created and stored in the backend.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// Optional. Runtime configuration for the session execution.
  late final pulumi.Output<RuntimeConfigResponse> runtimeConfig;

  /// Runtime information about session execution.
  late final pulumi.Output<RuntimeInfoResponse> runtimeInfo;

  /// Required. The ID to use for the session, which becomes the final component of the session's resource name.This value must be 4-63 characters. Valid characters are /a-z-/.
  late final pulumi.Output<String> sessionId;

  /// Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id] * projects/[project_id]/locations/[dataproc_region]/sessionTemplates/[template_id]The template must be in the same project and Dataproc region as the session.
  late final pulumi.Output<String> sessionTemplate;

  /// A state of the session.
  late final pulumi.Output<String> state;

  /// Historical state information for the session.
  late final pulumi.Output<List<Map<String, dynamic>>> stateHistory;

  /// Session state details, such as the failure description if the state is FAILED.
  late final pulumi.Output<String> stateMessage;

  /// The time when the session entered the current state.
  late final pulumi.Output<String> stateTime;

  /// Optional. The email address of the user who owns the session.
  late final pulumi.Output<String> user;

  /// A session UUID (Unique Universal Identifier). The service generates this value when it creates the session.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Session].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Session]. {@macro pulumi_dataproc_v1_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Session(
    String name, {
    SessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataproc/v1:Session',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    environmentConfig = registerOutput<EnvironmentConfigResponse>(
      'environmentConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EnvironmentConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    jupyterSession = registerOutput<JupyterConfigResponse>(
      'jupyterSession',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JupyterConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    runtimeConfig = registerOutput<RuntimeConfigResponse>(
      'runtimeConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RuntimeConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    runtimeInfo = registerOutput<RuntimeInfoResponse>(
      'runtimeInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RuntimeInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sessionId = registerOutput<String>('sessionId');
    sessionTemplate = registerOutput<String>('sessionTemplate');
    state = registerOutput<String>('state');
    stateHistory = registerOutput<List<Map<String, dynamic>>>('stateHistory');
    stateMessage = registerOutput<String>('stateMessage');
    stateTime = registerOutput<String>('stateTime');
    user = registerOutput<String>('user');
    uuid = registerOutput<String>('uuid');
  }
}
