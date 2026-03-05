// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smb_setting.dart';

/// Protocol settings for file service
class ProtocolSettings {
  /// Setting for SMB protocol
  final pulumi.Input<SmbSetting>? smb;

  /// Creates a new [ProtocolSettings].
  /// [smb] Setting for SMB protocol
  ProtocolSettings({
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smb': ?pulumi.Input.mapOptionalInputValue<SmbSetting, Map<String, dynamic>>(smb, (value) => value.toMap()),
    };
  }

  factory ProtocolSettings.fromMap(Map<String, dynamic> map) {
    return ProtocolSettings(
      smb: (() { final guardedValue = map['smb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmbSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

