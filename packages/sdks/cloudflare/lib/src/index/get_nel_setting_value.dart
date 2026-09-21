// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNelSettingValue {
  /// Whether Network Error Logging is enabled for the zone. When enabled, browsers report network errors to Cloudflare's NEL endpoint.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetNelSettingValue].
  /// [enabled] Whether Network Error Logging is enabled for the zone. When enabled, browsers report network errors to Cloudflare's NEL endpoint.
  const GetNelSettingValue({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetNelSettingValue.fromMap(Map<String, dynamic> map) {
    return GetNelSettingValue(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
