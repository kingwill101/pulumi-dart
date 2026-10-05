// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response_datastream_v1alpha1.dart';
import 'gcs_profile_response_datastream_v1alpha1.dart';
import 'mysql_profile_response_datastream_v1alpha1.dart';
import 'oracle_profile_response_datastream_v1alpha1.dart';
import 'private_connectivity_response_datastream_v1alpha1.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileDatastreamV1alpha1Result {
  /// The create time of the resource.
  final String? createTime;
  /// Display name.
  final String? displayName;
  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponseDatastreamV1alpha1? forwardSshConnectivity;
  /// Cloud Storage ConnectionProfile configuration.
  final GcsProfileResponseDatastreamV1alpha1? gcsProfile;
  /// Labels.
  final Map<String, String>? labels;
  /// MySQL ConnectionProfile configuration.
  final MysqlProfileResponseDatastreamV1alpha1? mysqlProfile;
  /// The resource's name.
  final String? name;
  /// No connectivity option chosen.
  final Map<String, dynamic>? noConnectivity;
  /// Oracle ConnectionProfile configuration.
  final OracleProfileResponseDatastreamV1alpha1? oracleProfile;
  /// Private connectivity.
  final PrivateConnectivityResponseDatastreamV1alpha1? privateConnectivity;
  /// Static Service IP connectivity.
  final Map<String, dynamic>? staticServiceIpConnectivity;
  /// The update time of the resource.
  final String? updateTime;

  /// Creates a new [GetConnectionProfileDatastreamV1alpha1Result].
  /// [createTime] The create time of the resource.
  /// [displayName] Display name.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [name] The resource's name.
  /// [noConnectivity] No connectivity option chosen.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [updateTime] The update time of the resource.
  const GetConnectionProfileDatastreamV1alpha1Result({
    this.createTime,
    this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.mysqlProfile,
    this.name,
    this.noConnectivity,
    this.oracleProfile,
    this.privateConnectivity,
    this.staticServiceIpConnectivity,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'forwardSshConnectivity': ?forwardSshConnectivity?.toMap(),
      'gcsProfile': ?gcsProfile?.toMap(),
      'labels': ?labels,
      'mysqlProfile': ?mysqlProfile?.toMap(),
      'name': ?name,
      'noConnectivity': ?noConnectivity,
      'oracleProfile': ?oracleProfile?.toMap(),
      'privateConnectivity': ?privateConnectivity?.toMap(),
      'staticServiceIpConnectivity': ?staticServiceIpConnectivity,
      'updateTime': ?updateTime,
    };
  }

  factory GetConnectionProfileDatastreamV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileDatastreamV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardSshConnectivity: (() { final guardedValue = map['forwardSshConnectivity']; if (guardedValue == null) return null; return ForwardSshTunnelConnectivityResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gcsProfile: (() { final guardedValue = map['gcsProfile']; if (guardedValue == null) return null; return GcsProfileResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mysqlProfile: (() { final guardedValue = map['mysqlProfile']; if (guardedValue == null) return null; return MysqlProfileResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noConnectivity: (() { final guardedValue = map['noConnectivity']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      oracleProfile: (() { final guardedValue = map['oracleProfile']; if (guardedValue == null) return null; return OracleProfileResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateConnectivity: (() { final guardedValue = map['privateConnectivity']; if (guardedValue == null) return null; return PrivateConnectivityResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      staticServiceIpConnectivity: (() { final guardedValue = map['staticServiceIpConnectivity']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
