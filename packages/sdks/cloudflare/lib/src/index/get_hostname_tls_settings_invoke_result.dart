// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hostname_tls_settings_result.dart';

/// Result data returned by getHostnameTlsSettings.
class GetHostnameTlsSettingsInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetHostnameTlsSettingsResult>? results;
  /// The TLS Setting name.
  /// The value type depends on the setting:
  final String? settingId;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetHostnameTlsSettingsInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [settingId] The TLS Setting name.
  /// [zoneId] Identifier.
  const GetHostnameTlsSettingsInvokeResult({
    this.maxItems,
    this.results,
    this.settingId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHostnameTlsSettingsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'settingId': ?settingId,
      'zoneId': ?zoneId,
    };
  }

  factory GetHostnameTlsSettingsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetHostnameTlsSettingsInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHostnameTlsSettingsResult>(guardedValue, (value) => GetHostnameTlsSettingsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      settingId: (() { final guardedValue = map['settingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
