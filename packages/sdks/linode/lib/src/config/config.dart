// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the linode package.
class LinodeConfig {
  const LinodeConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The path to a Linode API CA file to trust.
  String? get apiCaPath {
    final raw = _raw('apiCaPath');
    return raw;
  }

  bool get apiCaPathIsSecret => _isSecret('apiCaPath');

  /// The version of Linode API.
  String? get apiVersion {
    final raw = _raw('apiVersion');
    return raw;
  }

  bool get apiVersionIsSecret => _isSecret('apiVersion');

  /// The path to the Linode config file to use. (default `~/.config/linode`)
  String? get configPath {
    final raw = _raw('configPath');
    return raw;
  }

  bool get configPathIsSecret => _isSecret('configPath');

  /// The Linode config profile to use. (default `default`)
  String? get configProfile {
    final raw = _raw('configProfile');
    return raw;
  }

  bool get configProfileIsSecret => _isSecret('configProfile');

  /// Disable the internal caching system that backs certain Linode API requests.
  bool? get disableInternalCache {
    final raw = _raw('disableInternalCache');
    return (raw).toBool();
  }

  bool get disableInternalCacheIsSecret => _isSecret('disableInternalCache');

  /// The rate in milliseconds to poll for events.
  int? get eventPollMs {
    final raw = _raw('eventPollMs');
    return (raw).toInt();
  }

  bool get eventPollMsIsSecret => _isSecret('eventPollMs');

  /// The rate in milliseconds to poll for LKE events.
  int? get lkeEventPollMs {
    final raw = _raw('lkeEventPollMs');
    return (raw).toInt();
  }

  bool get lkeEventPollMsIsSecret => _isSecret('lkeEventPollMs');

  /// The rate in milliseconds to poll for an LKE node to be ready.
  int? get lkeNodeReadyPollMs {
    final raw = _raw('lkeNodeReadyPollMs');
    return (raw).toInt();
  }

  bool get lkeNodeReadyPollMsIsSecret => _isSecret('lkeNodeReadyPollMs');

  /// Maximum delay in milliseconds before retrying a request.
  int? get maxRetryDelayMs {
    final raw = _raw('maxRetryDelayMs');
    return (raw).toInt();
  }

  bool get maxRetryDelayMsIsSecret => _isSecret('maxRetryDelayMs');

  /// Minimum delay in milliseconds before retrying a request.
  int? get minRetryDelayMs {
    final raw = _raw('minRetryDelayMs');
    return (raw).toInt();
  }

  bool get minRetryDelayMsIsSecret => _isSecret('minRetryDelayMs');

  /// The access key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  String? get objAccessKey {
    final raw = _raw('objAccessKey');
    return raw;
  }

  bool get objAccessKeyIsSecret => _isSecret('objAccessKey');

  /// If true, when deleting a linode.ObjectStorageBucket any objects and versions will be force deleted.
  bool? get objBucketForceDelete {
    final raw = _raw('objBucketForceDelete');
    return (raw).toBool();
  }

  bool get objBucketForceDeleteIsSecret => _isSecret('objBucketForceDelete');

  /// The secret key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  String? get objSecretKey {
    final raw = _raw('objSecretKey');
    return raw;
  }

  bool get objSecretKeyIsSecret => _isSecret('objSecretKey');

  /// If true, temporary object keys will be created implicitly at apply-time for the linode.ObjectStorageObject and linode_object_sorage_bucket resource.
  bool? get objUseTempKeys {
    final raw = _raw('objUseTempKeys');
    return (raw).toBool();
  }

  bool get objUseTempKeysIsSecret => _isSecret('objUseTempKeys');

  /// If true, Linode Instances will not be rebooted on config and interface changes.
  bool? get skipImplicitReboots {
    final raw = _raw('skipImplicitReboots');
    return (raw).toBool();
  }

  bool get skipImplicitRebootsIsSecret => _isSecret('skipImplicitReboots');

  /// Skip waiting for a linode.Instance resource to finish deleting.
  bool? get skipInstanceDeletePoll {
    final raw = _raw('skipInstanceDeletePoll');
    return (raw).toBool();
  }

  bool get skipInstanceDeletePollIsSecret =>
      _isSecret('skipInstanceDeletePoll');

  /// Skip waiting for a linode.Instance resource to be running.
  bool? get skipInstanceReadyPoll {
    final raw = _raw('skipInstanceReadyPoll');
    return (raw).toBool();
  }

  bool get skipInstanceReadyPollIsSecret => _isSecret('skipInstanceReadyPoll');

  /// The token that allows you access to your Linode account
  String? get token {
    final raw = _raw('token');
    return raw;
  }

  bool get tokenIsSecret => _isSecret('token');

  /// An HTTP User-Agent Prefix to prepend in API requests.
  String? get uaPrefix {
    final raw = _raw('uaPrefix');
    return raw;
  }

  bool get uaPrefixIsSecret => _isSecret('uaPrefix');

  /// The HTTP(S) API address of the Linode API to use.
  String? get url {
    final raw = _raw('url');
    return raw;
  }

  bool get urlIsSecret => _isSecret('url');
}

final config = LinodeConfig();
