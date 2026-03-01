// ignore_for_file: unused_element, unnecessary_cast


/// Contact Profile third-party partner configuration.
class ContactProfileThirdPartyConfigurationResponse {
  /// Name of string referencing the configuration describing contact set-up for a particular mission. Expected values are those which have been created in collaboration with the partner network.
  final String missionConfiguration;
  /// Name of the third-party provider.
  final String providerName;

  /// Creates a new [ContactProfileThirdPartyConfigurationResponse].
  /// [missionConfiguration] Name of string referencing the configuration describing contact set-up for a particular mission. Expected values are those which have been created in collaboration with the partner network.
  /// [providerName] Name of the third-party provider.
  ContactProfileThirdPartyConfigurationResponse({
    required this.missionConfiguration,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'missionConfiguration': missionConfiguration,
      'providerName': providerName,
    };
  }

  factory ContactProfileThirdPartyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContactProfileThirdPartyConfigurationResponse(
      missionConfiguration: map['missionConfiguration'] as String,
      providerName: map['providerName'] as String,
    );
  }
}

