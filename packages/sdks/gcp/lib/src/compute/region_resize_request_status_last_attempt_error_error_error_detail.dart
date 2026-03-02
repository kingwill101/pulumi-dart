// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error_error_error_detail_error_info.dart';
import 'region_resize_request_status_last_attempt_error_error_error_detail_help.dart';
import 'region_resize_request_status_last_attempt_error_error_error_detail_localized_message.dart';
import 'region_resize_request_status_last_attempt_error_error_error_detail_quota_info.dart';

class RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>>? errorInfos;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>>? helps;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>>? localizedMessages;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>>? quotaInfos;

  /// Creates a new [RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfos': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>, List<Map<String, dynamic>>>(errorInfos, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'helps': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>, List<Map<String, dynamic>>>(helps, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localizedMessages': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>, List<Map<String, dynamic>>>(localizedMessages, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotaInfos': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>, List<Map<String, dynamic>>>(quotaInfos, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null ? null : (pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>(map['errorInfos'], (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      helps: map['helps'] == null ? null : (pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>(map['helps'], (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localizedMessages: map['localizedMessages'] == null ? null : (pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>(map['localizedMessages'], (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      quotaInfos: map['quotaInfos'] == null ? null : (pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>(map['quotaInfos'], (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

