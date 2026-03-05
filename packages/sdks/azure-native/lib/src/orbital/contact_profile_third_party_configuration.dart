// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact Profile third-party partner configuration.
class ContactProfileThirdPartyConfiguration {
  /// Name of string referencing the configuration describing contact set-up for a particular mission. Expected values are those which have been created in collaboration with the partner network.
  final pulumi.Input<String> missionConfiguration;
  /// Name of the third-party provider.
  final pulumi.Input<String> providerName;

  /// Creates a new [ContactProfileThirdPartyConfiguration].
  /// [missionConfiguration] Name of string referencing the configuration describing contact set-up for a particular mission. Expected values are those which have been created in collaboration with the partner network.
  /// [providerName] Name of the third-party provider.
  ContactProfileThirdPartyConfiguration({
    required this.missionConfiguration,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'missionConfiguration': missionConfiguration,
      'providerName': providerName,
    };
  }

  factory ContactProfileThirdPartyConfiguration.fromMap(Map<String, dynamic> map) {
    return ContactProfileThirdPartyConfiguration(
      missionConfiguration: pulumi.Input.fromValue(map['missionConfiguration'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}

