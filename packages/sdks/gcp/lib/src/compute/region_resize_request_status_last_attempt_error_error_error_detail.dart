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
  const RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail({
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
      errorInfos: (() { final guardedValue = map['errorInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>(guardedValue, (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      helps: (() { final guardedValue = map['helps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>(guardedValue, (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localizedMessages: (() { final guardedValue = map['localizedMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>(guardedValue, (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotaInfos: (() { final guardedValue = map['quotaInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>(guardedValue, (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

