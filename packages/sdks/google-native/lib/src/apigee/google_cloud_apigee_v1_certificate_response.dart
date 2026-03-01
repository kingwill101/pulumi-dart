// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_cert_info_response.dart';

class GoogleCloudApigeeV1CertificateResponse {
  /// Chain of certificates under this name.
  final List<GoogleCloudApigeeV1CertInfoResponse> certInfo;

  /// Creates a new [GoogleCloudApigeeV1CertificateResponse].
  /// [certInfo] Chain of certificates under this name.
  GoogleCloudApigeeV1CertificateResponse({
    required this.certInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certInfo': pulumi.Input.encodeList<GoogleCloudApigeeV1CertInfoResponse, Map<String, dynamic>>(certInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1CertificateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CertificateResponse(
      certInfo: pulumi.Input.decodeList<GoogleCloudApigeeV1CertInfoResponse>(map['certInfo'], (value) => GoogleCloudApigeeV1CertInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

