import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device_response.dart';
import 'device_session_args.dart';

/// POST /v1/projects/{project_id}/deviceSessions
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class DeviceSession extends pulumi.CustomResource {
  /// The timestamp that the session first became ACTIVE.
  late final pulumi.Output<String> activeStartTime;
  /// The requested device
  late final pulumi.Output<AndroidDeviceResponse> androidDevice;
  /// The time that the Session was created.
  late final pulumi.Output<String> createTime;
  /// The title of the DeviceSession to be presented in the UI.
  late final pulumi.Output<String> displayName;
  /// Optional. If the device is still in use at this time, any connections will be ended and the SessionState will transition from ACTIVE to FINISHED.
  late final pulumi.Output<String> expireTime;
  /// The interval of time that this device must be interacted with before it transitions from ACTIVE to TIMEOUT_INACTIVITY.
  late final pulumi.Output<String> inactivityTimeout;
  /// Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Current state of the DeviceSession.
  late final pulumi.Output<String> state;
  /// The historical state transitions of the session_state message including the current session state.
  late final pulumi.Output<List<Map<String, dynamic>>> stateHistories;
  /// Optional. The amount of time that a device will be initially allocated for. This can eventually be extended with the UpdateDeviceSession RPC. Default: 30 minutes.
  late final pulumi.Output<String> ttl;

  /// Creates a new [DeviceSession].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceSession]. {@macro pulumi_testing_v1_device_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceSession(
    String name, {
    DeviceSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:testing/v1:DeviceSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeStartTime = registerOutput<String>('activeStartTime');
    androidDevice = registerOutput<AndroidDeviceResponse>('androidDevice', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AndroidDeviceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    expireTime = registerOutput<String>('expireTime');
    inactivityTimeout = registerOutput<String>('inactivityTimeout');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    stateHistories = registerOutput<List<Map<String, dynamic>>>('stateHistories');
    ttl = registerOutput<String>('ttl');
  }
}
