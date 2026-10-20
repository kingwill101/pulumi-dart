// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// The policy to define whether or not RBE features can be used or how they can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse? featurePolicy;
  /// The location is a GCP region. Currently only `us-central1` is supported.
  final String? location;
  /// Whether stack driver logging is enabled for the instance.
  final bool? loggingEnabled;
  /// Instance resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`. Name should not be populated when creating an instance since it is provided in the `instance_id` field.
  final String? name;
  /// State of the instance.
  final String? state;

  /// Creates a new [GetInstanceResult].
  /// [featurePolicy] The policy to define whether or not RBE features can be used or how they can be used.
  /// [location] The location is a GCP region. Currently only `us-central1` is supported.
  /// [loggingEnabled] Whether stack driver logging is enabled for the instance.
  /// [name] Instance resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`. Name should not be populated when creating an instance since it is provided in the `instance_id` field.
  /// [state] State of the instance.
  const GetInstanceResult({
    this.featurePolicy,
    this.location,
    this.loggingEnabled,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurePolicy': ?featurePolicy?.toMap(),
      'location': ?location,
      'loggingEnabled': ?loggingEnabled,
      'name': ?name,
      'state': ?state,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      featurePolicy: (() { final guardedValue = map['featurePolicy']; if (guardedValue == null) return null; return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingEnabled: (() { final guardedValue = map['loggingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
