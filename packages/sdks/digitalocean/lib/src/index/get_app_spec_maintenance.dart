// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecMaintenance {
  /// Indicates whether the app should be archived. Setting this to true implies that enabled is set to true.
  final pulumi.Input<bool>? archive;
  /// Whether to automatically deploy images pushed to DOCR.
  final pulumi.Input<bool>? enabled;
  /// A custom offline page to display when maintenance mode is enabled or the app is archived.
  final pulumi.Input<String>? offlinePageUrl;

  /// Creates a new [GetAppSpecMaintenance].
  /// [archive] Indicates whether the app should be archived. Setting this to true implies that enabled is set to true.
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  /// [offlinePageUrl] A custom offline page to display when maintenance mode is enabled or the app is archived.
  GetAppSpecMaintenance({
    this.archive,
    this.enabled,
    this.offlinePageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archive': ?archive,
      'enabled': ?enabled,
      'offlinePageUrl': ?offlinePageUrl,
    };
  }

  factory GetAppSpecMaintenance.fromMap(Map<String, dynamic> map) {
    return GetAppSpecMaintenance(
      archive: (() { final guardedValue = map['archive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offlinePageUrl: (() { final guardedValue = map['offlinePageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

