// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aw_assume_role_authentication_details_properties.dart';
import 'hybrid_compute_settings_properties.dart';

/// {@template pulumi_security_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_security_connector_args_doc}
class ConnectorArgs {
  /// Settings for authentication management, these settings are relevant only for the cloud connector.
  final pulumi.Input<AwAssumeRoleAuthenticationDetailsProperties>? authenticationDetails;
  /// Name of the cloud account connector
  final pulumi.Input<String>? connectorName;
  /// Settings for hybrid compute management. These settings are relevant only for Arc autoProvision (Hybrid Compute).
  final pulumi.Input<HybridComputeSettingsProperties>? hybridComputeSettings;

  /// Creates a new [ConnectorArgs].
  /// [authenticationDetails] Settings for authentication management, these settings are relevant only for the cloud connector.
  /// [connectorName] Name of the cloud account connector
  /// [hybridComputeSettings] Settings for hybrid compute management. These settings are relevant only for Arc autoProvision (Hybrid Compute).
  const ConnectorArgs({
    this.authenticationDetails,
    this.connectorName,
    this.hybridComputeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDetails': ?pulumi.Input.mapOptionalInputValue<AwAssumeRoleAuthenticationDetailsProperties, Map<String, dynamic>>(authenticationDetails, (value) => value.toMap()),
      'connectorName': ?connectorName,
      'hybridComputeSettings': ?pulumi.Input.mapOptionalInputValue<HybridComputeSettingsProperties, Map<String, dynamic>>(hybridComputeSettings, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      authenticationDetails: (() { final guardedValue = map['authenticationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwAssumeRoleAuthenticationDetailsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridComputeSettings: (() { final guardedValue = map['hybridComputeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HybridComputeSettingsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

