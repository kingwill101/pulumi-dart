// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';

/// Apply transformation to the selected info_types.
class GooglePrivacyDlpV2SelectedInfoTypes {
  /// InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoType>> infoTypes;

  /// Creates a new [GooglePrivacyDlpV2SelectedInfoTypes].
  /// [infoTypes] InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
  const GooglePrivacyDlpV2SelectedInfoTypes({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2InfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2SelectedInfoTypes.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SelectedInfoTypes(
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(map['infoTypes']!, (value) => GooglePrivacyDlpV2InfoType.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
