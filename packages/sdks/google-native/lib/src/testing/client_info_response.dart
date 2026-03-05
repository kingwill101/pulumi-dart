// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_detail_response.dart';

/// Information about the client which invoked the test.
class ClientInfoResponse {
  /// The list of detailed information about client.
  final pulumi.Input<List<ClientInfoDetailResponse>> clientInfoDetails;
  /// Client name, such as gcloud.
  final pulumi.Input<String> name;

  /// Creates a new [ClientInfoResponse].
  /// [clientInfoDetails] The list of detailed information about client.
  /// [name] Client name, such as gcloud.
  ClientInfoResponse({
    required this.clientInfoDetails,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientInfoDetails': pulumi.Input.mapInputValue<List<ClientInfoDetailResponse>, List<Map<String, dynamic>>>(clientInfoDetails, (value) => pulumi.Input.encodeList<ClientInfoDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ClientInfoResponse.fromMap(Map<String, dynamic> map) {
    return ClientInfoResponse(
      clientInfoDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<ClientInfoDetailResponse>(map['clientInfoDetails']!, (value) => ClientInfoDetailResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

