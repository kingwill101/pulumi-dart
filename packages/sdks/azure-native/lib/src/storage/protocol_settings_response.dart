// ignore_for_file: unused_element, unnecessary_cast

import 'smb_setting_response.dart';

/// Protocol settings for file service
class ProtocolSettingsResponse {
  /// Setting for SMB protocol
  final SmbSettingResponse? smb;

  /// Creates a new [ProtocolSettingsResponse].
  /// [smb] Setting for SMB protocol
  ProtocolSettingsResponse({
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smb': ?smb == null ? null : smb!.toMap(),
    };
  }

  factory ProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProtocolSettingsResponse(
      smb: map['smb'] == null ? null : SmbSettingResponse.fromMap((map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}

