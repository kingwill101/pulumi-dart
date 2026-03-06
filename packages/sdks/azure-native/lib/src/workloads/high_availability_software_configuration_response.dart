// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the HA software configuration.
class HighAvailabilitySoftwareConfigurationResponse {
  /// The fencing client id.
  final pulumi.Input<String> fencingClientId;
  /// The fencing client id secret/password. The secret should never expire. This will be used pacemaker to start/stop the cluster VMs.
  final pulumi.Input<String> fencingClientPassword;

  /// Creates a new [HighAvailabilitySoftwareConfigurationResponse].
  /// [fencingClientId] The fencing client id.
  /// [fencingClientPassword] The fencing client id secret/password. The secret should never expire. This will be used pacemaker to start/stop the cluster VMs.
  const HighAvailabilitySoftwareConfigurationResponse({
    required this.fencingClientId,
    required this.fencingClientPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fencingClientId': fencingClientId,
      'fencingClientPassword': fencingClientPassword,
    };
  }

  factory HighAvailabilitySoftwareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilitySoftwareConfigurationResponse(
      fencingClientId: pulumi.Input.fromValue(map['fencingClientId'] as String),
      fencingClientPassword: pulumi.Input.fromValue(map['fencingClientPassword'] as String),
    );
  }
}

