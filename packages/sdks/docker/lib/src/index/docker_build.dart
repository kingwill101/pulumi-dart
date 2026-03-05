// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'builder_version.dart';
import 'cache_from.dart';

/// The Docker build context
class DockerBuild {
  /// Custom host-to-IP mappings to use while building (format: "host:ip")
  final pulumi.Input<List<String>>? addHosts;
  /// An optional map of named build-time argument variables to set during the Docker build. This flag allows you to pass build-time variables that can be accessed like environment variables inside the RUN instruction.
  final pulumi.Input<Map<String, String>>? args;
  /// The version of the Docker builder.
  final pulumi.Input<BuilderVersion>? builderVersion;
  /// A list of image names to use as build cache. Images provided must have a cache manifest. Must provide authentication to cache registry.
  final pulumi.Input<CacheFrom>? cacheFrom;
  /// The path to the build context to use.
  final pulumi.Input<String>? context;
  /// The path to the Dockerfile to use.
  final pulumi.Input<String>? dockerfile;
  /// Set the networking mode for RUN instructions
  final pulumi.Input<String>? network;
  /// The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  final pulumi.Input<String>? platform;
  /// The target of the Dockerfile to build
  final pulumi.Input<String>? target;

  /// Creates a new [DockerBuild].
  /// [addHosts] Custom host-to-IP mappings to use while building (format: "host:ip")
  /// [args] An optional map of named build-time argument variables to set during the Docker build. This flag allows you to pass build-time variables that can be accessed like environment variables inside the RUN instruction.
  /// [builderVersion] The version of the Docker builder.
  /// [cacheFrom] A list of image names to use as build cache. Images provided must have a cache manifest. Must provide authentication to cache registry.
  /// [context] The path to the build context to use.
  /// [dockerfile] The path to the Dockerfile to use.
  /// [network] Set the networking mode for RUN instructions
  /// [platform] The architecture of the platform you want to build this image for, e.g. `linux/arm64`.
  /// [target] The target of the Dockerfile to build
  DockerBuild({
    this.addHosts,
    this.args,
    this.builderVersion,
    this.cacheFrom,
    this.context,
    this.dockerfile,
    this.network,
    this.platform,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHosts': ?addHosts,
      'args': ?args,
      'builderVersion': ?pulumi.Input.mapOptionalInputValue<BuilderVersion, String>(builderVersion, (value) => value.wireValue),
      'cacheFrom': ?pulumi.Input.mapOptionalInputValue<CacheFrom, Map<String, dynamic>>(cacheFrom, (value) => value.toMap()),
      'context': ?context,
      'dockerfile': ?dockerfile,
      'network': ?network,
      'platform': ?platform,
      'target': ?target,
    };
  }

  factory DockerBuild.fromMap(Map<String, dynamic> map) {
    return DockerBuild(
      addHosts: (() { final guardedValue = map['addHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      builderVersion: (() { final guardedValue = map['builderVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuilderVersion.fromValue(guardedValue as String)); })(),
      cacheFrom: (() { final guardedValue = map['cacheFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfile: (() { final guardedValue = map['dockerfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

