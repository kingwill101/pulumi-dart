// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_master_authorized_networks_config_cidr_block.dart';

class EnvironmentConfigMasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final pulumi.Input<
    List<EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock>
  >?
  cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [EnvironmentConfigMasterAuthorizedNetworksConfig].
  /// [cidrBlocks] cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks is enabled.
  EnvironmentConfigMasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock>,
            List<Map<String, dynamic>>
          >(
            cidrBlocks,
            (value) =>
                pulumi.Input.encodeList<
                  EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': enabled,
    };
  }

  factory EnvironmentConfigMasterAuthorizedNetworksConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentConfigMasterAuthorizedNetworksConfig(
      cidrBlocks: (() {
        final guardedValue = map['cidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock
          >(
            guardedValue,
            (value) =>
                EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
