// ignore_for_file: unused_element, unnecessary_cast

import 'acting_user_response.dart';
import 'serving_config_response.dart';

/// Result data returned by getVersion.
class GetVersionResult {
  /// The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  final ServingConfigResponse? config;
  /// The time at which the version was created.
  final String? createTime;
  /// Identifies the user who created the version.
  final ActingUserResponse? createUser;
  /// The time at which the version was `DELETED`.
  final String? deleteTime;
  /// Identifies the user who `DELETED` the version.
  final ActingUserResponse? deleteUser;
  /// The total number of files associated with the version. This value is calculated after a version is `FINALIZED`.
  final String? fileCount;
  /// The time at which the version was `FINALIZED`.
  final String? finalizeTime;
  /// Identifies the user who `FINALIZED` the version.
  final ActingUserResponse? finalizeUser;
  /// The labels used for extra metadata and/or filtering.
  final Map<String, String>? labels;
  /// The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  final String? name;
  /// The deploy status of the version. For a successful deploy, call [`CreateVersion`](sites.versions/create) to make a new version (`CREATED` status), [upload all desired files](sites.versions/populateFiles) to the version, then [update](sites.versions/patch) the version to the `FINALIZED` status. Note that if you leave the version in the `CREATED` state for more than 12 hours, the system will automatically mark the version as `ABANDONED`. You can also change the status of a version to `DELETED` by calling [`DeleteVersion`](sites.versions/delete).
  final String? status;
  /// The total stored bytesize of the version. This value is calculated after a version is `FINALIZED`.
  final String? versionBytes;

  /// Creates a new [GetVersionResult].
  /// [config] The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  /// [createTime] The time at which the version was created.
  /// [createUser] Identifies the user who created the version.
  /// [deleteTime] The time at which the version was `DELETED`.
  /// [deleteUser] Identifies the user who `DELETED` the version.
  /// [fileCount] The total number of files associated with the version. This value is calculated after a version is `FINALIZED`.
  /// [finalizeTime] The time at which the version was `FINALIZED`.
  /// [finalizeUser] Identifies the user who `FINALIZED` the version.
  /// [labels] The labels used for extra metadata and/or filtering.
  /// [name] The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  /// [status] The deploy status of the version. For a successful deploy, call [`CreateVersion`](sites.versions/create) to make a new version (`CREATED` status), [upload all desired files](sites.versions/populateFiles) to the version, then [update](sites.versions/patch) the version to the `FINALIZED` status. Note that if you leave the version in the `CREATED` state for more than 12 hours, the system will automatically mark the version as `ABANDONED`. You can also change the status of a version to `DELETED` by calling [`DeleteVersion`](sites.versions/delete).
  /// [versionBytes] The total stored bytesize of the version. This value is calculated after a version is `FINALIZED`.
  const GetVersionResult({
    this.config,
    this.createTime,
    this.createUser,
    this.deleteTime,
    this.deleteUser,
    this.fileCount,
    this.finalizeTime,
    this.finalizeUser,
    this.labels,
    this.name,
    this.status,
    this.versionBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config?.toMap(),
      'createTime': ?createTime,
      'createUser': ?createUser?.toMap(),
      'deleteTime': ?deleteTime,
      'deleteUser': ?deleteUser?.toMap(),
      'fileCount': ?fileCount,
      'finalizeTime': ?finalizeTime,
      'finalizeUser': ?finalizeUser?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'status': ?status,
      'versionBytes': ?versionBytes,
    };
  }

  factory GetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetVersionResult(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return ServingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createUser: (() { final guardedValue = map['createUser']; if (guardedValue == null) return null; return ActingUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteUser: (() { final guardedValue = map['deleteUser']; if (guardedValue == null) return null; return ActingUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fileCount: (() { final guardedValue = map['fileCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finalizeTime: (() { final guardedValue = map['finalizeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finalizeUser: (() { final guardedValue = map['finalizeUser']; if (guardedValue == null) return null; return ActingUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionBytes: (() { final guardedValue = map['versionBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
