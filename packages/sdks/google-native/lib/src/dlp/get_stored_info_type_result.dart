// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_stored_info_type_version_response.dart';

/// Result data returned by getStoredInfoType.
class GetStoredInfoTypeResult {
  /// Current version of the stored info type.
  final GooglePrivacyDlpV2StoredInfoTypeVersionResponse? currentVersion;
  /// Resource name.
  final String? name;
  /// Pending versions of the stored info type. Empty if no versions are pending.
  final List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>? pendingVersions;

  /// Creates a new [GetStoredInfoTypeResult].
  /// [currentVersion] Current version of the stored info type.
  /// [name] Resource name.
  /// [pendingVersions] Pending versions of the stored info type. Empty if no versions are pending.
  const GetStoredInfoTypeResult({
    this.currentVersion,
    this.name,
    this.pendingVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': ?currentVersion?.toMap(),
      'name': ?name,
      'pendingVersions': ?(() { final guardedValue = pendingVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GooglePrivacyDlpV2StoredInfoTypeVersionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetStoredInfoTypeResult.fromMap(Map<String, dynamic> map) {
    return GetStoredInfoTypeResult(
      currentVersion: (() { final guardedValue = map['currentVersion']; if (guardedValue == null) return null; return GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingVersions: (() { final guardedValue = map['pendingVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>(guardedValue, (value) => GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
