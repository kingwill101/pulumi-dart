// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details.dart';
import 'feed_failure_details.dart';

/// {@template pulumi_chronicle_feed_feed_args_doc}
/// The set of arguments for Feed.
/// {@endtemplate}
/// {@macro pulumi_chronicle_feed_feed_args_doc}
class FeedArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Additional details of the feed, these details are dynamic and will be
  /// different for each of the feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetails?>? details;
  /// Customer-provided feed name.
  final pulumi.Input<String?>? displayName;
  /// Whether the feed is enabled.
  final pulumi.Input<bool?>? enabled;
  /// FeedFailureDetails contains details about the errors thrown by chronicle for
  /// the feeds. These are user visible details. These details help user identify
  /// the root cause and take appropriate action for the feed errors.
  /// NEXT TAG: 5
  /// Structure is documented below.
  final pulumi.Input<FeedFailureDetails?>? failureDetails;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? feed;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [FeedArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [details] Additional details of the feed, these details are dynamic and will be
  /// [displayName] Customer-provided feed name.
  /// [enabled] Whether the feed is enabled.
  /// [failureDetails] FeedFailureDetails contains details about the errors thrown by chronicle for
  /// [feed] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const FeedArgs({
    this.deletionPolicy,
    this.details,
    this.displayName,
    this.enabled,
    this.failureDetails,
    this.feed,
    required this.instance,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'details': ?pulumi.Input.mapOptionalInputValue<FeedDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'enabled': ?enabled,
      'failureDetails': ?pulumi.Input.mapOptionalInputValue<FeedFailureDetails, Map<String, dynamic>>(failureDetails, (value) => value.toMap()),
      'feed': ?feed,
      'instance': instance,
      'location': location,
      'project': ?project,
    };
  }

  factory FeedArgs.fromMap(Map<String, dynamic> map) {
    return FeedArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureDetails: (() { final guardedValue = map['failureDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedFailureDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      feed: (() { final guardedValue = map['feed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
