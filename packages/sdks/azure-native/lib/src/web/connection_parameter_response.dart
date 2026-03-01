// ignore_for_file: unused_element, unnecessary_cast

import 'api_oauth_settings_response.dart';

/// Connection provider parameters
class ConnectionParameterResponse {
  /// OAuth settings for the connection provider
  final ApiOAuthSettingsResponse? oAuthSettings;
  /// Type of the parameter
  final String? type;

  /// Creates a new [ConnectionParameterResponse].
  /// [oAuthSettings] OAuth settings for the connection provider
  /// [type] Type of the parameter
  ConnectionParameterResponse({
    this.oAuthSettings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuthSettings': ?oAuthSettings == null ? null : oAuthSettings!.toMap(),
      'type': ?type,
    };
  }

  factory ConnectionParameterResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionParameterResponse(
      oAuthSettings: map['oAuthSettings'] == null ? null : ApiOAuthSettingsResponse.fromMap((map['oAuthSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

