// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_oauth_settings_response.dart';

/// Connection provider parameters
class ConnectionParameterResponse {
  /// OAuth settings for the connection provider
  final pulumi.Input<ApiOAuthSettingsResponse?>? oAuthSettings;
  /// Type of the parameter
  final pulumi.Input<String?>? type;

  /// Creates a new [ConnectionParameterResponse].
  /// [oAuthSettings] OAuth settings for the connection provider
  /// [type] Type of the parameter
  const ConnectionParameterResponse({
    this.oAuthSettings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuthSettings': ?pulumi.Input.mapOptionalInputValue<ApiOAuthSettingsResponse, Map<String, dynamic>>(oAuthSettings, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ConnectionParameterResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionParameterResponse(
      oAuthSettings: (() { final guardedValue = map['oAuthSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiOAuthSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
