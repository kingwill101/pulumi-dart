// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_api_category_response.dart';

/// Result data returned by getApicategory.
class GetApicategoryResult {
  /// The API category resource.
  final GoogleCloudApigeeV1ApiCategoryResponse? data;
  /// Unique error code for the request, if any.
  final String? errorCode;
  /// Description of the operation.
  final String? message;
  /// Unique ID of the request.
  final String? requestId;
  /// Status of the operation.
  final String? status;

  /// Creates a new [GetApicategoryResult].
  /// [data] The API category resource.
  /// [errorCode] Unique error code for the request, if any.
  /// [message] Description of the operation.
  /// [requestId] Unique ID of the request.
  /// [status] Status of the operation.
  const GetApicategoryResult({
    this.data,
    this.errorCode,
    this.message,
    this.requestId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data?.toMap(),
      'errorCode': ?errorCode,
      'message': ?message,
      'requestId': ?requestId,
      'status': ?status,
    };
  }

  factory GetApicategoryResult.fromMap(Map<String, dynamic> map) {
    return GetApicategoryResult(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return GoogleCloudApigeeV1ApiCategoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
