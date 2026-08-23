// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP Software configuration Input when the software is installed externally outside the service.
class ExternalInstallationSoftwareConfiguration {
  /// The resource ID of the virtual machine containing the central server instance.
  final pulumi.Input<String>? centralServerVmId;
  /// The SAP software installation Type.
  /// Expected value is 'External'.
  final pulumi.Input<String> softwareInstallationType;

  /// Creates a new [ExternalInstallationSoftwareConfiguration].
  /// [centralServerVmId] The resource ID of the virtual machine containing the central server instance.
  /// [softwareInstallationType] The SAP software installation Type.
  const ExternalInstallationSoftwareConfiguration({
    this.centralServerVmId,
    required this.softwareInstallationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralServerVmId': ?centralServerVmId,
      'softwareInstallationType': softwareInstallationType,
    };
  }

  factory ExternalInstallationSoftwareConfiguration.fromMap(Map<String, dynamic> map) {
    return ExternalInstallationSoftwareConfiguration(
      centralServerVmId: (() { final guardedValue = map['centralServerVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareInstallationType: pulumi.Input.fromValue(map['softwareInstallationType'] as String),
    );
  }
}
