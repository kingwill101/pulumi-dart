// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_info_response_compute_beta.dart';
import 'help_response_compute_beta.dart';
import 'localized_message_response_compute_beta.dart';
import 'quota_exceeded_info_response_compute_beta.dart';

class InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta {
  final pulumi.Input<ErrorInfoResponseComputeBeta> errorInfo;
  final pulumi.Input<HelpResponseComputeBeta> help;
  final pulumi.Input<LocalizedMessageResponseComputeBeta> localizedMessage;
  final pulumi.Input<QuotaExceededInfoResponseComputeBeta> quotaInfo;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta].
  /// [errorInfo] Required.
  /// [help] Required.
  /// [localizedMessage] Required.
  /// [quotaInfo] Required.
  InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta({
    required this.errorInfo,
    required this.help,
    required this.localizedMessage,
    required this.quotaInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfo': pulumi.Input.mapInputValue<ErrorInfoResponseComputeBeta, Map<String, dynamic>>(errorInfo, (value) => value.toMap()),
      'help': pulumi.Input.mapInputValue<HelpResponseComputeBeta, Map<String, dynamic>>(help, (value) => value.toMap()),
      'localizedMessage': pulumi.Input.mapInputValue<LocalizedMessageResponseComputeBeta, Map<String, dynamic>>(localizedMessage, (value) => value.toMap()),
      'quotaInfo': pulumi.Input.mapInputValue<QuotaExceededInfoResponseComputeBeta, Map<String, dynamic>>(quotaInfo, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta(
      errorInfo: pulumi.Input.fromValue(ErrorInfoResponseComputeBeta.fromMap((map['errorInfo']! as Map).cast<String, dynamic>())),
      help: pulumi.Input.fromValue(HelpResponseComputeBeta.fromMap((map['help']! as Map).cast<String, dynamic>())),
      localizedMessage: pulumi.Input.fromValue(LocalizedMessageResponseComputeBeta.fromMap((map['localizedMessage']! as Map).cast<String, dynamic>())),
      quotaInfo: pulumi.Input.fromValue(QuotaExceededInfoResponseComputeBeta.fromMap((map['quotaInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

