// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details.dart';
import 'feed_failure_details.dart';

/// Input properties used for looking up and filtering Feed resources.
class FeedState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Additional details of the feed, these details are dynamic and will be
  /// different for each of the feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetails>? details;
  /// Customer-provided feed name.
  final pulumi.Input<String>? displayName;
  /// Whether the feed is enabled.
  final pulumi.Input<bool>? enabled;
  /// FeedFailureDetails contains details about the errors thrown by chronicle for
  /// the feeds. These are user visible details. These details help user identify
  /// the root cause and take appropriate action for the feed errors.
  /// NEXT TAG: 5
  /// Structure is documented below.
  final pulumi.Input<FeedFailureDetails>? failureDetails;
  /// Details about the most recent failure when feed state is FAILED.
  final pulumi.Input<String>? failureMsg;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? feed;
  /// Output only. The service account used by Chronicle to ingest data from Cloud Storage. This is only available when the feed source type is GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN or GOOGLE_CLOUD_STORAGE.
  final pulumi.Input<String>? feedServiceAccount;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// Latest timestamp when the transfer was successful for the feed.
  final pulumi.Input<String>? lastFeedInitiationTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The resource name of the feed.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/feeds/{feed}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Whether this feed can be updated or deleted.
  final pulumi.Input<bool>? readOnly;
  /// Reference ID, this field will contain the legacy id of the feed.
  final pulumi.Input<String>? referenceId;
  /// Output only. The secret generated for the feed. This is only available when the feed source type is HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
  final pulumi.Input<String>? secret;
  /// The state of the feed (e.g., ACTIVE, INACTIVE).
  final pulumi.Input<String>? state;
  /// Unique identifier for the feed.
  final pulumi.Input<String>? uid;

  /// Creates a new [FeedState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [details] Additional details of the feed, these details are dynamic and will be
  /// [displayName] Customer-provided feed name.
  /// [enabled] Whether the feed is enabled.
  /// [failureDetails] FeedFailureDetails contains details about the errors thrown by chronicle for
  /// [failureMsg] Details about the most recent failure when feed state is FAILED.
  /// [feed] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [feedServiceAccount] Output only. The service account used by Chronicle to ingest data from Cloud Storage. This is only available when the feed source type is GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN or GOOGLE_CLOUD_STORAGE.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [lastFeedInitiationTime] Latest timestamp when the transfer was successful for the feed.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The resource name of the feed.
  /// [project] The ID of the project in which the resource belongs.
  /// [readOnly] Whether this feed can be updated or deleted.
  /// [referenceId] Reference ID, this field will contain the legacy id of the feed.
  /// [secret] Output only. The secret generated for the feed. This is only available when the feed source type is HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
  /// [state] The state of the feed (e.g., ACTIVE, INACTIVE).
  /// [uid] Unique identifier for the feed.
  const FeedState({
    this.deletionPolicy,
    this.details,
    this.displayName,
    this.enabled,
    this.failureDetails,
    this.failureMsg,
    this.feed,
    this.feedServiceAccount,
    this.instance,
    this.lastFeedInitiationTime,
    this.location,
    this.name,
    this.project,
    this.readOnly,
    this.referenceId,
    this.secret,
    this.state,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'details': ?pulumi.Input.mapOptionalInputValue<FeedDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'enabled': ?enabled,
      'failureDetails': ?pulumi.Input.mapOptionalInputValue<FeedFailureDetails, Map<String, dynamic>>(failureDetails, (value) => value.toMap()),
      'failureMsg': ?failureMsg,
      'feed': ?feed,
      'feedServiceAccount': ?feedServiceAccount,
      'instance': ?instance,
      'lastFeedInitiationTime': ?lastFeedInitiationTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'readOnly': ?readOnly,
      'referenceId': ?referenceId,
      'secret': ?secret,
      'state': ?state,
      'uid': ?uid,
    };
  }

  factory FeedState.fromMap(Map<String, dynamic> map) {
    return FeedState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureDetails: (() { final guardedValue = map['failureDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedFailureDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureMsg: (() { final guardedValue = map['failureMsg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feed: (() { final guardedValue = map['feed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedServiceAccount: (() { final guardedValue = map['feedServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastFeedInitiationTime: (() { final guardedValue = map['lastFeedInitiationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
