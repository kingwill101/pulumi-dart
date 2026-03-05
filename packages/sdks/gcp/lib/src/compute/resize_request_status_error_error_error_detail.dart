// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error_error_error_detail_error_info.dart';
import 'resize_request_status_error_error_error_detail_help.dart';
import 'resize_request_status_error_error_error_detail_localized_message.dart';
import 'resize_request_status_error_error_error_detail_quota_info.dart';

class ResizeRequestStatusErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorErrorErrorDetailErrorInfo>>? errorInfos;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorErrorErrorDetailHelp>>? helps;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>>? localizedMessages;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorErrorErrorDetailQuotaInfo>>? quotaInfos;

  /// Creates a new [ResizeRequestStatusErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  ResizeRequestStatusErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfos': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorErrorErrorDetailErrorInfo>, List<Map<String, dynamic>>>(errorInfos, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorErrorErrorDetailErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'helps': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorErrorErrorDetailHelp>, List<Map<String, dynamic>>>(helps, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorErrorErrorDetailHelp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localizedMessages': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>, List<Map<String, dynamic>>>(localizedMessages, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotaInfos': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorErrorErrorDetailQuotaInfo>, List<Map<String, dynamic>>>(quotaInfos, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorErrorErrorDetailQuotaInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusErrorErrorErrorDetail.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusErrorErrorErrorDetail(
      errorInfos: (() { final guardedValue = map['errorInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailErrorInfo>(guardedValue, (value) => ResizeRequestStatusErrorErrorErrorDetailErrorInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      helps: (() { final guardedValue = map['helps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailHelp>(guardedValue, (value) => ResizeRequestStatusErrorErrorErrorDetailHelp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localizedMessages: (() { final guardedValue = map['localizedMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>(guardedValue, (value) => ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotaInfos: (() { final guardedValue = map['quotaInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailQuotaInfo>(guardedValue, (value) => ResizeRequestStatusErrorErrorErrorDetailQuotaInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

