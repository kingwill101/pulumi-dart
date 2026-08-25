// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_version_config.dart';

/// Input properties used for looking up and filtering HostingVersion resources.
class HostingVersionState {
  /// The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// Structure is documented below.
  final pulumi.Input<HostingVersionConfig?>? config;
  /// The fully-qualified resource name for the version, in the format:
  /// sites/SITE_ID/versions/VERSION_ID
  final pulumi.Input<String?>? name;
  /// Required. The ID of the site in which to create this Version.
  final pulumi.Input<String?>? siteId;
  /// The ID for the version as in sites/SITE_ID/versions/VERSION_ID
  final pulumi.Input<String?>? versionId;

  /// Creates a new [HostingVersionState].
  /// [config] The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// [name] The fully-qualified resource name for the version, in the format:
  /// [siteId] Required. The ID of the site in which to create this Version.
  /// [versionId] The ID for the version as in sites/SITE_ID/versions/VERSION_ID
  const HostingVersionState({
    this.config,
    this.name,
    this.siteId,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<HostingVersionConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'siteId': ?siteId,
      'versionId': ?versionId,
    };
  }

  factory HostingVersionState.fromMap(Map<String, dynamic> map) {
    return HostingVersionState(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingVersionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
