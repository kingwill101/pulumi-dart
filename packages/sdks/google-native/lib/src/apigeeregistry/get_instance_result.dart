// ignore_for_file: unused_element, unnecessary_cast

import 'build_response.dart';
import 'config_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Build info of the Instance if it's in `ACTIVE` state.
  final BuildResponse? build;
  /// Config of the Instance.
  final ConfigResponse? config;
  /// Creation timestamp.
  final String? createTime;
  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  final String? name;
  /// The current state of the Instance.
  final String? state;
  /// Extra information of Instance.State if the state is `FAILED`.
  final String? stateMessage;
  /// Last update timestamp.
  final String? updateTime;

  /// Creates a new [GetInstanceResult].
  /// [build] Build info of the Instance if it's in `ACTIVE` state.
  /// [config] Config of the Instance.
  /// [createTime] Creation timestamp.
  /// [name] Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  /// [state] The current state of the Instance.
  /// [stateMessage] Extra information of Instance.State if the state is `FAILED`.
  /// [updateTime] Last update timestamp.
  const GetInstanceResult({
    this.build,
    this.config,
    this.createTime,
    this.name,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?build?.toMap(),
      'config': ?config?.toMap(),
      'createTime': ?createTime,
      'name': ?name,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'updateTime': ?updateTime,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return BuildResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return ConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
