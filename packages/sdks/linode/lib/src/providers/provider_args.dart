// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The path to a Linode API CA file to trust.
  final pulumi.Input<String>? apiCaPath;
  /// The version of Linode API.
  final pulumi.Input<String>? apiVersion;
  /// The path to the Linode config file to use. (default `~/.config/linode`)
  final pulumi.Input<String>? configPath;
  /// The Linode config profile to use. (default `default`)
  final pulumi.Input<String>? configProfile;
  /// Disable the internal caching system that backs certain Linode API requests.
  final pulumi.Input<bool>? disableInternalCache;
  /// The rate in milliseconds to poll for events.
  final pulumi.Input<int>? eventPollMs;
  /// The rate in milliseconds to poll for LKE events.
  final pulumi.Input<int>? lkeEventPollMs;
  /// The rate in milliseconds to poll for an LKE node to be ready.
  final pulumi.Input<int>? lkeNodeReadyPollMs;
  /// Maximum delay in milliseconds before retrying a request.
  final pulumi.Input<int>? maxRetryDelayMs;
  /// Minimum delay in milliseconds before retrying a request.
  final pulumi.Input<int>? minRetryDelayMs;
  /// The access key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  final pulumi.Input<String>? objAccessKey;
  /// If true, when deleting a linode.ObjectStorageBucket any objects and versions will be force deleted.
  final pulumi.Input<bool>? objBucketForceDelete;
  /// The secret key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  final pulumi.Input<String>? objSecretKey;
  /// If true, temporary object keys will be created implicitly at apply-time for the linode.ObjectStorageObject and linode_object_sorage_bucket resource.
  final pulumi.Input<bool>? objUseTempKeys;
  /// If true, Linode Instances will not be rebooted on config and interface changes.
  final pulumi.Input<bool>? skipImplicitReboots;
  /// Skip waiting for a linode.Instance resource to finish deleting.
  final pulumi.Input<bool>? skipInstanceDeletePoll;
  /// Skip waiting for a linode.Instance resource to be running.
  final pulumi.Input<bool>? skipInstanceReadyPoll;
  /// The token that allows you access to your Linode account
  final pulumi.Input<String>? token;
  /// An HTTP User-Agent Prefix to prepend in API requests.
  final pulumi.Input<String>? uaPrefix;
  /// The HTTP(S) API address of the Linode API to use.
  final pulumi.Input<String>? url;

  /// Creates a new [ProviderArgs].
  /// [apiCaPath] The path to a Linode API CA file to trust.
  /// [apiVersion] The version of Linode API.
  /// [configPath] The path to the Linode config file to use. (default `~/.config/linode`)
  /// [configProfile] The Linode config profile to use. (default `default`)
  /// [disableInternalCache] Disable the internal caching system that backs certain Linode API requests.
  /// [eventPollMs] The rate in milliseconds to poll for events.
  /// [lkeEventPollMs] The rate in milliseconds to poll for LKE events.
  /// [lkeNodeReadyPollMs] The rate in milliseconds to poll for an LKE node to be ready.
  /// [maxRetryDelayMs] Maximum delay in milliseconds before retrying a request.
  /// [minRetryDelayMs] Minimum delay in milliseconds before retrying a request.
  /// [objAccessKey] The access key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  /// [objBucketForceDelete] If true, when deleting a linode.ObjectStorageBucket any objects and versions will be force deleted.
  /// [objSecretKey] The secret key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  /// [objUseTempKeys] If true, temporary object keys will be created implicitly at apply-time for the linode.ObjectStorageObject and linode_object_sorage_bucket resource.
  /// [skipImplicitReboots] If true, Linode Instances will not be rebooted on config and interface changes.
  /// [skipInstanceDeletePoll] Skip waiting for a linode.Instance resource to finish deleting.
  /// [skipInstanceReadyPoll] Skip waiting for a linode.Instance resource to be running.
  /// [token] The token that allows you access to your Linode account
  /// [uaPrefix] An HTTP User-Agent Prefix to prepend in API requests.
  /// [url] The HTTP(S) API address of the Linode API to use.
  ProviderArgs({
    this.apiCaPath,
    this.apiVersion,
    this.configPath,
    this.configProfile,
    this.disableInternalCache,
    this.eventPollMs,
    this.lkeEventPollMs,
    this.lkeNodeReadyPollMs,
    this.maxRetryDelayMs,
    this.minRetryDelayMs,
    this.objAccessKey,
    this.objBucketForceDelete,
    this.objSecretKey,
    this.objUseTempKeys,
    this.skipImplicitReboots,
    this.skipInstanceDeletePoll,
    this.skipInstanceReadyPoll,
    this.token,
    this.uaPrefix,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiCaPath': ?apiCaPath,
      'apiVersion': ?apiVersion,
      'configPath': ?configPath,
      'configProfile': ?configProfile,
      'disableInternalCache': ?disableInternalCache,
      'eventPollMs': ?eventPollMs,
      'lkeEventPollMs': ?lkeEventPollMs,
      'lkeNodeReadyPollMs': ?lkeNodeReadyPollMs,
      'maxRetryDelayMs': ?maxRetryDelayMs,
      'minRetryDelayMs': ?minRetryDelayMs,
      'objAccessKey': ?objAccessKey,
      'objBucketForceDelete': ?objBucketForceDelete,
      'objSecretKey': ?objSecretKey,
      'objUseTempKeys': ?objUseTempKeys,
      'skipImplicitReboots': ?skipImplicitReboots,
      'skipInstanceDeletePoll': ?skipInstanceDeletePoll,
      'skipInstanceReadyPoll': ?skipInstanceReadyPoll,
      'token': ?token,
      'uaPrefix': ?uaPrefix,
      'url': ?url,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      apiCaPath: map['apiCaPath'] == null ? null : (map['apiCaPath']! as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      configPath: map['configPath'] == null ? null : (map['configPath']! as String).input(),
      configProfile: map['configProfile'] == null ? null : (map['configProfile']! as String).input(),
      disableInternalCache: map['disableInternalCache'] == null ? null : (map['disableInternalCache']! as bool).input(),
      eventPollMs: map['eventPollMs'] == null ? null : (map['eventPollMs']! as int).input(),
      lkeEventPollMs: map['lkeEventPollMs'] == null ? null : (map['lkeEventPollMs']! as int).input(),
      lkeNodeReadyPollMs: map['lkeNodeReadyPollMs'] == null ? null : (map['lkeNodeReadyPollMs']! as int).input(),
      maxRetryDelayMs: map['maxRetryDelayMs'] == null ? null : (map['maxRetryDelayMs']! as int).input(),
      minRetryDelayMs: map['minRetryDelayMs'] == null ? null : (map['minRetryDelayMs']! as int).input(),
      objAccessKey: map['objAccessKey'] == null ? null : (map['objAccessKey']! as String).input(),
      objBucketForceDelete: map['objBucketForceDelete'] == null ? null : (map['objBucketForceDelete']! as bool).input(),
      objSecretKey: map['objSecretKey'] == null ? null : (map['objSecretKey']! as String).input(),
      objUseTempKeys: map['objUseTempKeys'] == null ? null : (map['objUseTempKeys']! as bool).input(),
      skipImplicitReboots: map['skipImplicitReboots'] == null ? null : (map['skipImplicitReboots']! as bool).input(),
      skipInstanceDeletePoll: map['skipInstanceDeletePoll'] == null ? null : (map['skipInstanceDeletePoll']! as bool).input(),
      skipInstanceReadyPoll: map['skipInstanceReadyPoll'] == null ? null : (map['skipInstanceReadyPoll']! as bool).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
      uaPrefix: map['uaPrefix'] == null ? null : (map['uaPrefix']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

