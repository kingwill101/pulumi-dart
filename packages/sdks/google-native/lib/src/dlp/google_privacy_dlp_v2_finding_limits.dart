// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_limit.dart';

/// Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.
class GooglePrivacyDlpV2FindingLimits {
  /// Configuration of findings limit given for specified infoTypes.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeLimit>>? maxFindingsPerInfoType;
  /// Max number of findings that are returned for each item scanned. When set within an InspectContentRequest, this field is ignored. This value isn't a hard limit. If the number of findings for an item reaches this limit, the inspection of that item ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns for the item can be multiple times higher than this value.
  final pulumi.Input<int>? maxFindingsPerItem;
  /// Max number of findings that are returned per request or job. If you set this field in an InspectContentRequest, the resulting maximum value is the value that you set or 3,000, whichever is lower. This value isn't a hard limit. If an inspection reaches this limit, the inspection ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than this value.
  final pulumi.Input<int>? maxFindingsPerRequest;

  /// Creates a new [GooglePrivacyDlpV2FindingLimits].
  /// [maxFindingsPerInfoType] Configuration of findings limit given for specified infoTypes.
  /// [maxFindingsPerItem] Max number of findings that are returned for each item scanned. When set within an InspectContentRequest, this field is ignored. This value isn't a hard limit. If the number of findings for an item reaches this limit, the inspection of that item ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns for the item can be multiple times higher than this value.
  /// [maxFindingsPerRequest] Max number of findings that are returned per request or job. If you set this field in an InspectContentRequest, the resulting maximum value is the value that you set or 3,000, whichever is lower. This value isn't a hard limit. If an inspection reaches this limit, the inspection ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than this value.
  GooglePrivacyDlpV2FindingLimits({
    this.maxFindingsPerInfoType,
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFindingsPerInfoType': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InfoTypeLimit>, List<Map<String, dynamic>>>(maxFindingsPerInfoType, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxFindingsPerItem': ?maxFindingsPerItem,
      'maxFindingsPerRequest': ?maxFindingsPerRequest,
    };
  }

  factory GooglePrivacyDlpV2FindingLimits.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FindingLimits(
      maxFindingsPerInfoType: map['maxFindingsPerInfoType'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeLimit>(map['maxFindingsPerInfoType'], (value) => GooglePrivacyDlpV2InfoTypeLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxFindingsPerItem: map['maxFindingsPerItem'] == null ? null : (map['maxFindingsPerItem'] as int).input(),
      maxFindingsPerRequest: map['maxFindingsPerRequest'] == null ? null : (map['maxFindingsPerRequest'] as int).input(),
    );
  }
}

