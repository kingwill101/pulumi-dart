// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config_response_cloudfunctions_v2alpha.dart';
import 'event_trigger_response_cloudfunctions_v2alpha.dart';
import 'google_cloud_functions_v2alpha_state_message_response.dart';
import 'service_config_response_cloudfunctions_v2alpha.dart';

/// Result data returned by getFunction.
class GetFunctionCloudfunctionsV2alphaResult {
  /// Describes the Build step of the function that builds a container from the given source.
  final BuildConfigResponseCloudfunctionsV2alpha? buildConfig;
  /// User-provided description of a function.
  final String? description;
  /// Describe whether the function is 1st Gen or 2nd Gen.
  final String? environment;
  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  final EventTriggerResponseCloudfunctionsV2alpha? eventTrigger;
  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final String? kmsKeyName;
  /// Labels associated with this Cloud Function.
  final Map<String, String>? labels;
  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  final String? name;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  final ServiceConfigResponseCloudfunctionsV2alpha? serviceConfig;
  /// State of the function.
  final String? state;
  /// State Messages for this Cloud Function.
  final List<GoogleCloudFunctionsV2alphaStateMessageResponse>? stateMessages;
  /// The last update timestamp of a Cloud Function.
  final String? updateTime;
  /// The deployed url for the function.
  final String? url;

  /// Creates a new [GetFunctionCloudfunctionsV2alphaResult].
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
  const GetFunctionCloudfunctionsV2alphaResult({
    this.buildConfig,
    this.description,
    this.environment,
    this.eventTrigger,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.serviceConfig,
    this.state,
    this.stateMessages,
    this.updateTime,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?buildConfig?.toMap(),
      'description': ?description,
      'environment': ?environment,
      'eventTrigger': ?eventTrigger?.toMap(),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'name': ?name,
      'satisfiesPzs': ?satisfiesPzs,
      'serviceConfig': ?serviceConfig?.toMap(),
      'state': ?state,
      'stateMessages': ?(() { final guardedValue = stateMessages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudFunctionsV2alphaStateMessageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
      'url': ?url,
    };
  }

  factory GetFunctionCloudfunctionsV2alphaResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsV2alphaResult(
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return BuildConfigResponseCloudfunctionsV2alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventTrigger: (() { final guardedValue = map['eventTrigger']; if (guardedValue == null) return null; return EventTriggerResponseCloudfunctionsV2alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serviceConfig: (() { final guardedValue = map['serviceConfig']; if (guardedValue == null) return null; return ServiceConfigResponseCloudfunctionsV2alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessages: (() { final guardedValue = map['stateMessages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudFunctionsV2alphaStateMessageResponse>(guardedValue, (value) => GoogleCloudFunctionsV2alphaStateMessageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
