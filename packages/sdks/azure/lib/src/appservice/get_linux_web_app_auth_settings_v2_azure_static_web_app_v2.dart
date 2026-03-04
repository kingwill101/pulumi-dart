// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingsV2AzureStaticWebAppV2 {
  /// The OAuth 2.0 client ID used by the app for authentication.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetLinuxWebAppAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  GetLinuxWebAppAuthSettingsV2AzureStaticWebAppV2({required this.clientId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientId': clientId};
  }

  factory GetLinuxWebAppAuthSettingsV2AzureStaticWebAppV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLinuxWebAppAuthSettingsV2AzureStaticWebAppV2(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
    );
  }
}
