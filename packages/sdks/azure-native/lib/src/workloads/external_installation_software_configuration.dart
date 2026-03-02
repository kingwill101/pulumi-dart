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
  ExternalInstallationSoftwareConfiguration({
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
      centralServerVmId: map['centralServerVmId'] == null ? null : (map['centralServerVmId'] as String).input(),
      softwareInstallationType: (map['softwareInstallationType'] as String).input(),
    );
  }
}

