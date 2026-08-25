// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_config_remote_config_version_update_user.dart';

class RemoteConfigRemoteConfigVersion {
  /// (Output)
  /// `True` if this Remote Config template was published before
  /// version history was supported.
  final pulumi.Input<bool?>? isLegacy;
  /// (Output)
  /// Only present if this version is the result of a rollback, and
  /// will be the version number of the Remote Config template that was
  /// rolled-back to.
  final pulumi.Input<String?>? rollbackSource;
  /// (Output)
  /// Where the update action originated.
  /// For possible values, see the [API docs](https://firebase.google.com/docs/reference/remote-config/rest/v1/Version#remoteconfigupdateorigin).
  final pulumi.Input<String?>? updateOrigin;
  /// (Output)
  /// When the Remote Config template was written to the Remote
  /// Config server.
  final pulumi.Input<String?>? updateTime;
  /// (Output)
  /// What type of update was made.
  /// For possible values, see the [API docs](https://firebase.google.com/docs/reference/remote-config/rest/v1/Version#remoteconfigupdatetype).
  final pulumi.Input<String?>? updateType;
  /// (Output)
  /// All the fields associated with the person/service account that wrote a
  /// Remote Config template.
  /// Structure is documented below.
  final pulumi.Input<List<RemoteConfigRemoteConfigVersionUpdateUser>?>? updateUsers;
  /// (Output)
  /// The version number of the version's corresponding
  /// Remote Config template.
  final pulumi.Input<String?>? versionNumber;

  /// Creates a new [RemoteConfigRemoteConfigVersion].
  /// [isLegacy] (Output)
  /// [rollbackSource] (Output)
  /// [updateOrigin] (Output)
  /// [updateTime] (Output)
  /// [updateType] (Output)
  /// [updateUsers] (Output)
  /// [versionNumber] (Output)
  const RemoteConfigRemoteConfigVersion({
    this.isLegacy,
    this.rollbackSource,
    this.updateOrigin,
    this.updateTime,
    this.updateType,
    this.updateUsers,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLegacy': ?isLegacy,
      'rollbackSource': ?rollbackSource,
      'updateOrigin': ?updateOrigin,
      'updateTime': ?updateTime,
      'updateType': ?updateType,
      'updateUsers': ?pulumi.Input.mapOptionalInputValue<List<RemoteConfigRemoteConfigVersionUpdateUser>, List<Map<String, dynamic>>>(updateUsers, (value) => pulumi.Input.encodeList<RemoteConfigRemoteConfigVersionUpdateUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versionNumber': ?versionNumber,
    };
  }

  factory RemoteConfigRemoteConfigVersion.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigVersion(
      isLegacy: (() { final guardedValue = map['isLegacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rollbackSource: (() { final guardedValue = map['rollbackSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateOrigin: (() { final guardedValue = map['updateOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateType: (() { final guardedValue = map['updateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateUsers: (() { final guardedValue = map['updateUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteConfigRemoteConfigVersionUpdateUser>(guardedValue, (value) => RemoteConfigRemoteConfigVersionUpdateUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
