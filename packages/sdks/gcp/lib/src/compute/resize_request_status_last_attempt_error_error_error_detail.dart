// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error_error_error_detail_error_info.dart';
import 'resize_request_status_last_attempt_error_error_error_detail_help.dart';
import 'resize_request_status_last_attempt_error_error_error_detail_localized_message.dart';
import 'resize_request_status_last_attempt_error_error_error_detail_quota_info.dart';

class ResizeRequestStatusLastAttemptErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>>? errorInfos;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>>? helps;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>>? localizedMessages;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>>? quotaInfos;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  const ResizeRequestStatusLastAttemptErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfos': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>, List<Map<String, dynamic>>>(errorInfos, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'helps': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>, List<Map<String, dynamic>>>(helps, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localizedMessages': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>, List<Map<String, dynamic>>>(localizedMessages, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotaInfos': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>, List<Map<String, dynamic>>>(quotaInfos, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetail(
      errorInfos: (() { final guardedValue = map['errorInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>(guardedValue, (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      helps: (() { final guardedValue = map['helps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>(guardedValue, (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localizedMessages: (() { final guardedValue = map['localizedMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>(guardedValue, (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotaInfos: (() { final guardedValue = map['quotaInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>(guardedValue, (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
