// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_feed_filters.dart';
import 'metadata_feed_scope.dart';

/// {@template pulumi_dataplex_metadata_feed_metadata_feed_args_doc}
/// The set of arguments for MetadataFeed.
/// {@endtemplate}
/// {@macro pulumi_dataplex_metadata_feed_metadata_feed_args_doc}
class MetadataFeedArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Filters defines the type of changes that you want to listen to. You can have multiple entry type filters and multiple aspect type filters. All of the entry type filters are OR'ed together. All of the aspect type filters are OR'ed together. All of the entry type filters and aspect type filters are AND'ed together.
  /// Structure is documented below.
  final pulumi.Input<MetadataFeedFilters>? filters;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-.
  final pulumi.Input<String> metadataFeedId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The pubsub topic that you want the metadata feed messages to publish to. Please grant Dataplex service account the permission to publish messages to the topic. The service account is: service-{PROJECT_NUMBER}@gcp-sa-dataplex.iam.gserviceaccount.com.
  final pulumi.Input<String>? pubsubTopic;
  /// Scope defines the scope of the metadata feed. Scopes are exclusive. Only one of the scopes can be specified.
  /// Structure is documented below.
  final pulumi.Input<MetadataFeedScope> scope;

  /// Creates a new [MetadataFeedArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [filters] Filters defines the type of changes that you want to listen to. You can have multiple entry type filters and multiple aspect type filters. All of the entry type filters are OR'ed together. All of the aspect type filters are OR'ed together. All of the entry type filters and aspect type filters are AND'ed together.
  /// [labels] User-defined labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [metadataFeedId] The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The pubsub topic that you want the metadata feed messages to publish to. Please grant Dataplex service account the permission to publish messages to the topic. The service account is: service-{PROJECT_NUMBER}@gcp-sa-dataplex.iam.gserviceaccount.com.
  /// [scope] Scope defines the scope of the metadata feed. Scopes are exclusive. Only one of the scopes can be specified.
  const MetadataFeedArgs({
    this.deletionPolicy,
    this.filters,
    this.labels,
    required this.location,
    required this.metadataFeedId,
    this.project,
    this.pubsubTopic,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'filters': ?pulumi.Input.mapOptionalInputValue<MetadataFeedFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'metadataFeedId': metadataFeedId,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'scope': pulumi.Input.mapInputValue<MetadataFeedScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory MetadataFeedArgs.fromMap(Map<String, dynamic> map) {
    return MetadataFeedArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataFeedFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataFeedId: pulumi.Input.fromValue(map['metadataFeedId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(MetadataFeedScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
    );
  }
}
