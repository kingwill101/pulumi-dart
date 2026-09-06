// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommended_action_response.dart';

/// Result data returned by getServerAdvisor.
class GetServerAdvisorResult {
  /// Gets the status of availability of this advisor to customers. Possible values are 'GA', 'PublicPreview', 'LimitedPublicPreview' and 'PrivatePreview'.
  final String? advisorStatus;
  /// Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  final String? autoExecuteStatus;
  /// Gets the resource from which current value of auto-execute status is inherited. Auto-execute status can be set on (and inherited from) different levels in the resource hierarchy. Possible values are 'Subscription', 'Server', 'ElasticPool', 'Database' and 'Default' (when status is not explicitly set on any level).
  final String? autoExecuteStatusInheritedFrom;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource kind.
  final String? kind;
  /// Gets the time when the current resource was analyzed for recommendations by this advisor.
  final String? lastChecked;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Gets that status of recommendations for this advisor and reason for not having any recommendations. Possible values include, but are not limited to, 'Ok' (Recommendations available),LowActivity (not enough workload to analyze), 'DbSeemsTuned' (Database is doing well), etc.
  final String? recommendationsStatus;
  /// Gets the recommended actions for this advisor.
  final List<RecommendedActionResponse>? recommendedActions;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServerAdvisorResult].
  /// [advisorStatus] Gets the status of availability of this advisor to customers. Possible values are 'GA', 'PublicPreview', 'LimitedPublicPreview' and 'PrivatePreview'.
  /// [autoExecuteStatus] Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  /// [autoExecuteStatusInheritedFrom] Gets the resource from which current value of auto-execute status is inherited. Auto-execute status can be set on (and inherited from) different levels in the resource hierarchy. Possible values are 'Subscription', 'Server', 'ElasticPool', 'Database' and 'Default' (when status is not explicitly set on any level).
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [kind] Resource kind.
  /// [lastChecked] Gets the time when the current resource was analyzed for recommendations by this advisor.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [recommendationsStatus] Gets that status of recommendations for this advisor and reason for not having any recommendations. Possible values include, but are not limited to, 'Ok' (Recommendations available),LowActivity (not enough workload to analyze), 'DbSeemsTuned' (Database is doing well), etc.
  /// [recommendedActions] Gets the recommended actions for this advisor.
  /// [type] Resource type.
  const GetServerAdvisorResult({
    this.advisorStatus,
    this.autoExecuteStatus,
    this.autoExecuteStatusInheritedFrom,
    this.azureApiVersion,
    this.id,
    this.kind,
    this.lastChecked,
    this.location,
    this.name,
    this.recommendationsStatus,
    this.recommendedActions,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advisorStatus': ?advisorStatus,
      'autoExecuteStatus': ?autoExecuteStatus,
      'autoExecuteStatusInheritedFrom': ?autoExecuteStatusInheritedFrom,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'lastChecked': ?lastChecked,
      'location': ?location,
      'name': ?name,
      'recommendationsStatus': ?recommendationsStatus,
      'recommendedActions': ?(() { final guardedValue = recommendedActions; if (guardedValue == null) return null; return pulumi.Input.encodeList<RecommendedActionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetServerAdvisorResult.fromMap(Map<String, dynamic> map) {
    return GetServerAdvisorResult(
      advisorStatus: (() { final guardedValue = map['advisorStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoExecuteStatus: (() { final guardedValue = map['autoExecuteStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoExecuteStatusInheritedFrom: (() { final guardedValue = map['autoExecuteStatusInheritedFrom']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastChecked: (() { final guardedValue = map['lastChecked']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recommendationsStatus: (() { final guardedValue = map['recommendationsStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recommendedActions: (() { final guardedValue = map['recommendedActions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecommendedActionResponse>(guardedValue, (value) => RecommendedActionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
