// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_connection_profile_response_datamigration_v1beta1.dart';
import 'my_sql_connection_profile_response_datamigration_v1beta1.dart';
import 'status_response_datamigration_v1beta1.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileDatamigrationV1beta1Result {
  /// A CloudSQL database connection profile.
  final CloudSqlConnectionProfileResponseDatamigrationV1beta1? cloudsql;
  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? createTime;
  /// The connection profile display name.
  final String? displayName;
  /// The error details in case of state FAILED.
  final StatusResponseDatamigrationV1beta1? error;
  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String>? labels;
  /// A MySQL database connection profile.
  final MySqlConnectionProfileResponseDatamigrationV1beta1? mysql;
  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final String? name;
  /// The database provider.
  final String? provider;
  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final String? state;
  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? updateTime;

  /// Creates a new [GetConnectionProfileDatamigrationV1beta1Result].
  /// [cloudsql] A CloudSQL database connection profile.
  /// [createTime] The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [displayName] The connection profile display name.
  /// [error] The error details in case of state FAILED.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [mysql] A MySQL database connection profile.
  /// [name] The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  /// [provider] The database provider.
  /// [state] The current connection profile state (e.g. DRAFT, READY, or FAILED).
  /// [updateTime] The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  const GetConnectionProfileDatamigrationV1beta1Result({
    this.cloudsql,
    this.createTime,
    this.displayName,
    this.error,
    this.labels,
    this.mysql,
    this.name,
    this.provider,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudsql': ?cloudsql?.toMap(),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'error': ?error?.toMap(),
      'labels': ?labels,
      'mysql': ?mysql?.toMap(),
      'name': ?name,
      'provider': ?provider,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetConnectionProfileDatamigrationV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileDatamigrationV1beta1Result(
      cloudsql: (() { final guardedValue = map['cloudsql']; if (guardedValue == null) return null; return CloudSqlConnectionProfileResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mysql: (() { final guardedValue = map['mysql']; if (guardedValue == null) return null; return MySqlConnectionProfileResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
