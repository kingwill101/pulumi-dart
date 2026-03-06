// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config_response_cloudfunctions_v2beta.dart';
import 'event_trigger_response_cloudfunctions_v2beta.dart';
import 'google_cloud_functions_v2beta_state_message_response.dart';
import 'service_config_response_cloudfunctions_v2beta.dart';

/// Result data returned by getFunction.
class GetFunctionCloudfunctionsV2betaResult {
  /// Describes the Build step of the function that builds a container from the given source.
  final BuildConfigResponseCloudfunctionsV2beta buildConfig;
  /// User-provided description of a function.
  final String description;
  /// Describe whether the function is 1st Gen or 2nd Gen.
  final String environment;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final EventTriggerResponseCloudfunctionsV2beta eventTrigger;
  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final String kmsKeyName;
  /// Labels associated with this Cloud Function.
  final Map<String, String> labels;
  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final String name;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  final ServiceConfigResponseCloudfunctionsV2beta serviceConfig;
  /// State of the function.
  final String state;
  /// State Messages for this Cloud Function.
  final List<GoogleCloudFunctionsV2betaStateMessageResponse> stateMessages;
  /// The last update timestamp of a Cloud Function.
  final String updateTime;
  /// The deployed url for the function.
  final String url;

  /// Creates a new [GetFunctionCloudfunctionsV2betaResult].
  /// [buildConfig] Describes the Build step of the function that builds a container from the given source.
  /// [description] User-provided description of a function.
  /// [environment] Describe whether the function is 1st Gen or 2nd Gen.
  /// [eventTrigger] An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  /// [kmsKeyName] [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// [labels] Labels associated with this Cloud Function.
  /// [name] A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  /// [satisfiesPzs] Reserved for future use.
  /// [serviceConfig] Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  /// [state] State of the function.
  /// [stateMessages] State Messages for this Cloud Function.
  /// [updateTime] The last update timestamp of a Cloud Function.
  /// [url] The deployed url for the function.
  const GetFunctionCloudfunctionsV2betaResult({
    required this.buildConfig,
    required this.description,
    required this.environment,
    required this.eventTrigger,
    required this.kmsKeyName,
    required this.labels,
    required this.name,
    required this.satisfiesPzs,
    required this.serviceConfig,
    required this.state,
    required this.stateMessages,
    required this.updateTime,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': buildConfig.toMap(),
      'description': description,
      'environment': environment,
      'eventTrigger': eventTrigger.toMap(),
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'name': name,
      'satisfiesPzs': satisfiesPzs,
      'serviceConfig': serviceConfig.toMap(),
      'state': state,
      'stateMessages': pulumi.Input.encodeList<GoogleCloudFunctionsV2betaStateMessageResponse, Map<String, dynamic>>(stateMessages, (value) => value.toMap()),
      'updateTime': updateTime,
      'url': url,
    };
  }

  factory GetFunctionCloudfunctionsV2betaResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsV2betaResult(
      buildConfig: BuildConfigResponseCloudfunctionsV2beta.fromMap((map['buildConfig']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      environment: map['environment'] as String,
      eventTrigger: EventTriggerResponseCloudfunctionsV2beta.fromMap((map['eventTrigger']! as Map).cast<String, dynamic>()),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      serviceConfig: ServiceConfigResponseCloudfunctionsV2beta.fromMap((map['serviceConfig']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateMessages: pulumi.Input.decodeList<GoogleCloudFunctionsV2betaStateMessageResponse>(map['stateMessages']!, (value) => GoogleCloudFunctionsV2betaStateMessageResponse.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      url: map['url'] as String,
    );
  }
}

