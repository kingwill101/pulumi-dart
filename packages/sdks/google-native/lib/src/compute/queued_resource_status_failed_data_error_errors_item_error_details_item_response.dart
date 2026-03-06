// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_info_response.dart';
import 'help_response.dart';
import 'localized_message_response.dart';
import 'quota_exceeded_info_response.dart';

class QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse {
  final pulumi.Input<ErrorInfoResponse> errorInfo;
  final pulumi.Input<HelpResponse> help;
  final pulumi.Input<LocalizedMessageResponse> localizedMessage;
  final pulumi.Input<QuotaExceededInfoResponse> quotaInfo;

  /// Creates a new [QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse].
  /// [errorInfo] Required.
  /// [help] Required.
  /// [localizedMessage] Required.
  /// [quotaInfo] Required.
  const QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse({
    required this.errorInfo,
    required this.help,
    required this.localizedMessage,
    required this.quotaInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfo': pulumi.Input.mapInputValue<ErrorInfoResponse, Map<String, dynamic>>(errorInfo, (value) => value.toMap()),
      'help': pulumi.Input.mapInputValue<HelpResponse, Map<String, dynamic>>(help, (value) => value.toMap()),
      'localizedMessage': pulumi.Input.mapInputValue<LocalizedMessageResponse, Map<String, dynamic>>(localizedMessage, (value) => value.toMap()),
      'quotaInfo': pulumi.Input.mapInputValue<QuotaExceededInfoResponse, Map<String, dynamic>>(quotaInfo, (value) => value.toMap()),
    };
  }

  factory QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse.fromMap(Map<String, dynamic> map) {
    return QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse(
      errorInfo: pulumi.Input.fromValue(ErrorInfoResponse.fromMap((map['errorInfo']! as Map).cast<String, dynamic>())),
      help: pulumi.Input.fromValue(HelpResponse.fromMap((map['help']! as Map).cast<String, dynamic>())),
      localizedMessage: pulumi.Input.fromValue(LocalizedMessageResponse.fromMap((map['localizedMessage']! as Map).cast<String, dynamic>())),
      quotaInfo: pulumi.Input.fromValue(QuotaExceededInfoResponse.fromMap((map['quotaInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

