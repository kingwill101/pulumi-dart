// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error_error_error_detail_error_info.dart';
import 'region_resize_request_status_error_error_error_detail_help.dart';
import 'region_resize_request_status_error_error_error_detail_localized_message.dart';
import 'region_resize_request_status_error_error_error_detail_quota_info.dart';

class RegionResizeRequestStatusErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo>>? errorInfos;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusErrorErrorErrorDetailHelp>>? helps;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>>? localizedMessages;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo>>? quotaInfos;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  RegionResizeRequestStatusErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfos': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo>, List<Map<String, dynamic>>>(errorInfos, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'helps': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusErrorErrorErrorDetailHelp>, List<Map<String, dynamic>>>(helps, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusErrorErrorErrorDetailHelp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localizedMessages': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>, List<Map<String, dynamic>>>(localizedMessages, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotaInfos': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo>, List<Map<String, dynamic>>>(quotaInfos, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetail.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetail(
      errorInfos: (() { final guardedValue = map['errorInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo>(guardedValue, (value) => RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      helps: (() { final guardedValue = map['helps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusErrorErrorErrorDetailHelp>(guardedValue, (value) => RegionResizeRequestStatusErrorErrorErrorDetailHelp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localizedMessages: (() { final guardedValue = map['localizedMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>(guardedValue, (value) => RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotaInfos: (() { final guardedValue = map['quotaInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo>(guardedValue, (value) => RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

