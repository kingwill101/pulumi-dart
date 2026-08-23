// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb_settings_initial_user.dart';
import 'connection_profile_alloydb_settings_primary_instance_settings.dart';

class ConnectionProfileAlloydbSettings {
  /// Required. Input only. Initial user to setup during cluster creation.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydbSettingsInitialUser> initialUser;
  /// Labels for the AlloyDB cluster created by DMS.
  final pulumi.Input<Map<String, String>>? labels;
  /// Settings for the cluster's primary instance
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydbSettingsPrimaryInstanceSettings>? primaryInstanceSettings;
  /// Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
  /// It is specified in the form: 'projects/{project_number}/global/networks/{network_id}'. This is required to create a cluster.
  final pulumi.Input<String> vpcNetwork;

  /// Creates a new [ConnectionProfileAlloydbSettings].
  /// [initialUser] Required. Input only. Initial user to setup during cluster creation.
  /// [labels] Labels for the AlloyDB cluster created by DMS.
  /// [primaryInstanceSettings] Settings for the cluster's primary instance
  /// [vpcNetwork] Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
  const ConnectionProfileAlloydbSettings({
    required this.initialUser,
    this.labels,
    this.primaryInstanceSettings,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialUser': pulumi.Input.mapInputValue<ConnectionProfileAlloydbSettingsInitialUser, Map<String, dynamic>>(initialUser, (value) => value.toMap()),
      'labels': ?labels,
      'primaryInstanceSettings': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileAlloydbSettingsPrimaryInstanceSettings, Map<String, dynamic>>(primaryInstanceSettings, (value) => value.toMap()),
      'vpcNetwork': vpcNetwork,
    };
  }

  factory ConnectionProfileAlloydbSettings.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettings(
      initialUser: pulumi.Input.fromValue(ConnectionProfileAlloydbSettingsInitialUser.fromMap((map['initialUser']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      primaryInstanceSettings: (() { final guardedValue = map['primaryInstanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileAlloydbSettingsPrimaryInstanceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcNetwork: pulumi.Input.fromValue(map['vpcNetwork'] as String),
    );
  }
}
