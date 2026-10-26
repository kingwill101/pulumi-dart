// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response.dart';
import 'gcs_profile_response.dart';
import 'mysql_profile_response.dart';
import 'oracle_profile_response.dart';
import 'postgresql_profile_response.dart';
import 'private_connectivity_response.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileResult {
  /// BigQuery Connection Profile configuration.
  final Map<String, dynamic>? bigqueryProfile;
  /// The create time of the resource.
  final String? createTime;
  /// Display name.
  final String? displayName;
  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponse? forwardSshConnectivity;
  /// Cloud Storage ConnectionProfile configuration.
  final GcsProfileResponse? gcsProfile;
  /// Labels.
  final Map<String, String>? labels;
  /// MySQL ConnectionProfile configuration.
  final MysqlProfileResponse? mysqlProfile;
  /// The resource's name.
  final String? name;
  /// Oracle ConnectionProfile configuration.
  final OracleProfileResponse? oracleProfile;
  /// PostgreSQL Connection Profile configuration.
  final PostgresqlProfileResponse? postgresqlProfile;
  /// Private connectivity.
  final PrivateConnectivityResponse? privateConnectivity;
  /// Static Service IP connectivity.
  final Map<String, dynamic>? staticServiceIpConnectivity;
  /// The update time of the resource.
  final String? updateTime;

  /// Creates a new [GetConnectionProfileResult].
  /// [bigqueryProfile] BigQuery Connection Profile configuration.
  /// [createTime] The create time of the resource.
  /// [displayName] Display name.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [name] The resource's name.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [postgresqlProfile] PostgreSQL Connection Profile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [updateTime] The update time of the resource.
  const GetConnectionProfileResult({
    this.bigqueryProfile,
    this.createTime,
    this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.mysqlProfile,
    this.name,
    this.oracleProfile,
    this.postgresqlProfile,
    this.privateConnectivity,
    this.staticServiceIpConnectivity,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryProfile': ?bigqueryProfile,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'forwardSshConnectivity': ?forwardSshConnectivity?.toMap(),
      'gcsProfile': ?gcsProfile?.toMap(),
      'labels': ?labels,
      'mysqlProfile': ?mysqlProfile?.toMap(),
      'name': ?name,
      'oracleProfile': ?oracleProfile?.toMap(),
      'postgresqlProfile': ?postgresqlProfile?.toMap(),
      'privateConnectivity': ?privateConnectivity?.toMap(),
      'staticServiceIpConnectivity': ?staticServiceIpConnectivity,
      'updateTime': ?updateTime,
    };
  }

  factory GetConnectionProfileResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileResult(
      bigqueryProfile: (() { final guardedValue = map['bigqueryProfile']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardSshConnectivity: (() { final guardedValue = map['forwardSshConnectivity']; if (guardedValue == null) return null; return ForwardSshTunnelConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gcsProfile: (() { final guardedValue = map['gcsProfile']; if (guardedValue == null) return null; return GcsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mysqlProfile: (() { final guardedValue = map['mysqlProfile']; if (guardedValue == null) return null; return MysqlProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oracleProfile: (() { final guardedValue = map['oracleProfile']; if (guardedValue == null) return null; return OracleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      postgresqlProfile: (() { final guardedValue = map['postgresqlProfile']; if (guardedValue == null) return null; return PostgresqlProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateConnectivity: (() { final guardedValue = map['privateConnectivity']; if (guardedValue == null) return null; return PrivateConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      staticServiceIpConnectivity: (() { final guardedValue = map['staticServiceIpConnectivity']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
