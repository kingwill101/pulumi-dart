// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_environment_config_execution_config_authentication_config.dart';

class BatchEnvironmentConfigExecutionConfig {
  /// Authentication configuration for a workload is used to set the default identity for the workload execution.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfigExecutionConfigAuthenticationConfig>?
  authenticationConfig;

  /// The Cloud KMS key to use for encryption.
  final pulumi.Input<String>? kmsKey;

  /// Tags used for network traffic control.
  final pulumi.Input<List<String>>? networkTags;

  /// Network configuration for workload execution.
  final pulumi.Input<String>? networkUri;

  /// Service account that used to execute workload.
  final pulumi.Input<String>? serviceAccount;

  /// A Cloud Storage bucket used to stage workload dependencies, config files, and store
  /// workload output and other ephemeral data, such as Spark history files. If you do not specify a staging bucket,
  /// Cloud Dataproc will determine a Cloud Storage location according to the region where your workload is running,
  /// and then create and manage project-level, per-location staging and temporary buckets.
  /// This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final pulumi.Input<String>? stagingBucket;

  /// Subnetwork configuration for workload execution.
  final pulumi.Input<String>? subnetworkUri;

  /// The duration after which the workload will be terminated.
  /// When the workload exceeds this duration, it will be unconditionally terminated without waiting for ongoing
  /// work to finish. If ttl is not specified for a batch workload, the workload will be allowed to run until it
  /// exits naturally (or run forever without exiting). If ttl is not specified for an interactive session,
  /// it defaults to 24 hours. If ttl is not specified for a batch that uses 2.1+ runtime version, it defaults to 4 hours.
  /// Minimum value is 10 minutes; maximum value is 14 days. If both ttl and idleTtl are specified (for an interactive session),
  /// the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idleTtl or
  /// when ttl has been exceeded, whichever occurs first.
  final pulumi.Input<String>? ttl;

  /// Creates a new [BatchEnvironmentConfigExecutionConfig].
  /// [authenticationConfig] Authentication configuration for a workload is used to set the default identity for the workload execution.
  /// [kmsKey] The Cloud KMS key to use for encryption.
  /// [networkTags] Tags used for network traffic control.
  /// [networkUri] Network configuration for workload execution.
  /// [serviceAccount] Service account that used to execute workload.
  /// [stagingBucket] A Cloud Storage bucket used to stage workload dependencies, config files, and store
  /// [subnetworkUri] Subnetwork configuration for workload execution.
  /// [ttl] The duration after which the workload will be terminated.
  BatchEnvironmentConfigExecutionConfig({
    this.authenticationConfig,
    this.kmsKey,
    this.networkTags,
    this.networkUri,
    this.serviceAccount,
    this.stagingBucket,
    this.subnetworkUri,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BatchEnvironmentConfigExecutionConfigAuthenticationConfig,
            Map<String, dynamic>
          >(authenticationConfig, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'networkTags': ?networkTags,
      'networkUri': ?networkUri,
      'serviceAccount': ?serviceAccount,
      'stagingBucket': ?stagingBucket,
      'subnetworkUri': ?subnetworkUri,
      'ttl': ?ttl,
    };
  }

  factory BatchEnvironmentConfigExecutionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BatchEnvironmentConfigExecutionConfig(
      authenticationConfig: (() {
        final guardedValue = map['authenticationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchEnvironmentConfigExecutionConfigAuthenticationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkTags: (() {
        final guardedValue = map['networkTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      networkUri: (() {
        final guardedValue = map['networkUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stagingBucket: (() {
        final guardedValue = map['stagingBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetworkUri: (() {
        final guardedValue = map['subnetworkUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
