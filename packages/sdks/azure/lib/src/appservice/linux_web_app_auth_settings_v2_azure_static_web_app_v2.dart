// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppAuthSettingsV2AzureStaticWebAppV2 {
  /// The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  final pulumi.Input<String> clientId;

  /// Creates a new [LinuxWebAppAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  LinuxWebAppAuthSettingsV2AzureStaticWebAppV2({required this.clientId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientId': clientId};
  }

  factory LinuxWebAppAuthSettingsV2AzureStaticWebAppV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxWebAppAuthSettingsV2AzureStaticWebAppV2(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
    );
  }
}
