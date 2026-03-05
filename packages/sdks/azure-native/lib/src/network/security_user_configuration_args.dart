// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_security_user_configuration_args_doc}
/// The set of arguments for SecurityUserConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_security_user_configuration_args_doc}
class SecurityUserConfigurationArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String>? configurationName;
  /// A description of the security user configuration.
  final pulumi.Input<String>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [SecurityUserConfigurationArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description of the security user configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  SecurityUserConfigurationArgs({
    this.configurationName,
    this.description,
    required this.networkManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory SecurityUserConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityUserConfigurationArgs(
      configurationName: (() { final guardedValue = map['configurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

