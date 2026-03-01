// ignore_for_file: unused_element, unnecessary_cast

import 'build_response.dart';
import 'config_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Build info of the Instance if it's in `ACTIVE` state.
  final BuildResponse build;
  /// Config of the Instance.
  final ConfigResponse config;
  /// Creation timestamp.
  final String createTime;
  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  final String name;
  /// The current state of the Instance.
  final String state;
  /// Extra information of Instance.State if the state is `FAILED`.
  final String stateMessage;
  /// Last update timestamp.
  final String updateTime;

  /// Creates a new [GetInstanceResult].
  /// [build] Build info of the Instance if it's in `ACTIVE` state.
  /// [config] Config of the Instance.
  /// [createTime] Creation timestamp.
  /// [name] Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  /// [state] The current state of the Instance.
  /// [stateMessage] Extra information of Instance.State if the state is `FAILED`.
  /// [updateTime] Last update timestamp.
  GetInstanceResult({
    required this.build,
    required this.config,
    required this.createTime,
    required this.name,
    required this.state,
    required this.stateMessage,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': build.toMap(),
      'config': config.toMap(),
      'createTime': createTime,
      'name': name,
      'state': state,
      'stateMessage': stateMessage,
      'updateTime': updateTime,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      build: BuildResponse.fromMap((map['build'] as Map).cast<String, dynamic>()),
      config: ConfigResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

