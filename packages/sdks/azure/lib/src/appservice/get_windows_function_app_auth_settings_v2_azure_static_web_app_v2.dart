// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2 {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2(
      clientId: (map['clientId'] as String).input(),
    );
  }
}

