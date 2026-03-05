// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response_datastream_v1alpha1.dart';
import 'gcs_profile_response_datastream_v1alpha1.dart';
import 'mysql_profile_response_datastream_v1alpha1.dart';
import 'oracle_profile_response_datastream_v1alpha1.dart';
import 'private_connectivity_response_datastream_v1alpha1.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileDatastreamV1alpha1Result {
  /// The create time of the resource.
  final String createTime;
  /// Display name.
  final String displayName;
  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponseDatastreamV1alpha1 forwardSshConnectivity;
  /// Cloud Storage ConnectionProfile configuration.
  final GcsProfileResponseDatastreamV1alpha1 gcsProfile;
  /// Labels.
  final Map<String, String> labels;
  /// MySQL ConnectionProfile configuration.
  final MysqlProfileResponseDatastreamV1alpha1 mysqlProfile;
  /// The resource's name.
  final String name;
  /// No connectivity option chosen.
  final Map<String, dynamic> noConnectivity;
  /// Oracle ConnectionProfile configuration.
  final OracleProfileResponseDatastreamV1alpha1 oracleProfile;
  /// Private connectivity.
  final PrivateConnectivityResponseDatastreamV1alpha1 privateConnectivity;
  /// Static Service IP connectivity.
  final Map<String, dynamic> staticServiceIpConnectivity;
  /// The update time of the resource.
  final String updateTime;

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
  GetConnectionProfileDatastreamV1alpha1Result({
    required this.createTime,
    required this.displayName,
    required this.forwardSshConnectivity,
    required this.gcsProfile,
    required this.labels,
    required this.mysqlProfile,
    required this.name,
    required this.noConnectivity,
    required this.oracleProfile,
    required this.privateConnectivity,
    required this.staticServiceIpConnectivity,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'forwardSshConnectivity': forwardSshConnectivity.toMap(),
      'gcsProfile': gcsProfile.toMap(),
      'labels': labels,
      'mysqlProfile': mysqlProfile.toMap(),
      'name': name,
      'noConnectivity': noConnectivity,
      'oracleProfile': oracleProfile.toMap(),
      'privateConnectivity': privateConnectivity.toMap(),
      'staticServiceIpConnectivity': staticServiceIpConnectivity,
      'updateTime': updateTime,
    };
  }

  factory GetConnectionProfileDatastreamV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileDatastreamV1alpha1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      forwardSshConnectivity: ForwardSshTunnelConnectivityResponseDatastreamV1alpha1.fromMap((map['forwardSshConnectivity']! as Map).cast<String, dynamic>()),
      gcsProfile: GcsProfileResponseDatastreamV1alpha1.fromMap((map['gcsProfile']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mysqlProfile: MysqlProfileResponseDatastreamV1alpha1.fromMap((map['mysqlProfile']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      noConnectivity: (map['noConnectivity']! as Map).cast<String, dynamic>(),
      oracleProfile: OracleProfileResponseDatastreamV1alpha1.fromMap((map['oracleProfile']! as Map).cast<String, dynamic>()),
      privateConnectivity: PrivateConnectivityResponseDatastreamV1alpha1.fromMap((map['privateConnectivity']! as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity: (map['staticServiceIpConnectivity']! as Map).cast<String, dynamic>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

