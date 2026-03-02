// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionWebhookEndpoint {
  /// The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.
  final pulumi.Input<String>? activeDirectoryAppIdOrUri;
  /// The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
  final pulumi.Input<String>? activeDirectoryTenantId;
  /// The base url of the webhook where the Event Subscription will receive events.
  final pulumi.Input<String>? baseUrl;
  /// Maximum number of events per batch.
  final pulumi.Input<int>? maxEventsPerBatch;
  /// Preferred batch size in Kilobytes.
  final pulumi.Input<int>? preferredBatchSizeInKilobytes;
  /// Specifies the url of the webhook where the Event Subscription will receive events.
  final pulumi.Input<String> url;

  /// Creates a new [EventSubscriptionWebhookEndpoint].
  /// [activeDirectoryAppIdOrUri] The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.
  /// [activeDirectoryTenantId] The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
  /// [baseUrl] The base url of the webhook where the Event Subscription will receive events.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  /// [url] Specifies the url of the webhook where the Event Subscription will receive events.
  EventSubscriptionWebhookEndpoint({
    this.activeDirectoryAppIdOrUri,
    this.activeDirectoryTenantId,
    this.baseUrl,
    this.maxEventsPerBatch,
    this.preferredBatchSizeInKilobytes,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAppIdOrUri': ?activeDirectoryAppIdOrUri,
      'activeDirectoryTenantId': ?activeDirectoryTenantId,
      'baseUrl': ?baseUrl,
      'maxEventsPerBatch': ?maxEventsPerBatch,
      'preferredBatchSizeInKilobytes': ?preferredBatchSizeInKilobytes,
      'url': url,
    };
  }

  factory EventSubscriptionWebhookEndpoint.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionWebhookEndpoint(
      activeDirectoryAppIdOrUri: map['activeDirectoryAppIdOrUri'] == null ? null : (map['activeDirectoryAppIdOrUri'] as String).input(),
      activeDirectoryTenantId: map['activeDirectoryTenantId'] == null ? null : (map['activeDirectoryTenantId'] as String).input(),
      baseUrl: map['baseUrl'] == null ? null : (map['baseUrl'] as String).input(),
      maxEventsPerBatch: map['maxEventsPerBatch'] == null ? null : (map['maxEventsPerBatch'] as int).input(),
      preferredBatchSizeInKilobytes: map['preferredBatchSizeInKilobytes'] == null ? null : (map['preferredBatchSizeInKilobytes'] as int).input(),
      url: (map['url'] as String).input(),
    );
  }
}

