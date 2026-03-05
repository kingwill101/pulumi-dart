// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smb_setting_response.dart';

/// Protocol settings for file service
class ProtocolSettingsResponse {
  /// Setting for SMB protocol
  final pulumi.Input<SmbSettingResponse>? smb;

  /// Creates a new [ProtocolSettingsResponse].
  /// [smb] Setting for SMB protocol
  ProtocolSettingsResponse({
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smb': ?pulumi.Input.mapOptionalInputValue<SmbSettingResponse, Map<String, dynamic>>(smb, (value) => value.toMap()),
    };
  }

  factory ProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProtocolSettingsResponse(
      smb: (() { final guardedValue = map['smb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmbSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

