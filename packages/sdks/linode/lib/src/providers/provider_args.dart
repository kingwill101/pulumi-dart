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
    pulumi.Output<String>? apiCaPath,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? configPath,
    pulumi.Output<String>? configProfile,
    pulumi.Output<bool>? disableInternalCache,
    pulumi.Output<int>? eventPollMs,
    pulumi.Output<int>? lkeEventPollMs,
    pulumi.Output<int>? lkeNodeReadyPollMs,
    pulumi.Output<int>? maxRetryDelayMs,
    pulumi.Output<int>? minRetryDelayMs,
    pulumi.Output<String>? objAccessKey,
    pulumi.Output<bool>? objBucketForceDelete,
    pulumi.Output<String>? objSecretKey,
    pulumi.Output<bool>? objUseTempKeys,
    pulumi.Output<bool>? skipImplicitReboots,
    pulumi.Output<bool>? skipInstanceDeletePoll,
    pulumi.Output<bool>? skipInstanceReadyPoll,
    pulumi.Output<String>? token,
    pulumi.Output<String>? uaPrefix,
    pulumi.Output<String>? url,
  }) :
      apiCaPath = pulumi.Input.asOptionalInput<String>(apiCaPath),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      configPath = pulumi.Input.asOptionalInput<String>(configPath),
      configProfile = pulumi.Input.asOptionalInput<String>(configProfile),
      disableInternalCache = pulumi.Input.asOptionalInput<bool>(disableInternalCache),
      eventPollMs = pulumi.Input.asOptionalInput<int>(eventPollMs),
      lkeEventPollMs = pulumi.Input.asOptionalInput<int>(lkeEventPollMs),
      lkeNodeReadyPollMs = pulumi.Input.asOptionalInput<int>(lkeNodeReadyPollMs),
      maxRetryDelayMs = pulumi.Input.asOptionalInput<int>(maxRetryDelayMs),
      minRetryDelayMs = pulumi.Input.asOptionalInput<int>(minRetryDelayMs),
      objAccessKey = pulumi.Input.asOptionalInput<String>(objAccessKey),
      objBucketForceDelete = pulumi.Input.asOptionalInput<bool>(objBucketForceDelete),
      objSecretKey = pulumi.Input.asOptionalInput<String>(objSecretKey),
      objUseTempKeys = pulumi.Input.asOptionalInput<bool>(objUseTempKeys),
      skipImplicitReboots = pulumi.Input.asOptionalInput<bool>(skipImplicitReboots),
      skipInstanceDeletePoll = pulumi.Input.asOptionalInput<bool>(skipInstanceDeletePoll),
      skipInstanceReadyPoll = pulumi.Input.asOptionalInput<bool>(skipInstanceReadyPoll),
      token = pulumi.Input.asOptionalInput<String>(token),
      uaPrefix = pulumi.Input.asOptionalInput<String>(uaPrefix),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      apiCaPath: map['apiCaPath'] == null ? null : pulumi.Output.create<String>(map['apiCaPath'] as String),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      configPath: map['configPath'] == null ? null : pulumi.Output.create<String>(map['configPath'] as String),
      configProfile: map['configProfile'] == null ? null : pulumi.Output.create<String>(map['configProfile'] as String),
      disableInternalCache: map['disableInternalCache'] == null ? null : pulumi.Output.create<bool>(map['disableInternalCache'] as bool),
      eventPollMs: map['eventPollMs'] == null ? null : pulumi.Output.create<int>(map['eventPollMs'] as int),
      lkeEventPollMs: map['lkeEventPollMs'] == null ? null : pulumi.Output.create<int>(map['lkeEventPollMs'] as int),
      lkeNodeReadyPollMs: map['lkeNodeReadyPollMs'] == null ? null : pulumi.Output.create<int>(map['lkeNodeReadyPollMs'] as int),
      maxRetryDelayMs: map['maxRetryDelayMs'] == null ? null : pulumi.Output.create<int>(map['maxRetryDelayMs'] as int),
      minRetryDelayMs: map['minRetryDelayMs'] == null ? null : pulumi.Output.create<int>(map['minRetryDelayMs'] as int),
      objAccessKey: map['objAccessKey'] == null ? null : pulumi.Output.create<String>(map['objAccessKey'] as String),
      objBucketForceDelete: map['objBucketForceDelete'] == null ? null : pulumi.Output.create<bool>(map['objBucketForceDelete'] as bool),
      objSecretKey: map['objSecretKey'] == null ? null : pulumi.Output.create<String>(map['objSecretKey'] as String),
      objUseTempKeys: map['objUseTempKeys'] == null ? null : pulumi.Output.create<bool>(map['objUseTempKeys'] as bool),
      skipImplicitReboots: map['skipImplicitReboots'] == null ? null : pulumi.Output.create<bool>(map['skipImplicitReboots'] as bool),
      skipInstanceDeletePoll: map['skipInstanceDeletePoll'] == null ? null : pulumi.Output.create<bool>(map['skipInstanceDeletePoll'] as bool),
      skipInstanceReadyPoll: map['skipInstanceReadyPoll'] == null ? null : pulumi.Output.create<bool>(map['skipInstanceReadyPoll'] as bool),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      uaPrefix: map['uaPrefix'] == null ? null : pulumi.Output.create<String>(map['uaPrefix'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

