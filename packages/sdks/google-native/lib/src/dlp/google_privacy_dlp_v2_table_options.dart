// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id.dart';

/// Instructions regarding the table content being inspected.
class GooglePrivacyDlpV2TableOptions {
  /// The columns that are the primary keys for table objects included in ContentItem. A copy of this cell's value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.
  final pulumi.Input<List<GooglePrivacyDlpV2FieldId>>? identifyingFields;

  /// Creates a new [GooglePrivacyDlpV2TableOptions].
  /// [identifyingFields] The columns that are the primary keys for table objects included in ContentItem. A copy of this cell's value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.
  GooglePrivacyDlpV2TableOptions({
    this.identifyingFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifyingFields': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2FieldId>, List<Map<String, dynamic>>>(identifyingFields, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2TableOptions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TableOptions(
      identifyingFields: map['identifyingFields'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2FieldId>(map['identifyingFields']!, (value) => GooglePrivacyDlpV2FieldId.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

