// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_detail.dart';

/// Information about the client which invoked the test.
class ClientInfo {
  /// The list of detailed information about client.
  final pulumi.Input<List<ClientInfoDetail>>? clientInfoDetails;
  /// Client name, such as gcloud.
  final pulumi.Input<String> name;

  /// Creates a new [ClientInfo].
  /// [clientInfoDetails] The list of detailed information about client.
  /// [name] Client name, such as gcloud.
  ClientInfo({
    this.clientInfoDetails,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientInfoDetails': ?pulumi.Input.mapOptionalInputValue<List<ClientInfoDetail>, List<Map<String, dynamic>>>(clientInfoDetails, (value) => pulumi.Input.encodeList<ClientInfoDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ClientInfo.fromMap(Map<String, dynamic> map) {
    return ClientInfo(
      clientInfoDetails: (() { final guardedValue = map['clientInfoDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClientInfoDetail>(guardedValue, (value) => ClientInfoDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

