// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemTopicEventSubscriptionWebhookEndpoint {
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

  /// Creates a new [SystemTopicEventSubscriptionWebhookEndpoint].
  /// [activeDirectoryAppIdOrUri] The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.
  /// [activeDirectoryTenantId] The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
  /// [baseUrl] The base url of the webhook where the Event Subscription will receive events.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  /// [url] Specifies the url of the webhook where the Event Subscription will receive events.
  SystemTopicEventSubscriptionWebhookEndpoint({
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

  factory SystemTopicEventSubscriptionWebhookEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return SystemTopicEventSubscriptionWebhookEndpoint(
      activeDirectoryAppIdOrUri: (() {
        final guardedValue = map['activeDirectoryAppIdOrUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      activeDirectoryTenantId: (() {
        final guardedValue = map['activeDirectoryTenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baseUrl: (() {
        final guardedValue = map['baseUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxEventsPerBatch: (() {
        final guardedValue = map['maxEventsPerBatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preferredBatchSizeInKilobytes: (() {
        final guardedValue = map['preferredBatchSizeInKilobytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
