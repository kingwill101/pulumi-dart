// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_feed_filters.dart';
import 'metadata_feed_scope.dart';

/// Input properties used for looking up and filtering MetadataFeed resources.
class MetadataFeedState {
  /// The time when the feed was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Filters defines the type of changes that you want to listen to. You can have multiple entry type filters and multiple aspect type filters. All of the entry type filters are OR'ed together. All of the aspect type filters are OR'ed together. All of the entry type filters and aspect type filters are AND'ed together.
  /// Structure is documented below.
  final pulumi.Input<MetadataFeedFilters>? filters;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-.
  final pulumi.Input<String>? metadataFeedId;
  /// Identifier. The resource name of the metadata feed, in the format projects/{project_id_or_number}/locations/{location_id}/metadataFeeds/{metadata_feed_id}.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The pubsub topic that you want the metadata feed messages to publish to. Please grant Dataplex service account the permission to publish messages to the topic. The service account is: service-{PROJECT_NUMBER}@gcp-sa-dataplex.iam.gserviceaccount.com.
  final pulumi.Input<String>? pubsubTopic;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Scope defines the scope of the metadata feed. Scopes are exclusive. Only one of the scopes can be specified.
  /// Structure is documented below.
  final pulumi.Input<MetadataFeedScope>? scope;
  /// A system-generated, globally unique ID for the metadata job. If the metadata job is deleted and then re-created with the same name, this ID is different.
  final pulumi.Input<String>? uid;
  /// The time when the feed was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MetadataFeedState].
  /// [createTime] The time when the feed was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filters] Filters defines the type of changes that you want to listen to. You can have multiple entry type filters and multiple aspect type filters. All of the entry type filters are OR'ed together. All of the aspect type filters are OR'ed together. All of the entry type filters and aspect type filters are AND'ed together.
  /// [labels] User-defined labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [metadataFeedId] The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-.
  /// [name] Identifier. The resource name of the metadata feed, in the format projects/{project_id_or_number}/locations/{location_id}/metadataFeeds/{metadata_feed_id}.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The pubsub topic that you want the metadata feed messages to publish to. Please grant Dataplex service account the permission to publish messages to the topic. The service account is: service-{PROJECT_NUMBER}@gcp-sa-dataplex.iam.gserviceaccount.com.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [scope] Scope defines the scope of the metadata feed. Scopes are exclusive. Only one of the scopes can be specified.
  /// [uid] A system-generated, globally unique ID for the metadata job. If the metadata job is deleted and then re-created with the same name, this ID is different.
  /// [updateTime] The time when the feed was updated.
  const MetadataFeedState({
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.filters,
    this.labels,
    this.location,
    this.metadataFeedId,
    this.name,
    this.project,
    this.pubsubTopic,
    this.pulumiLabels,
    this.scope,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'filters': ?pulumi.Input.mapOptionalInputValue<MetadataFeedFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'metadataFeedId': ?metadataFeedId,
      'name': ?name,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'pulumiLabels': ?pulumiLabels,
      'scope': ?pulumi.Input.mapOptionalInputValue<MetadataFeedScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory MetadataFeedState.fromMap(Map<String, dynamic> map) {
    return MetadataFeedState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataFeedFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataFeedId: (() { final guardedValue = map['metadataFeedId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataFeedScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
