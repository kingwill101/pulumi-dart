// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_environment_endpoints_response.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_status_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Environment creation time.
  final String? createTime;
  /// Optional. Description of the environment.
  final String? description;
  /// Optional. User friendly display name.
  final String? displayName;
  /// URI Endpoints to access sessions associated with the Environment.
  final GoogleCloudDataplexV1EnvironmentEndpointsResponse? endpoints;
  /// Infrastructure specification for the Environment.
  final GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse? infrastructureSpec;
  /// Optional. User defined labels for the environment.
  final Map<String, String>? labels;
  /// The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  final String? name;
  /// Optional. Configuration for sessions created for this environment.
  final GoogleCloudDataplexV1EnvironmentSessionSpecResponse? sessionSpec;
  /// Status of sessions created for this environment.
  final GoogleCloudDataplexV1EnvironmentSessionStatusResponse? sessionStatus;
  /// Current state of the environment.
  final String? state;
  /// System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.
  final String? uid;
  /// The time when the environment was last updated.
  final String? updateTime;

  /// Creates a new [GetEnvironmentResult].
  /// [createTime] Environment creation time.
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. User friendly display name.
  /// [endpoints] URI Endpoints to access sessions associated with the Environment.
  /// [infrastructureSpec] Infrastructure specification for the Environment.
  /// [labels] Optional. User defined labels for the environment.
  /// [name] The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  /// [sessionSpec] Optional. Configuration for sessions created for this environment.
  /// [sessionStatus] Status of sessions created for this environment.
  /// [state] Current state of the environment.
  /// [uid] System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.
  /// [updateTime] The time when the environment was last updated.
  const GetEnvironmentResult({
    this.createTime,
    this.description,
    this.displayName,
    this.endpoints,
    this.infrastructureSpec,
    this.labels,
    this.name,
    this.sessionSpec,
    this.sessionStatus,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'endpoints': ?endpoints?.toMap(),
      'infrastructureSpec': ?infrastructureSpec?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'sessionSpec': ?sessionSpec?.toMap(),
      'sessionStatus': ?sessionStatus?.toMap(),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return GoogleCloudDataplexV1EnvironmentEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      infrastructureSpec: (() { final guardedValue = map['infrastructureSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionSpec: (() { final guardedValue = map['sessionSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1EnvironmentSessionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sessionStatus: (() { final guardedValue = map['sessionStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1EnvironmentSessionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
