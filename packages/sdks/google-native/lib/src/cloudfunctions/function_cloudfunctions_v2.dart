import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config_response.dart';
import 'event_trigger_response_cloudfunctions_v2.dart';
import 'function_cloudfunctions_v2_args.dart';
import 'google_cloud_functions_v2_state_message_response.dart';
import 'service_config_response.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionCloudfunctionsV2 extends pulumi.CustomResource {
  /// Describes the Build step of the function that builds a container from the given source.
  late final pulumi.Output<BuildConfigResponse> buildConfig;
  /// User-provided description of a function.
  late final pulumi.Output<String> description;
  /// Describe whether the function is 1st Gen or 2nd Gen.
  late final pulumi.Output<String> environment;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  late final pulumi.Output<EventTriggerResponseCloudfunctionsV2> eventTrigger;
  /// The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String?> functionId;
  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  late final pulumi.Output<String> kmsKeyName;
  /// Labels associated with this Cloud Function.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;
  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  late final pulumi.Output<ServiceConfigResponse> serviceConfig;
  /// State of the function.
  late final pulumi.Output<String> state;
  /// State Messages for this Cloud Function.
  late final pulumi.Output<List<GoogleCloudFunctionsV2StateMessageResponse>> stateMessages;
  /// The last update timestamp of a Cloud Function.
  late final pulumi.Output<String> updateTime;
  /// The deployed url for the function.
  late final pulumi.Output<String> url;

  /// Creates a new [FunctionCloudfunctionsV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionCloudfunctionsV2]. {@macro pulumi_cloudfunctions_v2_function_cloudfunctions_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionCloudfunctionsV2(
    String name, {
    FunctionCloudfunctionsV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudfunctions/v2:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    buildConfig = registerOutput<BuildConfigResponse>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    environment = registerOutput<String>('environment');
    eventTrigger = registerOutput<EventTriggerResponseCloudfunctionsV2>('eventTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventTriggerResponseCloudfunctionsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionId = registerOutput<String?>('functionId');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    serviceConfig = registerOutput<ServiceConfigResponse>('serviceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    stateMessages = registerOutput<List<GoogleCloudFunctionsV2StateMessageResponse>>('stateMessages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudFunctionsV2StateMessageResponse>(guardedValue, (value) => GoogleCloudFunctionsV2StateMessageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [FunctionCloudfunctionsV2] resource.
  FunctionCloudfunctionsV2.reference(String urn)
    : super(
        'google-native:cloudfunctions/v2:Function',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    buildConfig = registerOutput<BuildConfigResponse>('buildConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    environment = registerOutput<String>('environment');
    eventTrigger = registerOutput<EventTriggerResponseCloudfunctionsV2>('eventTrigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventTriggerResponseCloudfunctionsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionId = registerOutput<String?>('functionId');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    serviceConfig = registerOutput<ServiceConfigResponse>('serviceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    stateMessages = registerOutput<List<GoogleCloudFunctionsV2StateMessageResponse>>('stateMessages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudFunctionsV2StateMessageResponse>(guardedValue, (value) => GoogleCloudFunctionsV2StateMessageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
    url = registerOutput<String>('url');
  }
}
