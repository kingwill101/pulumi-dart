// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_stored_info_type_config.dart';

/// {@template pulumi_dlp_v2_stored_info_type_args_doc}
/// The set of arguments for StoredInfoType.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_stored_info_type_args_doc}
class StoredInfoTypeArgs {
  /// Configuration of the storedInfoType to create.
  final pulumi.Input<GooglePrivacyDlpV2StoredInfoTypeConfig> config;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? storedInfoTypeId;

  /// Creates a new [StoredInfoTypeArgs].
  /// [config] Configuration of the storedInfoType to create.
  /// [location] Deprecated. This field has no effect.
  /// [project] Optional.
  /// [storedInfoTypeId] The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  const StoredInfoTypeArgs({
    required this.config,
    this.location,
    this.project,
    this.storedInfoTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GooglePrivacyDlpV2StoredInfoTypeConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'storedInfoTypeId': ?storedInfoTypeId,
    };
  }

  factory StoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return StoredInfoTypeArgs(
      config: pulumi.Input.fromValue(GooglePrivacyDlpV2StoredInfoTypeConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storedInfoTypeId: (() { final guardedValue = map['storedInfoTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
