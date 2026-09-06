// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP Software configuration Input when the software is installed externally outside the service.
class ExternalInstallationSoftwareConfigurationResponse {
  /// The resource ID of the virtual machine containing the central server instance.
  final pulumi.Input<String?>? centralServerVmId;
  /// The SAP software installation Type.
  /// Expected value is 'External'.
  final pulumi.Input<String> softwareInstallationType;

  /// Creates a new [ExternalInstallationSoftwareConfigurationResponse].
  /// [centralServerVmId] The resource ID of the virtual machine containing the central server instance.
  /// [softwareInstallationType] The SAP software installation Type.
  const ExternalInstallationSoftwareConfigurationResponse({
    this.centralServerVmId,
    required this.softwareInstallationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralServerVmId': ?centralServerVmId,
      'softwareInstallationType': softwareInstallationType,
    };
  }

  factory ExternalInstallationSoftwareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ExternalInstallationSoftwareConfigurationResponse(
      centralServerVmId: (() { final guardedValue = map['centralServerVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareInstallationType: pulumi.Input.fromValue(map['softwareInstallationType'] as String),
    );
  }
}
