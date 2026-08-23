// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommended_action_response.dart';

/// Result data returned by getDatabaseAdvisor.
class GetDatabaseAdvisorResult {
  /// Gets the status of availability of this advisor to customers. Possible values are 'GA', 'PublicPreview', 'LimitedPublicPreview' and 'PrivatePreview'.
  final String advisorStatus;
  /// Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  final String autoExecuteStatus;
  /// Gets the resource from which current value of auto-execute status is inherited. Auto-execute status can be set on (and inherited from) different levels in the resource hierarchy. Possible values are 'Subscription', 'Server', 'ElasticPool', 'Database' and 'Default' (when status is not explicitly set on any level).
  final String autoExecuteStatusInheritedFrom;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Resource kind.
  final String kind;
  /// Gets the time when the current resource was analyzed for recommendations by this advisor.
  final String lastChecked;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// Gets that status of recommendations for this advisor and reason for not having any recommendations. Possible values include, but are not limited to, 'Ok' (Recommendations available),LowActivity (not enough workload to analyze), 'DbSeemsTuned' (Database is doing well), etc.
  final String recommendationsStatus;
  /// Gets the recommended actions for this advisor.
  final List<RecommendedActionResponse> recommendedActions;
  /// Resource type.
  final String type;

  /// Creates a new [GetDatabaseAdvisorResult].
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
  const GetDatabaseAdvisorResult({
    required this.advisorStatus,
    required this.autoExecuteStatus,
    required this.autoExecuteStatusInheritedFrom,
    required this.azureApiVersion,
    required this.id,
    required this.kind,
    required this.lastChecked,
    required this.location,
    required this.name,
    required this.recommendationsStatus,
    required this.recommendedActions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advisorStatus': advisorStatus,
      'autoExecuteStatus': autoExecuteStatus,
      'autoExecuteStatusInheritedFrom': autoExecuteStatusInheritedFrom,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': kind,
      'lastChecked': lastChecked,
      'location': location,
      'name': name,
      'recommendationsStatus': recommendationsStatus,
      'recommendedActions': pulumi.Input.encodeList<RecommendedActionResponse, Map<String, dynamic>>(recommendedActions, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetDatabaseAdvisorResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAdvisorResult(
      advisorStatus: map['advisorStatus'] as String,
      autoExecuteStatus: map['autoExecuteStatus'] as String,
      autoExecuteStatusInheritedFrom: map['autoExecuteStatusInheritedFrom'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      lastChecked: map['lastChecked'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      recommendationsStatus: map['recommendationsStatus'] as String,
      recommendedActions: pulumi.Input.decodeList<RecommendedActionResponse>(map['recommendedActions']!, (value) => RecommendedActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
