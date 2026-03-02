// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2 {
  /// The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  final pulumi.Input<String> clientId;

  /// Creates a new [LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2(
      clientId: (map['clientId'] as String).input(),
    );
  }
}

